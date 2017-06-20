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
Método da falsa posição modificado
    estatico = (xs,ya*ys/ys+yn)

#}
## Author: Decker <decker@Caterpie>
## Created: 2017-05-22

function [xxk] = falsaPosicaoModificado (funcao,xmin,xmax,precisao)
    a = [xmin,funcao(xmin)];
    b = [xmax,funcao(xmax)];
    if ((a(2) * b(2)) > 0)
        error("Intervalo [xmin,xmax] inadequado!")    
        return
    endif    
    while true
        xxk= a(1) - (a(2)*(b(1)-a(1)))/b(2)-a(2);
        xk = [xxk, funcao(xxk)];
        if(xk(2) <= precisao)
            xxk
            return
        endif
        if (a(2)*xk(2) < 0)
            %a fixo
            a(2) = (b(2)*a(2)/b(2)+xk(2));
            b = xk;
        else
            b(2) = (a(2)*b(2)/a(2)+xk(2));
            a = xk;
        endif       
    endwhile    
endfunction
