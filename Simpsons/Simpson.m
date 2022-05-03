function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

% Check for any errors
if isvector(x)==0 || isvector(y)==0
    error('x and y must both be vectors');
end
if length(x)~=length(y)
    error('Vectors x and y must be equal length')
end
L = length(x);
% Check for equal spacing
spaceCheck = diff(x);
for diffCheck = 1:length(spaceCheck)-1
    if spaceCheck(diffCheck)~=spaceCheck(diffCheck+1)
        error('x vector must have equal spacing');
    end
end
% If given two data points
if length(x) == 2
    % Perform single trap rule
    warning('Only 2 data points given, performing trapezoid rule');
    h = x(2)-x(1);
    I = h*((y(1)+y(2))/2);
    return;
elseif length(x) == 3
    % Perform single simpsons rule
    h = x(3)-x(1);
    I = h*((y(1)+4*y(2)+y(3))/6);
    return;
else
    sumOdds=0;
    sumEvens=0;
    % If odd length of intervals
    if rem(L,2)==0
        warning('Trap rule will be used for last segment');
        sumOdds = sum(y(2:2:L-1));
        sumEvens = sum(y(3:2:L-1));
        h = (x(L-1)-x(1))/(3*(L-2));
        I = h*(y(1)+y(L-1)+4*sumOdds+2*sumEvens) ;
        h = (x(L)-x(L-1));
        I = I + (h*((y(L-1)+y(L))/2));
    else
        sumOdds = sum(y(2:2:L-1))
        sumEvens = sum(y(3:2:L-1))
        h = (x(L)-x(1))/(3*(L-1));
        I = h*(y(1)+y(L-1)+4*sumOdds+2*sumEvens);
    end
end
end