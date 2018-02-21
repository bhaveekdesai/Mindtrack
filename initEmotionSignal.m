function [ keySignatureSignalMapping, bpmSignalMapping ] = initEmotionSignal( )
%EMOTIONSIGNAL Summary of this function goes here
%   Detailed explanation goes here
%needs to have a handle to keySignatureLibrary
keySignatureLibrary = newPlayableNotes();
keySignatureSignalMapping = zeros(5,15);
keySignatureSignalMapping(1,:) = keySignatureLibrary('Bbm');
keySignatureSignalMapping(2,:) = keySignatureLibrary('Gm');
keySignatureSignalMapping(3,:) = keySignatureLibrary('CM');
keySignatureSignalMapping(4,:) = keySignatureLibrary('GM');
keySignatureSignalMapping(5,:) = keySignatureLibrary('EM');

bpmSignalMapping(1) = 60;
bpmSignalMapping(2) = 100;
bpmSignalMapping(3) = 120;
bpmSignalMapping(4) = 144;
bpmSignalMapping(5) = 200;



end

