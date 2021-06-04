%% Dados
p0=2;
N=30;
tol=10^(-7);

% Declarando a funcao  g(x) tal que g(x)=x-f(x)
function y = g(x)
	y=0.5*(10 -x^3)^(1/2);

%%%Outra escolha para definicao da funcao g.
%	y=x-(x^3+4*x^ 2-10)/(3*x^2+8*x);  
end

%% PASSO 1
i=1;

%% PASSO 2
while (i<=N)
	%% PASSO 3
	p=g(p0);
	printf("p(%d) = %f\n",i,p);
	%% PASSO 4
	if  (abs(p-p0)<tol)
		printf("A solucao aproximada: %f\n",p);
		break
	else
		%% PASSO 5
		i=i+1;
		%% PASSO 6
		p0=p;
	end
end
%% PASSO 7
if (i==N) && (abs(p-p0)>=tol)
	printf("O metodo falhou na %d iteracao.\n",N);
end
