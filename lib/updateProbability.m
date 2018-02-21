function [ G ] = updateProbability( G,currentNode )
%UPDATEPROBABILITY Summary of this function goes here
%   Detailed explanation goes here

edgeListLength = size(G.Edges,1);
significance = 0.001;%Significance is how fast the algorithm can converge
%The greater the number the faster the convergence
for i=1:edgeListLength
   
    s = G.Edges.EndNodes(i,1);
    t = G.Edges.EndNodes(i,2);
    w = G.Edges.Weight(i);
    
    if eq(t,currentNode)
        W = w*(1+significance);
    else
        %W = w;
        W = w*(1-significance/2);
    end
    
    G = editEdgeWeight(G,s,t,W);
end

end

