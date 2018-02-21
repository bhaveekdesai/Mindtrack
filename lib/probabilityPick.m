function [ pickedNode ] = probabilityPick(G, currentNode)
%PROBABILTY Summary of this function goes here
%   Detailed explanation goes here

%Gets the subgraph that only has edges of the specified node
tempGraph = getSubgraphAtNode(G,currentNode);

%picks the destination node based on probabilities
pickedNode=testProb(tempGraph.Edges.Weight,tempGraph.Edges.EndNodes(:,2));

end

