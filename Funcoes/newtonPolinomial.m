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
Um polinomio é representado por Pn(x), onde x >= 1 é o grau do polinômio.

Pn(x) = a0x^n + a1x^n-1 + ... + an
Pn(x) tem pelo menos uma raiz

->O número de raizes reais positivas de um polinomio é igual ao numero de variacao
de sinais apresentado pelo conjunto de coeficientes ou menor em um numero par

ex 2x^3 - x^2 + x + 1
       / \   / \
        |     |
Duas variações de sinais, logo, podemos ter duas ou nenhuma raizes positivas

-> O número de raizes negativas é similarmente relacionado ao polinomio com a 
substituição de x por -x. Zeros nos coeficientes são ignorados.

ex -2x^3 - x^2 - x + 1


Pra um polinomio Pn(x), em uma raiz x:
A multiplicidade é o numero de derivadas em que x seja raiz +1
ex: Pn(x)=0
    Pn'(x)=0
    Pn''(x)!=0
      Logo, multiplicidade - 1+1=2

Método de Birge-Vieta

xk+1 = xk - R/R1

Método de Horner
    x^3 + 0x^2 + 2x -1 
    (x^2 -0x + 2) x -1 < Botou um x em evidência
    ((x + 0)x + 2)x - 1
   
    dizemos que 
        b0 = a0 
        b1 = b0 * x + a1
        b2 = b1*x + a2
        b3 = b2*x + a3
#}            

## Author: Decker <decker@Caterpie>
## Created: 2017-05-16

function [raiz] = newtonPolinomial (coeficientes,x,precisao)
    n = length(coeficientes) ;
    do
        for i = 0:length(coeficientes)-1
            if(i==0)
                b(i+1) = coeficientes(i+1);
                continue;
            endif
            b(i+1) = b(i)*x + coeficientes(i+1);
        endfor
        %b ja esta populado com os coeficientes de R, b3=P(x)
        for i = 0:length(coeficientes)-2
            if(i==0)
                c(i+1)=b(i+1);
                continue;
            endif
            c(i+1) = c(i) + b(i+1);
        endfor
        %cn-1 = R1
        x = x - (b(n)/c(n-1));  
          
    until(!(abs(b(n))> precisao))
    raiz = x
endfunction
