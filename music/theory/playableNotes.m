function [ keySignature ] = playableNotes( input_args )
%PLAYABLENOTES Summary of this function goes here
%   Detailed explanation goes here
note = pitches();
keySignature = containers.Map;
keySignature('CbM')= [note('Cb4'),note('Db4'),note('Eb4'),note('Fb4'),note('Gb4'),note('Ab4'),note('Bb4')];
keySignature('GbM')= [note('Gb3'),note('Ab3'),note('Bb3'),note('Cb4'),note('Db4'),note('Eb5'),note('F4')];
keySignature('DbM')= [note('Db4'),note('Eb4'),note('F4'),note('Gb4'),note('Ab4'),note('Bb4'),note('C5')];
keySignature('AbM')= [note('Ab3'),note('Bb3'),note('C4'),note('Db4'),note('Eb4'),note('F4'),note('G4')];
keySignature('EbM')= [note('Eb4'),note('F4'),note('G4'),note('Ab4'),note('Bb4'),note('C5'),note('D5')];
keySignature('BbM')= [note('Bb3'),note('C4'),note('D4'),note('Eb4'),note('F4'),note('G4'),note('A4')];
keySignature('FM') = [note('F4'),note('G4'),note('A4'),note('Bb4'),note('C5'),note('D5'),note('E5')];
keySignature('CM') = [note('C4'),note('D4'),note('E4'),note('F4'),note('G4'),note('A4'),note('B4')];
keySignature('GM') = [note('G4'),note('A4'),note('B4'),note('C5'),note('D5'),note('E5'),note('F#5')];
keySignature('DM') = [note('D4'),note('E4'),note('F#4'),note('G4'),note('A4'),note('B4'),note('C#5')];
keySignature('AM') = [note('A4'),note('B4'),note('C#5'),note('D5'),note('E5'),note('F#5'),note('G#5')];
keySignature('EM') = [note('E4'),note('F#4'),note('G#4'),note('A4'),note('B4'),note('C#5'),note('D#5')];
keySignature('BM') = [note('B3'),note('C#4'),note('D#4'),note('E4'),note('F#4'),note('G#4'),note('A#4')];
keySignature('F#M')= [note('F#3'),note('G#3'),note('A#3'),note('B3'),note('C#4'),note('D#4'),note('E#4')];
keySignature('C#M')= [note('C#4'),note('D#4'),note('E#4'),note('F#4'),note('G#4'),note('A#4'),note('B#4')];
disp(keySignature('CM'));
%%%%%%%Minors
%keySignature('DbM')= [note('Db4'),note('Eb4'),note('Fb4'),note('Gb4'),note('Ab4'),note('A4'),note('C5')];
keySignature('Abm')= [note('Ab3'),note('Bb3'),note('Cb4'),note('Db4'),note('Eb4'),note('Fb4'),note('G4')];
keySignature('Ebm')= [note('Eb4'),note('F4'),note('Gb4'),note('Ab4'),note('Bb4'),note('Cb5'),note('D5')];
keySignature('Bbm')= [note('Bb3'),note('C4'),note('Db4'),note('Eb4'),note('F4'),note('Gb4'),note('A4')];
keySignature('Fm') = [note('F4'),note('G4'),note('Ab4'),note('Bb4'),note('C5'),note('Db5'),note('E5')];
keySignature('Cm') = [note('C4'),note('D4'),note('Eb4'),note('F4'),note('G4'),note('Ab4'),note('B4')];
keySignature('Gm') = [note('G4'),note('A4'),note('Bb4'),note('C5'),note('D5'),note('Eb5'),note('F#5')];
keySignature('Dm') = [note('D4'),note('E4'),note('F4'),note('G4'),note('A4'),note('Bb4'),note('C#5')];
keySignature('Am') = [note('A4'),note('B4'),note('C5'),note('D5'),note('E5'),note('F5'),note('G#5')];
keySignature('Em') = [note('E4'),note('F#4'),note('G4'),note('A4'),note('B4'),note('C5'),note('D#5')];
keySignature('Bm') = [note('B3'),note('C#4'),note('D4'),note('E4'),note('F#4'),note('G4'),note('A#4')];
keySignature('F#m')= [note('F#3'),note('G#3'),note('A3'),note('B3'),note('C#4'),note('D4'),note('E#4')];
keySignature('C#m')= [note('C#4'),note('D#4'),note('E4'),note('F#4'),note('G#4'),note('A4'),note('B#4')];
keySignature('G#m')= [note('G#4'),note('A#4'),note('B4'),note('C#5'),note('D#5'),note('E5'),note('G5')];
keySignature('D#m')= keySignature('Ebm');
end

