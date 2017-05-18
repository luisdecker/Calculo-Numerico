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

## Author: Decker <decker@Caterpie>
## Created: 2017-05-09

#{
a b c x 
d e f y
g h i z
j k l m
#}

function [LU,x] = decomposicaoLU_umaMat (A, b)
    n = size(A,1);  

    for k=1:n
        for i=k:n
            soma = 0;
            for r=1:k-1
                soma += L(i,r)*U(r,k);
            end
            L(i,k)=A(i,k) - soma;
        end
        U(k,k)=1;
        for j=k+1:n
            soma = 0;
            for r=1:k-1
                soma += L(k,r)*U(r,j);
            end
            U(k,j) = (A(k,j) - soma)/L(k,k);
        end  
    end
    L
    U
endfunction
