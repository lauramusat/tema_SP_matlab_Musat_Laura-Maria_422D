% a)
%se realizeaza cele 2 grafice z=f(n) si z=f(m)
z=[0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]
%graficul z=f(n)
n=0:20;
subplot(1,2,1), plot(z,n,'*')
%graficul z=f(m)
m=-5:15;
subplot(1,2,2), plot(z,m,'+')

