% Secant Method Caller
% Function and Caller Designed by Luke Livingston
% Created on 03/05/2022
% Purpose
%   - A short program in which to call a function using a mathematical 
%    function and two guesses to determine the root of a function
clear,clc

% Define Variables HERE
% ---------------------------------------------------
%       Enter a Function
          func = @(x)7*sin(x)*exp(-x)-1;
%       Enter inital guess
            x0 = .5;
%       Enter second guess
            x1 = .4;
%       *OPTIONAL* Enter iterations
            i = 3;
%       *OPTIONAL* Enter Percent Error
           pE = .001;
% ---------------------------------------------------
% Calls function
%   NOTE - remove i or pE to set to default values
[root,iterations,percentError] = secant(func,x0,x1,i,pE)
%% Modified Secant Method
% Just a modified version of the previous caller/function, but uses only
% one guess and delta to determine the root instead.

% Define mathmatical Function
func = @(x)((.518*233.15)/(x-.0019))-((12.5578/(x*(x+.0019)*sqrt(233.15))))-65000
% Guess
x0 = .5825;
% Define Delta. Can be any number
delta = .05;
% Maximum iterations
i = 200;
% Minimum percent error
pE = .01;
% Calls function
[root,iterations,percentError] = modSecant(func,x0,delta,i,pE)