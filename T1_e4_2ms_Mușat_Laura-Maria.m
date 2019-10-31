F=1;
amplitudine=0.8;
t =0:0.002:3;
%pas=2ms

s=amplitudine*sin(2*pi*F*t);
mono=zeros(size(s));
%mono e un vector cu elementele 0 si are acelasi nr de elemente ca si v

for n=1:length(t)
   if s(n) >= 0
       mono(n)=s(n);
   else
       mono(n)=0.0;
   end
end
plot(t,mono),grid,title('Sinusoidal mono alternanta')