function [signal_par, signal_impar, soma_signals] = decomposicao(signal_x, n)

%primeiro, devemos inverter a variavel independente 

n1 = -fliplr(n);

%sinal propriamente invertido
signal_invertido = fliplr(signal_x);

valor_minimo = min(min(n), min(n1));
valor_maximo = max(max(n), max(n1));

%precisamos de um intervalo, para expressarmos o intervalo dos sinais par e impar, e
%iremos usa-lo no para o for
z = valor_minimo:1:valor_maximo;
%vetor que iremos usar para armazenar o intervalo i
z1 = [];
temp = 1;

for i = 1: length(z)
    if(z(i) < min(n) || z(i) > max(n))
        z1 = [z1 0];
    else
        z1 = [z1 signal_x(temp)];
        temp = temp + 1;
    end
end

%vetor para armazenar o intervalo
z2 = [];
temp = 1;

for i= 1: length(z)
    if(z(i) < min(n1) || z(i) > max(n1))
        z2 = [z2 0];
    else
        z2 = [z2 signal_invertido(temp)];
        temp = temp + 1;
    end
end

signal_par = (z1 + z2) / 2; 

signal_impar = (z1 - z2) / 2;

%por fim, somamos as partes impar e par

soma_signals = signal_par + signal_impar;

%plotando os sinais

subplot(4,1,1);
stem(z, z1, 'k', "LineWidth",1);
title("Original Signal");

subplot(4,1,2);
stem(z, signal_impar, 'k', "LineWidth",1);
title("Odd Signal");

subplot(4,1,3);
stem(z, signal_par, 'k', "LineWidth",1);
title("Even Signal");

subplot(4,1,4);
stem(z, soma_signals, 'k', "LineWidth",1);
title("Sum of Signals");


end

