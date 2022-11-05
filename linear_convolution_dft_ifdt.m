x=input('enter number of sequence');
y=input('enter number of sequence');
l1=length(x);
l2=length(y);
N=l1+l2-1;
x1=[x zeros(1,N-l1)];
y1=[y zeros(1,N-l2)];
wn=[];
for k=0:N-1
 for n=0:N-1
 p=exp((-1i*2*pi*n*k)/N);
 wn(n+1,k+1)=p;
 end
end
xdft=wn*x1';
ydft=wn*y1';
dft_xy=xdft.*ydft;
wn2=[];
for k=0:N-1
 for n=0:N-1
 p=exp((1i*2*pi*n*k)/N);
 wn2(n+1,k+1)=p;
 end
end
conv_xy=(wn2*dft_xy)/4;
disp(abs(conv_xy));
