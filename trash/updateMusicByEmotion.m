function [ newKeySignature,newBPM ] = updateMusicByEmotion(keySignatureIndex,bpmIndex )
%UPDATEMUSICBYEMOTION Summary of this function goes here
%   Detailed explanation goes here

[keySignatureSignal,bpmSignal] = initEmotionSignal( );
newKeySignature = keySignatureSignal(keySignatureIndex,:);
newBPM = bpmSignal(bpmIndex);
%This will be used by bhaveek, he will call [currentKeySignature,BPM] =
%updateMusicByEmotion(keySignatureSignal,1,bpmSignal,2);
%setValues(BPM, currentKeySignature);
end



%updateMusicByEmotion(keySignatureSignal,1,bpmSignal,2);
%setValues(BPM, currentKeySignature);.