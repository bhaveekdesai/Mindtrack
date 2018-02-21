function [ I ] = sixths( input_args )
%SIXTHS Summary of this function goes here
%   Detailed explanation goes here

WW = 1;
s = [01 02 03 04 05 06 06 07 07 08 08 09 09 10 10 11 12 13 14 15];
t = [06 07 08 09 10 01 11 02 12 03 13 04 14 05 15 06 07 08 09 10];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

I = digraph(s,t,w);
end

