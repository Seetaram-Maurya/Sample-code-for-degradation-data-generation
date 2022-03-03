clear all;
close all;
clc;

%discrete points in time
t = 0 : 0.5 : 400;

% costants initialization.
alpha1 =1;
alpha2=1.5;
alpha3=2;
beta = 0.009;

% define model to generate data
Y1 = alpha1 + exp(t(1,1:180) * beta);
Y1=awgn(Y1,30,'measured'); 
Y2 = alpha2 + exp(t(1,190:300) * beta);
Y2= awgn(Y2,30,'measured'); 
Y3 = alpha3 + exp(t(1,310:450) * beta);
Y3= awgn(Y3,30,'measured'); 

% concatenation 
Y=[Y1,Y2,Y3];

% visualize generated data
plot(Y)
