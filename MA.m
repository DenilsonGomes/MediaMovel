% Autor: CARLOS ALEXANDRE ROLIM FERNANDES
% Revisado por: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
%
% Script para calcular media movel em um sinal

clear
close
clf
clc

x = (1:100) + 5*randn(1,100); %Sinal
plot(x) %Plota o sinal
M = 15; %Numero de parcelas da soma
for n = M+1:100 %Para todas as medias
    y(n) = mean(x(n-M:n)); %Medias dos M termos
end
hold on,plot(y,'r') %Plota a media