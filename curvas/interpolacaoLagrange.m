## Copyright (C) 2017 Decker
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

#{
Interpolação utilizando o método de Lagrange 

    Dados os n pontos (xi,yi) de um conjunto de dados ao qual deseja-se inter-
polar com um polinômio, dizemos que este polinômio em um ponto x é: 

Pn(x) = y0*Ln,0(x) + y1*Ln,1 + ... + yn*Ln,n(x)

onde Ln,j = prod[ 0, n, i!=n ]( ( x - xi ) / ( xj - xi ) )

Lembrando que dados é uma matriz [n,2] onde a primeira coluna é o x do dado e a 
segunda coluna é o y do dado.
 #}

## Author: Decker <luisgustavo.decker@gmail.com>
## Created: 2017-06-06

function [y] = interpolacaoLagrange (dados,x)
    n = rows(dados);
    y=0;
    for iDado = 1:n
        yDado = dados(iDado,2);
        LNiDado = 1;
        for iMult = 1:n
            if(iMult ~= iDado)
                xi = dados(iMult,1);
                xj = dados(iDado,1);
                LNiDado *= (x-xi)/(xj - xi);
            endif% i != j
        endfor%L n,j
        y+= yDado*LNiDado;
    endfor
endfunction
