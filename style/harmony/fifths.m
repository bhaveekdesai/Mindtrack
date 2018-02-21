function [ I ] = fifths( input_args )
%FIFTHS Summary of this function goes here
%   Detailed explanation goes here

WW = 1;
s = [01 02 03 04 05 05 06 06 07 07 08 08 09 09 10 10 11 11 12 13 14 15];
t = [05 06 07 08 01 09 02 10 03 11 04 12 05 13 06 14 07 15 08 09 10 11];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

I = digraph(s,t,w);

end

