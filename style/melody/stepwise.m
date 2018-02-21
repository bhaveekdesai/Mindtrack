function [ G ] = stepwise( input_args )
%STEPWISE Summary of this function goes here
%   Detailed explanation goes here

WW = 1;%This is the variable used for probabilty said at an Arbitrary value
s = [01 02 02 03 03 04 04 05 05 06 06 07 07 08 08 09 09 10 10 11 11 12 12 13 13 14 14 15];
t = [02 01 03 02 04 03 05 04 06 05 07 06 08 07 09 08 10 09 11 10 12 11 13 12 14 13 15 14];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

G = digraph(s,t,w)

end

