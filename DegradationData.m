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
S1 = alpha1 + exp(t(1,1:180) * beta);
S1=awgn(S1,30,'measured'); 
S2 = alpha2 + exp(t(1,190:300) * beta);
S2= awgn(S2,30,'measured'); 
S3 = alpha3 + exp(t(1,310:450) * beta);
S3= awgn(S3,30,'measured'); 

% concatenation 
S=[S1,S2,S3];

% visualize generated data
plot(S)
