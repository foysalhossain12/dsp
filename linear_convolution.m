x=input('Enter the first sequence:'); % 1,2,3
l1=length(x);
h=input('Enter the second sequence:'); %4 5 2
l2=length(h);
N=l1+l2-1;
x1=[x zeros(1,N-l1)];
disp(x1);
h1=[h zeros(1,N-l2)];
disp(h1);
z=conv(x,h);
disp('using build in convolution function (conv):');
disp(z); %4,13,24,19,6
z1=zeros(1,N);
for i=1:N
 for j=1:i
 z1(i)=z1(i)+x1(j)*h1(1-j+i);
 end
end
disp('without using conv built in function')
disp(z1);
  