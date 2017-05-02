function [L, U] = decomposicaoLU(A)
       
       [R, C] = size(A);%Nunca usa C (columns) 
   
       %Etapa de inicializacao
       for i = 1:R
           L(i, 1) = A(i, 1);%Inicia a primeira coluna de L com a primeira de A
           U(i, i) = 1; %Inicia a diagonal principal de U com 1
       end
   
       for j = 2:R
          %Inicia a primeira linha de U com a primeira linha de A / L(1,1)
           U(1, j) = A(1, j) / L(1, 1); 
       end
        #{  
       a  b c
       d  e f
       g  h i
        #}
       for i = 2:R
           for j = 2:i
               L(i, j) = A(i, j) - L(i, 1:j - 1) * U(1:j - 1, j);
               
           end
           
           for j = i - 1:R
               U(i, j) = (A(i, j) - L(i, 1:i - 1) * U(1:i - 1, j)) / L(i, i);
           end
       end
end
