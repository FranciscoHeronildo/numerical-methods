#Questão4

function [libras,polegadas] = question4(quilos,metros)
  
  libras = quilos*2.20462;
  polegadas = metros*2.54;
  
  fprintf("Sistema Inglês: %1.5f libra %1.5f polegada \n", libras, polegadas);
  
endfunction
