
function [  ] = traversal( G,H,I )
%TRAVERSAL Summary of this function goes here
%   Detailed explanation goes here
%Instructions: to call this function, enter three blank parameters
%This function will play the music 
init();%adds all the dependencies needed
global BPM currentKeySignature;

BPM = 200;
offset = 4;%This offset is for quarter notes to make the formula work
%The rules
melody = 'penatonic';
rhythm = 'swing';
harmony = 'root';
[G, H, I] = stylePick(melody,rhythm,harmony);

currentNode = findnode(G,1);
currentNodeRhy = findnode(H,1);
%keySignature library has to be global
keySignatureLibrary = newPlayableNotes();
currentKeySignature = keySignatureLibrary('CM');
%Bhaveek, TODO:Initalize signal numbers preferabbly init both to 3.

while(true)
%    [BPM currentKeySignature] = getValues();
%    [BPM currentKeySignature]
    %finds the length of the note in seconds based on BPM
    noteLength = findNoteLength(BPM,offset,currentNodeRhy);
    
    %Finds what note it belongs to in the key signature
    currentNote = currentKeySignature(currentNode);
    
    harmonyNode = getHarmonyNode(I,currentNode);
    harmonyNote = currentKeySignature(harmonyNode);
    %print statements
    %currentNote
    %harmonyNote
    %uncomment the below for no harmony
    %soundsc(trumpet(currentKeySignature(currentNode),1),41000,16);
    soundsc((trumpet(currentNote,noteLength)+trumpet(harmonyNote,noteLength)),44100,16);
    %disp(currentNode);
    %Calculate Probabilites here 
    currentNode = probabilityPick(G,currentNode);
    currentNodeRhy = probabilityPick(H,currentNodeRhy);
    
    %G=updateProbability(G,currentNode);
    %H=updateProbability(H,currentNodeRhy);

    pause(noteLength);
    %G=updateProbability(G,currentNode);
    %H=updateProbability(H,currentNodeRhy);
    %Set that new neighboring node as the new node

end

end

