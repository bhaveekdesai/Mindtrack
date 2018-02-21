function [ H ] = swing( input_args )
%SWING Summary of this function goes here
%   Detailed explanation goes here

s = [1 1 1 1 2 2 2 2 4 4 4 4 8 8 8 8];
t = [1 2 4 8 1 2 4 8 1 2 4 8 1 2 4 8];
w = [0 0 0 1 0 0 0 0 0 0 0 1 0 0 1 0];

H = digraph(s,t,w);
end

