t=0:0.002:2;
%pas=2ms

F=1;
s=square(2*pi*t*F, 25)
%functie pentru semnal dreptunghiular 
%duty cycle=25

plot(t,s) ,grid, title('Dreptunghiular, duty-cycle=25%')
axis([0 2 -1 0.5])
%seteaza limitele pe axa x(de la 0 la 2), iar pe y de la -1 la 0.5