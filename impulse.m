clc;
close all;
clear all;
%b = [1,-3/4,0];
%a = [1,-3/4,1/8];
b = input('Enter the first sequence : ');
a = input('Enter the second sequnce : ');
N = 5;
order = length(b);
b = [b, zeros(1, length(a)-1)];
a = [a, zeros(1, length(b)-1)];

h = zeros(1, N);
disp(h);
for j = 0:N-1
    sum = 0;
    for k = 1:order
        if((j-k)>=0)
            sum = sum + (a(k+1)*h(j-k+1));
        end
    end
    if(j<=order)
        h(j+1) = b(j+1)-sum;
    else
        h(j+1) = -sum;
    end
end
disp(h);
stem(h, 'm*');