#{
%%%%%%%%%Metodos iterativos%%%%%%%%%%

Quando o sistema de equacoes lineares a ser utilizado tem
algumas caracteŕisticas especiais, como :

	->Ordem elevada (muitas equações)
	->A matriz de coeficientes é esparça
	->Os coeficientes podem ser gerados a partir de alguma lei
	  de formação

, será mais eficiente resolve-lo através de um metodo iterativo
, desde que a convergencia seja possível.


	Os métodos iterativos se baseiam na construção de sequências 
de aproximação. A condição de parada de um metodo iterativo 
segue os seguintes critérios:

	->Limitação no numero de iterações
	->Determinação de uma tolerância para a exatidao.

Estes metodos podem nao convergir para uma solução exata, ou
até serem inviaveis qunado o sistema é grande ou mal-
-condicionado

	Estes métodos geram uma sequência de vetores {x}^k, a par-
tir de uma aproximacaoa inicial {x}^0. Sob certas condicoes,
essa sequência converge para a solução, caso exista. 

Criterios de parada para os métodos interativos:
	=>x^k seja suficientemente proximo de k^k-1
		Ou seja, enquanto (x^k - x^k-1) seja maior que uma cer-
		ta tolerância, repetir o processo.
	=>Numero de iteracoes
		A número máximo de iterações é definido no inicio do pro-
		cesso.

%%%%%%%%%METODO DE JACOBI%%%%%%%%%%

Dada uma aproximacao no estilo
	x^k = (x1^k , x2^k , x3^k, ... , xn^k)
para x, a estrategia do metodo de Jacobi é usar a primeira equacao e os
valores atuais de x2^k,x3^k,... , para achar um novo valor x1^k+1 e, 
similarmente, achar um novo valor xi^k usando a iésima equação e os va-
lores antigos das outras variaveis. 

Isto é, dados os valores atuais x^k = (x1^k, x2^k, ... xn^k), encontre
novos valores resolvendo para x^k+1 = (x1^k+1, x2^k+1,...,xn^k+1)

Em forma matricial, para uma matriz 3x3:

x1^k+1	x2^k	x3^k	= b1
x1^k	x2^k+1	x3^k	= b2
x1^k	x2^k	x3^k+1	= b3

para k=0 , supoe-se, em geral (a não ser que se tenha algum tipo de in-
formação sobre o sistema), que xi^0 = 0, ou seja, x^0 = (0,0,...,0).

Exemplo: Aplicacao do metodo de Jacobi para 
	4	-1	-1	3
	-2	6	1	9
	-1	1	7	-6

A cada passo, dados os valores para x[1,2,3]^k , resolvemos para 
x[1,2,3]^k+1, sendo assim:

	4x1^k+1	- x2^k 	  - x3^k 	= 3
	-2x1^k 	+ 6x2^k+1 + x3^k 	= 9
 	-x1^k 	+ x2^k    + 7x3^k+1	=-6	

Então, para a assunção inicial de que x^0 = (0,0,0), temos 
	4x1^k+1	- 0 	  - 0	 	= 3
	0 	+ 6x2^k+1 + 0	 	    = 9
	0 	+ 0       + 7x3^k+1	    = -6	
	
#}
%Implementa��o do metodo de Jacobi










