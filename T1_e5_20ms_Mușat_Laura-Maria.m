F=1;
amplitudine=1.5;
t =0:0.02:4;
%pas=20ms

s=abs(amplitudine*sin(2*pi*F*t));
%dublu e un vector cu elementele 0 si are acelasi nr de elemente ca si v

plot(t,s),grid,title('Sinusoidal dubla alternanta')