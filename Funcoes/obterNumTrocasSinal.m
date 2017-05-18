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
Obtém o número de trocas de sinal em um polinômio, passado como um vetor de 
coeficientes
#}

## Author: Decker <decker@Caterpie>
## Created: 2017-05-18

function [trocas] = obterNumTrocasSinal (coeficientes)
    trocas = 0;
    sinal = coeficientes(1) < 0;
    for i = coeficientes
        if(i == 0) continue; endif
        if ((i < 0) ~= sinal)
            trocas++;
            sinal = !sinal;
        endif   
    endfor    
endfunction
