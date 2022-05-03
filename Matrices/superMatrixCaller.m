% Matrix Creation
% Designed by Luke Livingston
% Created on 1/26/2022
% A program that creates a n x m matrix of a specific pattern

clear,clc;

% Define Matrix size (Asks for manual input)
n = input('Size of Rows?');
m = input('Size of Columns?');

% Create Matrix
matrix = superMatrix(n,m)
disp(matrix);

