function [xk] = falsaPosicao (funcao,min,max,precisao)
  [a,b] = acharIntervalo(funcao,min,max,0.1);
  iteracoes = 0;
  %Iteracao inicial para descobrir o fixo
  xk = obterXkFP(a,b,funcao);
  aFixo = (funcao(xk) * funcao(a)<0);
  %Processo iterativo
  while (abs(a-b) > precisao)
    %aumenta o numero de iteracoes
    iteracoes = iteracoes + 1;
    %obtem o novo valor
    xk = obterXkFP(a,b,funcao);
    %Resolve o caso de resultado exato
    if(funcao(xk) == 0)
      iteracoesFalsaPosicao = iteracoes
      return
    endif
    %TODO => Adicionar a perturbacao no que estiver fixo
    if (funcao(a) * funcao(xk) > 0 )
      b = xk;
    else
      a = xk;
    endif
    
  endwhile
  iteracoesFalsaPosicao = iteracoes
endfunction

function [xk] = obterXkFP(a,b,funcao)
  
  funcaoA = funcao(a);
  bMenosA = b-a;
  x = ( funcao(a) *  ( b - a ) );
  y = ( funcao(b) - funcao(a) ) ;
  xk = a - ( x / y );
endfunction
