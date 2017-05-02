#{
Método de Newton 

Seja f(x) uma funcao continua no intervalo [a,b],com raiz em alfa,
com f' e f'' contínuas em [a,b], e que f' ~= 0 para todo x em [a,b].

Podemos encontrar uma aproximação Xk para a raiz alfa no intervalo
[a,b] utilizando a sua expansão em série de Taylor em torno
de um valor x(k-1) estimado. 

Qualquer função f(x) pode ser representada de forma exata
por uma série de Taylor, e a equação f(x) = 0 pode ser representada
como :

f(x) = 0 => f(x*) + f'(x*).(delx1/1!)+ f''(x*).(delx2/2!)+ ... =0

Para resolvermos a série de Taylor, devemos resolver uma equacao
polinomial com grau infinito, o que é inviavel. 

Newton assumiu que em uam região próxima da raiz alfa os valores
de delx são suficientemente pequenos. Assim, pode-se representar
a funcao f(x) apensas pelos seus dois primeiros termos da
série de taylor:

f(x) = f(x*) + f'(x*).delx = 0

A equação linear f(x) = 0 foi substituida por uma equaçção linearizada
aproximada onde a única variável x está presente em delx = x - x*

Assim, isolando o x:

x = x* - (f(x*) / f'(x*)) //Aproximação de Newton para a raiz

O valor de x da formula de newton é uma aproximação para a raiz
de f(x) = 0, e não o seu valor exato, pois houve um erro 
de truncamento da série de Taylor representativa de f(x).

Para melhorar a aproximação da raiz de f(x) = 0, podemos 
adotá-la como um novo valor estimado x* ou Xk, para uma 
segunda avaliação, ou seja, uma segunda iteração:

PROCESSO ITERATIVO:

X(k+1)= Xk - (f(Xk)/f'(Xk))

O método de newton tem convergência rápida. Sua convergência 
é quadrática, ou seja, o erro da iteração (K+1) é aproximadamente
o quadrado do erro da iteração k.

#}

function [raiz] = Newton (f,fd,a,b,intervaloab,precisao)

endfunction
