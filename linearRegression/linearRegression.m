function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
%linearRegression Computes the linear regression of a data set
%   Compute the linear regression based on inputs:
%     1. x: x-values for our data set
%     2. y: y-values for our data set
%
%   Outputs:
%     1. fX: x-values with outliers removed
%     2. fY: y-values with outliers removed
%     3. slope: slope from the linear regression y=mx+b
%     4. intercept: intercept from the linear regression y=mx+b
%     5. Rsquared: R^2, a.k.a. coefficient of determination

l = length(x);
yl = length(y);
if l~= yl
    error('x and y must be same length')
end
% Sort the data
[sortedY, sortOrder] = sort(y);
sortedX = x(sortOrder)

% Determine 1st and 3rd quartile
quart1 = floor((l+1)/4);
q1 = sortedY(quart1);
quart3 = floor((3*l+3)/4);
q3 = sortedY(quart3);

IQR = q3-q1;

% Check for any outliers
IQRcheck = IQR*1.5;
for i = 1:l
    % upper bound
    if sortedY(i)>(q3+IQRcheck)
        sortedY = sortedY(1:i-1);
        sortedX = sortedX(1:i-1);
        l = l-(l-length(sortedY));
        break
    % lower bound
    elseif sortedY(i)<(q1-IQRcheck)
        sortedY = sortedY(i+1:l);
        sortedX = sortedX(i+1:l);
        l = l-1;
    end
    
end
fX = sortedX;
fY = sortedY;
% Compute Linear Regression
Ey = sum(fY);
mean=Ey/l;
Ex = sum(fX);
Exy = sum(fX.*fY); 
Ex2 = sum(fX.^2);

slope = (l*Exy-(Ex*Ey))/(l*Ex2-Ex^2)
intercept = mean-slope*(Ex/l);

% Compute R^2
sumSquares = sum((fY-mean).^2);
sumSquareResid = sum((fY-intercept-slope*fX).^2);
Rsquared = 1-sumSquareResid/sumSquares;
end

