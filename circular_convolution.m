clc; % clear screen 
clear all; % clear workspace 
close all; % close all figure windows 
xn= input('enter the first sequence x(n) = '); % define first sequence 
hn=input('enter the second sequence h(n) = '); % Define second sequence 
l1 = length(xn); % length of first sequence 
l2 = length(hn); % length of second sequence 
N = max(l1,l2); % Define the length of the output 
xn = [xn, zeros(1,N-l1)]; % zero padding is done to make l1=l2. 
hn = [hn, zeros(1,N-l2)]; % zero padding is done to make l1=l2. 
for n=0:N-1; % loop to calculate circular convolution 
y(n+1) = 0; 
for k=0:N-1 
i = mod((n-k),N); 
y(n+1) =y(n+1)+hn(k+1)*xn(i+1); 
end ; 
end; 
disp('Circular convolution in Time Domain = '); 
disp(y); % display the output 
subplot(2,2,1); % graphical plot the first input sequence
stem(xn); 
xlabel('n'); 
ylabel('x(n)'); 
title('Plot of x(n)');
subplot(2,2,2); % graphical plot the second input sequence 
stem(hn); 
xlabel('n'); 
ylabel('h(n)'); 
title('Plot of h(n)'); 
subplot(2,2,4); % graphical plot the output sequence 
stem(y); 
xlabel('n'); 
ylabel('y(n)'); 
title('Circular Convolution Output'); 