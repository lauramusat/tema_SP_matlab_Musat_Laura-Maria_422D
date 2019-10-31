t=0:0.2:2;
%pas=200ms

F=1;
s=square(2*pi*t*F, 25);
plot(t,s) ,grid, title('Dreptunghiular, duty-cycle=25%');
axis([0 2 -1 0.5])