function [ G ] = arpeggio( input_args )
%ARPEGGIO Summary of this function goes here
%   Detailed explanation goes here
WW=1;
s = [01 03 03 05 05 08 08 10 10 12 12 15];
t = [03 01 05 03 08 05 10 08 12 10 15 12];
w = [WW WW WW WW WW WW WW WW WW WW WW WW];

G = digraph(s,t,w);
end

