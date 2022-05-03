function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
%--------------------------------------------------------------------------
%   Given a function, a left bound, and a right bound as the minimum amount
%   of inputs, this program will use the falseposition method to calculate
%   the root of the function between the bounds. Additionally, the error
%   can be defined, or the maximum amount of iterations can also be defined
%   to determine how accurately you wish the root to be.
%---------------------------------------------------------------------------

% Check to see if sign change between bounds
if func(xl)*func(xu)>0
    error('No sign change between bounds');
else
    disp('root detected between bounds');
end

% Defaults values if inputs not entered
if nargin < 4
    es = .0001;
    maxit = 200;
elseif nargin < 5
    maxit = 200;
end

% Sets starting values
i = 0;
currentError = 100

% Begin False Position checking
while (currentError>es) && (i<maxit)
    xrnew = xu-(func(xu)*(xl-xu))/(func(xl)-func(xu));
    
    % After first iteration, calculate relative error
    if i >=1
        currentError = abs((xrnew-xrold)/xrnew*100);
        % if dividing by 0, root must be at 0, and will be exact
        if isnan(currentError)
            currentError = 0;
        end
        if currentError<es
            break
        end
    end
    
    % Replace old value with new
    if func(xrnew)*func(xu) > 0
        xu = xrnew;
    else
        xl = xrnew;
    end
    i = i+1;
    xrold = xrnew;
end

% Defines outputs
root = xrnew;
fx = func(xrnew);
ea = currentError;
iter = i;
end
