% Matrix Creation
% Designed by Luke Livingston
% Created on 1/26/2022
% Edited on 5/3/2022
% A program that creates a n x m matrix of a specific pattern

% Basic housekeeping
clear,clc;

% Define Matrix size (Asks for manual input, allowing for easy running)
n = input('Size of Rows?');
m = input('Size of Columns?');

% Create Matrix by running function
matrix = superMatrix(n,m)

