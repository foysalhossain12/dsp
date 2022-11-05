N = input('enter number of point');
y=input('enter number of sequence');
L=length(y);
if N<L
 error('problem');
end
y1=[y zeros(1,N-L)];
x2=[];
for k=0:N-1
 for n=0:N-1
 p=exp((-1i*2*pi*n*k)/N);
 x2(n+1,k+1)=p;
 end
end
disp(x2);
disp(y1');
z=x2*y1';
disp(z);
mag=abs(z);
disp(mag');
subplot(2,1,1);
stem(mag);
phase=angle(z)*180/pi;% phase
disp(phase');
subplot(2,1,2);