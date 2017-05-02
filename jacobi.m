function [xk, iteracoes] = jacobi(input,precisao)
  tamanhoSistema = rows(input);
  xk=zeros(1,tamanhoSistema);%Estimativa Inicial
  diferencas=zeros(1,tamanhoSistema);
   
  calcular = true;
  iteracoes = 0;
  while (calcular)
    trabalho = input
     pause 
    %primeiro, multiplica os elementos nao diagonais pelos xn^k-1
    for i = 1:tamanhoSistema %para cada linha
      for j = 1:tamanhoSistema %para cada coluna
        if (j ~= i)
          trabalho(i,j)= input(i,j)*xk(j);
        endif 
      endfor%colunas
    endfor%linhas
    trabalho
    pause
    %Elementos não-diagonais de trabalho multiplicados pela estimativa anterior
    for i = 1:tamanhoSistema%Para cada linha
      somalinha = 0;
      for j = 1:tamanhoSistema
          if (j ~= i)
          somalinha = somalinha + trabalho(i,j);        
        endif
      endfor%coluna
      xkAntigo = xk(i);
      xk(i)= input(i,tamanhoSistema+1)-somalinha;
      diferencas(i) = abs( xk(i) - xkAntigo );
      somalinha = 0;
    endfor%linha
    %Aqui tem o vetor de erros calculado
    calcular = false;
    for erro = diferencas
      if( erro > precisao )
        calcular = true;%calcular enquanto tiver um erro maior que a precisao
      endif
    endfor
    iteracoes = iteracoes + 1;
  endwhile
  
endfunction

#{
multiplicar xi por xi^k 
x1^k = 1
x2^k = 2 

x1^k+1  2*2     = 1
4*1     x2^k+1  = 2

xL^k+1 = indep - sum(!L,L)


#}

