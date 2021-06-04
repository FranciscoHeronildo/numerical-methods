#Quest�o3-Criar uma matriz de 6x6 elementos, na qual a diagonal � nula e 
#abaixo da diagonal contenha apenas n�meros pares e acima da diagonal 
#contenha apenas n�meros impares.

M=[0,1,3,5,7,9;
   2,0,3,5,7,9;
   2,4,0,5,7,9;
   2,4,6,0,7,9;
   2,4,6,8,0,9;
   2,4,6,8,2,0];
   
disp('Matriz:'), disp(M);

#a)Verifique a transposta da matriz 
disp('Transposta:'), disp(M');

#b)Verifique a inversa da matriz
disp('Inversa:'), disp(inv(M));

#c)Explore as cria��es de matrizes identidade e matrizes de zero, 
#fazendo o produto destas pela matriz
I=eye(6);
disp('Identidade:'), disp(I);

Z=zeros(6);
disp('Zeros:'), disp(Z);

disp('Identidade Multiplex:'), disp(M*I);
disp('Zeros Multiplex:'), disp(M*Z);