function [ I ] = fourths( input_args )
%FOURTHS Summary of this function goes here
%   Detailed explanation goes here
WW = 1;
s = [01 02 03 04 04 05 05 06 06 07 07 08 08 09 09 10 10 11 11 12 12 13 14 15];
t = [04 05 06 01 07 02 08 03 09 04 10 05 11 06 12 07 13 08 14 09 15 10 11 12];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

I = digraph(s,t,w);
end

