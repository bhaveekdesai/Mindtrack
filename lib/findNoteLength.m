function [ noteLength ] = findNoteLength( BPM,offset,currentNodeRhy )
%FINDNOTELENGTH Summary of this function goes here
%   Detailed explanation goes here
    
unit = offset*60/BPM;%calculate the time it takes to play a quarter note
noteLength = (1/currentNodeRhy)*unit;%calculate the actual length of the note

end

