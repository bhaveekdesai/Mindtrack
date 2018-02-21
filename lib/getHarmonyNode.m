function [ harmony ] = getHarmonyNode( G,currentNode )
%GETHARMONYNODE Summary of this function goes here
%   Detailed explanation goes here
%Created this function to just get the harmony note
%The Harmony Graph should be passed in with the melody Node
harmony = probabilityPick(G,currentNode);
end

