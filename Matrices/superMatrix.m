function [Final] = superMatrix(n,m,no)
%SUPErMATrIX Designs a matrix of a specific pattern
%   Provided two values, number of rows and number of columns, this
%   function will create a matrix where the first row and column will say
%   which row and column it is, and then each value within to be equal to
%   the sum of the value directly above it plus the value directly to the
%   left

if (nargin<2)||(nargin>2)
    error('Incorrect number of variables. refer to help');
end

matrix = zeros(n,m);
for r=1:n   
    for c=1:m
        % Defines # of row/column
        matrix(r,1) = r;
        matrix(1,c) = c;
    end 
end 

for r=2:n
    for c=2:m
        matrix(r,c) = (matrix(r-1,c)+matrix(r,c-1));
    end
end

Final = matrix;
end

