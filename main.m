close all
clear
clc

%Decomposição de sinais

%Implemente uma função que decomponha um sinal de tempo discreto x[n] em suas partes par xp[n] e impar
%xi [n]. A função deve apresentar a seguinte interface:


n = input('Entre com o ranger da operação:\n');
signal_x = input('Entre com a sequencia:\n');

decomposicao(signal_x, n);



%Soma da Convolução

%Implemente uma função que realize a convolução entre dois sinais de tempo discreto x[n] e h[n]. A função
%deve apresentar a seguinte interface:

 %ranger_x = input('Escolha os limites de x[n]:\n');
 %ranger_h = input('Escolha os limites de h[n]:\n');
 %data_x = input('Escolha os valores de x[n]:\n');
 %data_h = input('Escolha os valores de h[n]:\n');
 
 %convolucao(ranger_x, data_x, ranger_h, data_h);