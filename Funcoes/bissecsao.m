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
## Created: 2017-04-25

function [RAIZ] = bissecsao (f,xmin,xmax,intervalo,delX)
  [A,B] = acharIntervalo(f,xmin,xmax,intervalo);
  xm=0;
  iteracoes = 0;
  while(abs(A-B) > delX)
    iteracoes = iteracoes + 1;
    xm = (A+B)/2;
    if(f(A)*f(xm) < 0)
      B = xm;
    else 
      A = xm;  
    endif    
  endwhile
  RAIZ=xm;
  iteracoes
endfunction



