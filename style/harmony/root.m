function [ I ] = root( input_args )
%ROOT Summary of this function goes here
%   Detailed explanation goes here
WW = 1;
s = [01 02 03 04 05 06 07 08 09 10 11 12 13 14 15];
t = s;
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

I = digraph(s,t,w);
end

