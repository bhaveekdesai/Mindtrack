function [ I ] = thirds( input_args )
%THIRDS Summary of this function goes here
%   Detailed explanation goes here

WW = 1;
s = [01 02 03 03 04 04 05 05 06 06 07 07 08 08 09 09 10 10 11 11 12 12 13 13 14 15];
t = [03 04 01 05 02 06 03 07 04 08 05 09 06 10 07 11 08 12 09 13 10 14 11 15 12 13];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

I = digraph(s,t,w);
end

