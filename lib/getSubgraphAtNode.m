function [ tempGraph ] = getSubgraphAtNode( G,currentNode )
%GETSUBGRAPHATNODE Summary of this function goes here
%   Detailed explanation goes here
neigh = successors(G,currentNode);
len = size(neigh,1);
    s = [];
    t = [];
    w = [];
    
for i=1:len

    s = [s currentNode];
    t = [t neigh(i)];
    w = [w G.Edges.Weight(findedge(G,currentNode,neigh(i)))];
end
%Gets the Edge weight
%G.Edges.Weight(findedge(G,1,3))


tempGraph = digraph(s,t,w);

end

