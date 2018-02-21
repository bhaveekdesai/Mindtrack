function [ F ] = testProb( P,X )
%TESTPROB Summary of this function goes here
%   Detailed explanation goes here
%Gives out the next note given the probabilities
%You get the probabilities using the edge weight
%Really flexible doesn't have limitations
x = cumsum([0 P(:).'/sum(P(:))]);
x(end) = 1e3*eps + x(end);
[a a] = histc(rand,x);
F = X(a);%F is the value of the index it returns
 
end

