function[L,U,P] = luFactor(coef)
% luFactor - A function that takes a square matrix as an input and factors
%            it out using lu Decomposition to create a lower, upper, and
%            pivot matrix
%
%----------------------------
%     Inputs
%----------------------------
%
% One input is required
%
% coef - A square matrix (EX: 2x2) for linear algebra
%
%----------------------------
%     Outputs
%----------------------------
%
% Up to three outputs can be taken following this order, [L,U,P]
%
% L - A lower triangular matrix which contains the multipliers used for
% elimination in the decomposition process.
%
% U - A upper triangular matrix which contains the variables for each value
% after elimination.
%
% P - A matrix which is used to keep track of any pivoting done in the
% process.

% Find coef matrix size
leng = length(coef);
wit = width(coef);

% Determine if matrix is a square
if leng ~= wit
    error('Matrix must be a square');
end

% Create Pivot, blank Lower, and counter variables
P = eye(leng);
L = zeros(leng);
currentC = 1;
iter = 0;
% Begin Elimination process
while currentC < leng
    for currentR = 1:leng
        if currentC == leng
            break
        end
        % Checks if pivoting is required, and if so pivots matrixes
        [~, pos] = max(abs(coef([currentR:leng],currentC)));
        if pos~=1
            coef([currentR,pos+iter],:) = coef([pos+iter,currentR],:);
            L([currentR,pos+iter],:) = L([pos+iter,currentR],:);
            P([currentR,pos+iter],:) = P([pos+iter,currentR],:);
        end
        
        % Works through each row to eliminate the column
        for eachRow=currentR+1:leng
            tempCoef = coef;
            multiplier = tempCoef(eachRow,currentC)/tempCoef(currentR,currentC);
            L(eachRow,currentC) = multiplier;
            tempCoef(currentR,:)=tempCoef(currentR,:).*multiplier;
            coef(eachRow,:) = tempCoef(eachRow,:)-tempCoef(currentR,:);
        end
        currentC = currentC+1;
        iter=iter+1;
    end  
end
for rows=1:leng
    L(rows,rows)=1;
end
U = coef;
end
