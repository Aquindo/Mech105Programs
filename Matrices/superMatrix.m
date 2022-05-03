function [Final] = superMatrix(n,m)
%SUPErMATrIX Designs a matrix of a specific pattern
%   Provided two values, number of rows and number of columns, this
%   function will create a matrix where the first row and column will say
%   which row and column it is, and then each value within to be equal to
%   the sum of the value directly above it plus the value directly to the
%   left

% Checks for all variables present
if nargin ~= 2
    error('Incorrect number of variables. refer to help');
end

% Begin Creation of Matrix
matrix = zeros(n,m);
for r=1:n   % For each row
    for c=1:m 	%For each column
        % Sets the first numbers in row 1 and column 1 to be the length
        matrix(r,1) = r;
        matrix(1,c) = c;
    end 
end 

% Executes the pattern for every row and column past 1
for r=2:n
    for c=2:m
    	% The pattern involves adding the previous number plus the number above
        matrix(r,c) = (matrix(r-1,c)+matrix(r,c-1));
    end
end
% Returns final as the created matrix
Final = matrix;
end

