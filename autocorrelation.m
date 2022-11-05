x=input('Enter the value=');
disp(x);
%h=input('Enter the value =');
h=x(end:-1:1);
disp(h);
z=[];
for i=1:length(x)
 g=h.*x(i);
 z=[z;g];
end
disp('matrix');
disp(z);
[r c]=size(z);
k=r+c;
t=2;
y=[];
cd=0;
while(t<=k)
 for i=1:r
 for j=1:c
 if((i+j)==t)
 cd=cd+z(i,j);
 end
 end
 end
 t=t+1;
 y=[y,cd];
 cd=0;
end
disp('the autocorrelation');
disp(y);