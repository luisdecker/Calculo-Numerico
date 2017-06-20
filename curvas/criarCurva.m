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

%Cria uma curva usando os coeficientes de um polinomio interpolador

## Author: Decker <decker@Caterpie>
## Created: 2017-05-30

function [resultado] = criarCurva (polinomio,intervalo,passo)
    pontos = (intervalo(1):passo:intervalo(2));
    for i = 1:columns(pontos)
        ponto = pontos(i);
        soma = 0;
        for j = 1:columns(polinomio)
            soma += polinomio(j) * ponto^(j-1);
        endfor
        resultado(i,1) = ponto; 
        resultado(i,2) = soma;   
    endfor
endfunction
