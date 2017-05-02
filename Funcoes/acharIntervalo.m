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

function [x1,x2] = acharIntervalo (f,xmin,xmax,intervalo)
  x1 = xmin;
  y1 = f(x1);
  iteracoes = 0;
  while(true)
    iteracoes = iteracoes + 1;
    x2 = x1 + intervalo;
    y2 = f(x2);
    if(y2 * y1 < 0)
      iteracoesIntervalo = iteracoes
      return;      
    else
      x1 = x2;
    endif
    if(x1 >= xmax)
      error('Intervalo não encontrado!');
    endif
  endwhile
endfunction
