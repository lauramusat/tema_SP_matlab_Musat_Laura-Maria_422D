%matricea b trebuie sa aiba 21 de elemente pentru ca inmultirea sa aiba sens
%se initializeaza cele 2 matrici
a=[ 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2]
b=[1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1]
%se realizeaza inmultirea a*b
l=a*b
%se realizeaza inmultirea b*a
c=b*a
%se realizeaza inmultirea termen cu termen a celor doi vectori
for i=1:21
  for j=1:21
    d=a(i)*b(j)
  endfor
endfor
 