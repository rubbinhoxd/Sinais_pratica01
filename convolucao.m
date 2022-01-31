function [ranger_y, data_y] = convolucao (ranger_x,data_x, ranger_h, data_h)

%primeiro, precisamos calcular o valor (dado) de cada posição do vetor (linha
%vertical). Fazemos isso calculando o seu comprimento, e depois
%multiplicamos pelo impulso h[n], gerando um sinal de saída ou y[n].

tamanho_x = length(data_x);
tamanho_h = length(data_h);
%contamos o 0
tamanho_y = tamanho_x + (tamanho_h - 1);

%Precisamos percorrer uma certa distancia, que é do ponto aonde
%nossa convolucao irá começar, e até o ponto aonde ela vai parar. No caso,
%precisamos do 'ranger_y'

rangerMinimo_y = ranger_x(1) + ranger_h(1);
%agora, iremos até o ponto máximo
rangerMaximo_y = ranger_x(end) + ranger_h(end);

ranger_y = [rangerMinimo_y:rangerMaximo_y];

%inicializando a variavel, fazendo com que seja percorrida por um tamanho
%especifico
data_y = zeros(1, tamanho_y);

%convolucao
for i = 1: tamanho_x
    for j = 1: tamanho_h
        data_y(i+j-1) = data_y(i+j-1) + data_h(j)*data_x(i);
    end
end

%por fim, mostrando os resultados codados por meio de gráficos

%função que faz com que plotamos 3 gráficos ou mais numa única janela
subplot(3, 1, 1);
stem(ranger_x, data_x, 'k', "LineWidth",1);
title("Sinal de entrada x[n]");

subplot(3, 1, 2);
stem(ranger_h, data_h, 'k', "LineWidth",1);
title("Sinal de entrada h[n]");

subplot(3, 1, 3);
stem(ranger_y, data_y, 'k', 'LineWidth',1);
title("Sinal de saída y[n]");



end

