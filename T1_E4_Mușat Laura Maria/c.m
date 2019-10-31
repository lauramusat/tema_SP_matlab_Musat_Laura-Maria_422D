%c
n=-15:25
x1=sin((pi/17)*n)
m=0:50
x2=cos((pi/sqrt(23))*m)
%afisarea graficelor in acelasi sistem de axe
figure(1)
plot(x1,n,'*',x2,m,'+')
%afisarea celor doua garfice separat
figure(2)
subplot(2,1,1),plot(x1,n,'*'),title('sin'),subplot(2,1,2),plot(x2,m,'+'),title('cos')




