#Questão2-Criar um vetor linha com 18 elementos igualmente espaçados no qual
#o primeiro elemento é -8 e o último 81;
a=linspace(-8,81,18);
disp('Vetor Linha:'), disp(a);

#(a)Extraia uma cadeia de 5 elementos seguidos do vetor
disp('Vetor Linha 5:'), disp(a(1:5));

#(b)Extraia uma cadeia de elementos alternados (2 em 2)do vetor;
disp('De 2 em 2:'), disp(a(1:2:18));

#(c)Calcule a transposta do vetor;
disp('Transposta:'), disp(a');

#(d)Explore a função inversa para o vetor;
disp('Inversa:'), disp(fliplr(a));

#(e)Substitua 3 elementos aleatórios do vetor pelo número 1;
a(1:3) = 1
printf('Substituir elementos:'), disp(a);


