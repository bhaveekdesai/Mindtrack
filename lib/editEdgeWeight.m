function [ G ] = editEdgeWeight( G,s,t,w )
%EDITEDGEWEIGHT Summary of this function goes here
%   Detailed explanation goes here
%How to remove an edge
%G = rmedge(G,7,7)
%How to add an edge
%G = addedge(G,7,7,4)

G = rmedge(G,s,t);
G = addedge(G,s,t,w);

end

