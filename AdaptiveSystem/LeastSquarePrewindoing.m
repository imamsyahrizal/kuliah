%% Least Square Prewindowing
%
% Code by Imam Syahrizal
% Universitas Gadjah Mada
%% Homework 1 : Data Windowing

% Define some number
a=4;b=6;c=6;d=6;e=2;
%% 
% Input signal

n = 1:10; % 10 data
u = a*sin((2*pi*n)/b);
m = 7; % number of tap
%% Prewindowing Method

X = [];
for i=1:m
    X = [X;[zeros(1,i-1) u(1:length(u)-i+1)]];
end
X
%% Homework 2 : Design 2 Tap filter least square
% 
% Input Signal (u) 

n = 1:10; % 10 data
u = (a+b)*sin((2*pi*n)/(c+d+e));
% Desired output

d = sin(2*pi*n)/(b+c);
d = d';
%% 
% 2 Tap Filter

m = 2; % number of delay in filter
% Prewindowing 

X = [];
for i=1:m
    X = [X;[zeros(1,i-1) u(1:length(u)-i+1)]];
end
X
%% 
% use this,
% 
% A = X'
% 
% 
% 
% and
% 
% 
% 
% 

A = X';
At = A';
w = inv(At*A)*At*d
% Y prediction (Y min)
% 

y_pred = A*w
% e min

e_min = d-y_pred