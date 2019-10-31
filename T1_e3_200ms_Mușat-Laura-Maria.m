t=0:0.2:0.25;
%a)    
for i=-1:2:1
s=i*square(2*pi*t);
end
figure(1);
stem(t,s)

%b)    
for i=-3:2:3
s=i*square(2*pi*t);
end
figure(2);
stem(t,s)

%c)    
for i=-5:2:5
s=i*square(2*pi*t);
end
figure(3);
stem(t,s)

%d)    
for i=-7:2:7
s=i*square(2*pi*t);
end
figure(4);
stem(t,s)