clear;clc;close all;
I_bil = 1;
E = 1072;
T = 0;
while((T * (T + 1) /2) <= E)
    T = T + 1;
end
k = 1;
InterLeavingIput = zeros(1,E); 
InterLeavingOutput = zeros(T,T); 
for i = 1:length(InterLeavingIput)
    InterLeavingIput(i) = mod(i,512);
end
figure();plot(InterLeavingIput)
for i = 1:T+1
    for j = 1 : T+1-i
        if k < E+1
            InterLeavingOutput(i,j) = InterLeavingIput(k);
        else
            InterLeavingOutput(i,j) = -99;
        end
        k = k + 1;
    end
end
InterLeavingOutput1 = zeros(1,E); 
k = 1
for j = 1:T+1
    for i = 1 : T+1-j
        if InterLeavingOutput(i,j) ~= -99
            InterLeavingOutput1(k) = InterLeavingOutput(i,j);
            k = k+1;
        end
    end
end

InterLeavingOutput2(1,:) = InterLeavingOutput1(513: E);
figure();plot(InterLeavingOutput2)
InterLeavingOutput3(1,:) = InterLeavingOutput1(1:512);
figure();plot(InterLeavingOutput3)
InterLeavingOutput4 = sort(InterLeavingOutput3);
figure();plot(InterLeavingOutput4)
figure();plot(InterLeavingOutput3)