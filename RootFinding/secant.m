function [root,iterations,percentError] = secant(func,x0,x1,i,es)
%Secant - A function which determines the root of a mathematical function
%   Using two initial guesses, the program will calculate the middle value
%   between the last two points all the way until it reaches the root.
%
%   Format - secant(func,x0,x1,i,es)
%       func - A function handler variable with only one variable
%       x0 - The first guess. Can be any double int
%       x1 - The second guess. Can be any double int
%       i - *OPTIONAL* The maximum number of iterations to try. Defaults to 200
%       es - *OPTIONAL* The percent error to determine when to stop. Default is
%        .001%

% Determines if enough input values are provided to run
if nargin <3
    error('Not enough inputs! Please provide at least two guesses and the function')
elseif nargin<4
    i = 200;
    es = .0001;
elseif nargin<5
    es = .0001;
end
% Sets defaults to begin
currentIterations = 0;
currentError = 100;

% Start Calculations
while (currentIterations < i) && (currentError > es)
    x2 = x0-func(x0)*((x1-x0)/(func(x1)-func(x0)));
    
    % Determine Error after 1 iteration
    if currentIterations >= 1
        currentError = abs((x2-x1)/x2)*100;
    end
    
    % Reset for next loop
    currentIterations = currentIterations+1;
    x0 = x1;
    x1 = x2;
end
% Return Values after loop completion
root = x2;
iterations = currentIterations;
percentError = currentError;
end

