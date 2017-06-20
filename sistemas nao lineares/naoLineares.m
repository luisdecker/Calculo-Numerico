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
Um sistema nao linear é algo como

f1(x1,x2,x3)
f2(x1,x2,x3)
f3(x1,x2,x3)

acima disso é aplicado um meotod de newton onde

X^k+1 = X^k - f(X^k)/f'(X^k)
X^k é um vetor de variaveis

f(x1, x2...) é um vetor com cada uma das funcoes aplicada nos elementos de X^k
f'(x1,x2...) é uma matriz de derivadas parciais. Uma funcao em cada linha, uma 
parcial de uma variavel a cada coluna

df1/dx1 df1/dx2 ... df1/dxn
df2/dx1 df2/dx2 ... df2/dxn
df3/dx1 df3/dx2 ... df3/dxn 
Chamada de matriz jacobiana



#}

## Author: Decker <decker@Caterpie>
## Created: 2017-05-18

function [retval] = naoLineares (input1, input2)

endfunction
