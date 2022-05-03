% LU Decomposition Caller
% Created by Luke Livingston
% Designed on 03/29/2022
% ----------------------------------------------------------------
%  A short code to call a LU Function. Inputs can be changed here
% ----------------------------------------------------------------


% Define Coefficient Matrix
a = [10,2,-1,;-3,-6,2,;1,1,5];
% Define Stimuli Matrix (if known)
b = [27;
     -61.5;
     -21.5];
% Call Function
[L, U, P] = luFactor(a)
P*a==L*U