%% Linear Regression Caller
% Written by Luke Livingston
% Created on 4/24/2022
%

x = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]
y = [1 4 9 18 27 3 5 4.2 10 100 -25 1.2 5.7 8.6 9 2.3]
% We should filter out x=6,y=100!
[fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)

% Actual values for your comparison:
xAnswer = [1 3 2 5 4]
yAnswer = [1 1.3 2 2.5 3.75]
slopeAnswer = 0.4750
interceptAnswer = 0.6850
RsquaredAnswer = 0.4758

% Will show a 1 if your result is within 1.e-12 of the answer.
fprintf("fX is close to xAnswer? %d\n", abs(fX-xAnswer)<1.e-12) % Since fX is an array, will print one line per element.
fprintf("fY is close to yAnswer? %d\n", abs(fY-yAnswer)<1.e-12) % Since fY is an array, will print one line per element.
fprintf("slope is close to slopeAnswer? %d\n", abs(slope-slopeAnswer)<1.e-12)
fprintf("intercept is close to interceptAnswer? %d\n", abs(intercept-interceptAnswer)<1.e-12)
fprintf("Rsquared is close to RsquaredAnswer? %d\n", abs(Rsquared-RsquaredAnswer)<1.e-12)