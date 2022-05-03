function [root,iterations,percentError] = modSecant(func,x0,delta,i,es)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

if nargin <3
    error('Not enough inputs! Please provide at least two guesses and the function')
elseif nargin<4
    i = 200;
    es = .0001;
elseif nargin<5
    es = .0001;
end

currentIterations = 0;
currentError = 100;
% Start Calculations
while (currentIterations < i) && (currentError > es)
    x1 = x0-((func(x0)*delta*x0)/(func(x0+(delta*x0))-func(x0)));
    % Determine Error after 1 iteration
    if currentIterations >= 1
        currentError = abs((x1-x0)/x1)*100;
    end
    currentIterations = currentIterations+1;
    x0 = x1;

end
root = x1;
iterations = currentIterations;
percentError = currentError;
