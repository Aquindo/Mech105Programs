% False Position Problems
% Created by Luke Livingston
% Designed on March 3rd, 2022
%--------------------------------------------------------------------------
% A short script used to find the false position given a function, initial
% bounds, and max iterations. This is only the calling for the function
%--------------------------------------------------------------------------
clear,clc

% Define Variables
% ------------------------------
func = @(x)x.^3;
xLeft = -2;
xRight = 1;

% Call Function
[root, fx, ea, iter] = falsePosition(func,xLeft,xRight)