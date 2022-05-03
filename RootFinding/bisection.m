function [root,ea] = bisection(func,xmin,xmax,ed)
%BISECTION Summary of this function goes here
%   Detailed explanation goes here
ea=100;
while ea > ed
    if func(xmin)*func(xmax)>0
        error('No root in between bounds');
    else
        xnew = (xmin+xmax)/2;
        ea = ((xnew - xmin)/xnew)*100
        if (func(xnew) < 0) && (func(xmin) <0)
            xmin = xnew;
        else (func(xnew) > 0) && (func(xmin) >0)
            xmin = xnew;
        end
        root = xmin;
    end
end
end

