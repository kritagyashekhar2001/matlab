EXP – 1
clc;
clear all;
close all;
 %A)
x=2^5;
y=x-1;
z=x/y;
 %B)
r= pi^(1/3)-1;
area= pi*r^2;
 %C)
u=3*sqrt(5)-1;
v=sqrt(5)+1^2;
t=u/v-1;


EXP-2
clc;
clear all;
close all;
%unit impulse
n= -10:1:10;
impulse= [zeros(1,10),ones(1,1),zeros(1,10)];
stem(n,impulse);
xlabel('x_input');
ylabel('y_input');
title('Unit Impulse Sequence - Sonu Shakya');
%unit step
n= -10:10; % values of the time variable
un = [zeros(1,10) ones(1,11)];
stem (n,un);
xlabel('Time Samples');
ylabel('Amplitude');
title('Unit Step Samples - Sonu Shakya');
%unit ramp
n=input('Enter n values');
t=0:1:n-1;
ramp=t;
stem(t,ramp);
xlabel('time universal');
ylabel('output ');
title('Unit Ramp Signal --> Sonu Shakya');
%discrete complex exponential sequence
a=input('Enter Real part, a= ');
b=input('Enter Imagenary Part, b= ');
k=input('Constent , k= ');
x=input('Variable , x= ');
c=a+1i*b;
y=k*c^x;
disp('real(y)');
disp('imag(y)');
subplot(2,1,1);
stem(x,real(y));
xlabel('frequency');
ylabel('amplitude');
title('Imaginery Part of sequence - Sonu Shakya');


EXP - 3
clc;
clear all;
close all;
a= [2, 0, 7, 1];
b= [5, 2, 7, 9, 1];
c=conv(a,b);
subplot(1, 3, 1);
stem(a);
xlabel('(a)n');
ylabel('amlitude');
subplot(1, 3, 2);
stem(b);
xlabel('(b)n');
ylabel('amplitude');
disp(c);
subplot(1, 3, 3);
stem(c);
xlabel('time index n');
ylabel('amplitude');
title('Convulation of two sequence - Sonu Shakya');


EXP – 4
clc;
clear all;
close all;
M= input('type the length of DFT, M= ');
N=input ('type the length of sequence, N= ');
u=ones (1,N);
v=fft(u,M);
t=0:1:N-1;
figure;
subplot (3, 1, 1);
stem(t,u);
title('Original Time Domain Samples -Sonu Shakya ');
ylabel('amplitude');
xlabel('time index n');
subplot(3, 1, 2);
k=0:1:M-1;
stem(k,abs(v));
title('Magnitude of DFt samples');
xlabel('frequncy index k');
ylabel('magnitude');
subplot(3, 1, 3);
stem(k,angle(v));
title('Magnitude of DFT samples= ');
xlabel('frequency index k');
ylabel('phase');


EXP – 5
clc;
clear all;
close all;
x1=input('Enter the first sequnce x1(n)= ');
x2=input('Enter the second sequnce x2(n)= ');
L=length(x1);
M=length(x2);
N=L+M-1;
yn=conv(x1,x2);
disp('The values of yn are= ');
disp(yn);
n1=0:L-1;
subplot(311);
stem(n1,x1);
grid on;
xlabel('n1--->');
ylabel('amplitude--->');
title('First sequnce - Sonu Shakya');
n2=0:M-1;
subplot(312);
stem(n2,x2);
grid on;
xlabel('n2 -->');
ylabel('amplitude---');
title('Second sequence');
n3=0:N-1;
subplot(313);
stem(n3,yn);
grid on;
xlabel('amplitude--->');
ylabel('amplitude--->');
title('Convolved output');


EXP – 6
%high pass filter
clc;
clear all;
close all;
am=input('type in the order of filter= ');
r=input('type in the pass band of filter= ');
w=input('type in the passband of frequency edge= ') ;
[b,a]=cheby1 (am, r, w, 'high');
disp('numerator polynomial');
disp(a);
w=0:0.2/pi:pi;
h=freqz(b, a, w);
gain=20*log10(abs(h));
stem(w/pi,gain);
grid;
xlabel('normalized frequency');
ylabel('gain(db)');
title('High Pass Filter- Sonu Shakya');
%low pass filter
am=input('type in the order of filter= ');
r=input('type in the pass band of filter= ');
w=input('type in the passband of frequency edge= ') ;
[b,a]=cheby1 (am, r, w, 'low');
disp('numerator polynomial');
disp(a);
w=0:0.2/pi:pi;
h=freqz(b, a, w);
gain=20*log10(abs(h));
stem(w/pi,gain);
grid;
xlabel('normalized frequency');
ylabel('gain(db)');
title('Low Pass Filter- Sonu Shakya');



EXP- 7
%band pass filter
clc;
clear all;
close all;
N=input('enter the filter order= ');
M=N/2;
w1=input('Lower pass band edge frequncy= ');
w2=input('upper pass band edfge frequency= ');
w=[w1,w2];
[b,a]=butter(M,w);
disp('numrator polynomial');
disp(b);
disp('denominator polynomial');
disp(a);
w=0:0.02/pi:pi;
h=freqz(b,a,w);
gain=20*log10(abs(h));
stem(w/pi,gain);
grid;
xlabel('Normalized Frequency');
ylabel('Gain, db');
title('Butterworth Band Pass Filter -- Sonu Shakya');
%High Pass Filter
N=input('Enter the filter order= ');
M=N/2;
w=input('Enter the Lower pass band edge frequncy= ');
[b,a]=butter(M,w,'high');
disp('Numrator Polynomial');
disp(b);
disp('denominator polynomial');
disp(a);
w=0:0.02/pi:pi;
h=freqz(b,a,w);
gain=20*log10(abs(h));
stem(w/pi,gain);
grid;
xlabel('Normalized Frequency');
ylabel('Gain, db');
title('Butterworth High Pass Filter --> Sonu Shakya');
%Low pass Filter
N=input('Enter the filter order= ');
M=N/2;
w=input('Enter the Higher pass band edge frequncy= ');
[b,a]=butter(M,w,'low');
disp('Numrator Polynomial');
disp(b);
disp('denominator polynomial');
disp(a);
w=0:0.02/pi:pi;
h=freqz(b,a,w);
gain=20*log10(abs(h));
stem(w/pi,gain);
grid;
xlabel('Normalized Frequency');
ylabel('Gain, db');
title('Butterworth Low Pass Filter --> Sonu Shakya');



EXP- 8
%High Pass Filter
clc;
clear all;
close all;
N=input('type the order of filter= ');
R=input('type the passband ripple= ');
S=input('type the min stopband attenuation= ');
W=input('type the passband edge frequency= ');
[b,a]=ellip(N,R,S,W, 'High');
disp(b);
disp('denominator polynomial');
disp(a);
disp('Numrator Polynomial');
w1=0:0.02/pi:pi;
h=freqz(b,a,w1);
gain=20*log10(abs(h));
stem(w1/pi,gain);
grid;
xlabel('Normalized Frequency');
ylabel('Gain, db');
title('Elliptical High Pass Filter --> Sonu Shakya');
%Low Pass Filter
clc;
clear all;
close all;
N=input('type the order of filter= ');
R=input('type the passband ripple= ');
S=input('type the min stopband attenuation= ');
W=input('type the passband edge frequency= ');
[b,a]=ellip(N,R,S,W, 'Low');
disp(b);
disp('denominator polynomial');
disp(a);
disp('Numrator Polynomial');
w1=0:0.02/pi:pi;
h=freqz(b,a,w1);
gain=20*log10(abs(h));
stem(w1/pi,gain);
grid;
xlabel('Normalized Frequency');
ylabel('Gain, db');
title('Elliptical Low Pass Filter --> Sonu Shakya');
