t=0:0.2:5;
%pas=200ms

amplitudine=2;
f=0.2;
s=amplitudine*sawtooth(2*pi*f*t);


plot(t,s),grid, title('Triunghiular');
axis([0 5 -2 1])
%seteaza limitele de pe axa x de la 0 la 5 si pe y de la -2 la 1