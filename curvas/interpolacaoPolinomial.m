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
Interpolaão de funcoes pelo metodo polinomial
#}

## Author: Decker <decker@Caterpie>
## Created: 2017-05-30

function [resposta res] = interpolacaoPolinomial (tabelaDados)
    n = rows(tabelaDados);
    for i = 1:n
        for(j = 0:n-1)
            A(i,j+1) = power(tabelaDados(i,1),j);
        endfor
    endfor       
    %Tabela pronta
    independentes = tabelaDados(1:n,2);
    res = A \ independentes;
    for i = 1:n
        soma = 0;
        for j = 1:n
            xj = tabelaDados(i,1);
            Cj = res(j);
            soma += res(j) * power (tabelaDados(i,1),j-1);
        endfor
        P(i) = soma;
    endfor
    resposta = P;
    for i = 1:n
        erros(i) = abs(tabelaDados(i,2) - P(i));
    endfor    
    
    resposta = [resposta;erros];
endfunction
