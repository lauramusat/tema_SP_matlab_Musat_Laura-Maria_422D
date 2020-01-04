%Numar de ordine:19
clear all;
P = 40; % perioada = 40
F=1/P; % frecventa semnalului 
D = 19; % durata semnalului
w0=2*pi/P; % pulsatia
Ts = P/4000; % perioada de esantionare 
Fs = 1/ Ts; % frecvanta de esantionare
t=0:Ts:5*P; % generarea vectorului de timp
x = square(2*pi*F*t,(D/P)*100); % generarea semnalului dreptunghiular cu factorul de umplere corespunzator

figure(1);
plot(t,x); % afisarea semnalului 
title('Semnalul x, semnalul x refacut(cu rosu)');
xlabel('Timp [s]');
ylabel('Amplitudine [V]');


% calculul coeficientilor cu ajutorul integralei
%N=50 (Am considerat N=50)
for k = -50:50
fun = @(t) square(2*pi*F*t,(D/P)*100).*exp(-i*k*w0*t);
q(k+51) = integral(fun,0,39);
end


w = -50*w0:w0:50*w0; % generarea vectorului de pulsatii
figure(2);
stem(w/(2*pi),abs(q)); % afisarea coeficientilor calculati
title('Spectrul de amplitudini al semnalului x');

X_50(1:length(t)) = 0; % initializarea semnalului pe care il vom construi
for t_i = 1:length(t);
for k = -50:50
X_50(t_i) = X_50(t_i) + (1/P)*q(k+51)*exp(i*k*w0*t(t_i)); 
end
end
figure(1);
hold on
plot(t,X_50,'r'); % afisarea cu rosu a semnalului reconstruit


%Teoria seriilor Fourier (SFT, SFA si SFC) ne spune

%ca orice semnal periodic poate fi aproximat printr-o suma infinita de sinusuri

%si cosinusuri de diferite frecvente, fiecare ponderat cu un anumit coeficient. 

%Acesti coeficienti reprezinta practic spectrul 

%Semnalul reconstruit foloseste 50 de termeni si are aceeasi forma ca

%semnalul original, cu mici diferente de rigoare. Cu cat marim

%numarul de coeficienti ai SF, aceasta diferenta va fi din ce in ce mai

%mica. In plus se observa faptul ca semnalul poate fi aproximat printr-o

%suma de sin, variatiile semnalului prezentand un caracter sinusoidal.



