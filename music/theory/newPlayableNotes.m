function [ keySignature ] = newPlayableNotes( input_args )
%NEWPLAYABLENOTES Summary of this function goes here
%   Detailed explanation goes here
note = pitches();
keySignature = containers.Map;
keySignature('CbM')= [note('Cb3'),note('Db3'),note('Eb3'),note('Fb3'),note('Gb3'),note('Ab3'),note('Bb3'),note('Cb4'),note('Db4'),note('Eb4'),note('Fb4'),note('Gb4'),note('Ab4'),note('Bb4'),note('Cb5')];
keySignature('GbM')= [note('Gb2'),note('Ab2'),note('Bb2'),note('Cb3'),note('Db3'),note('Eb3'),note('F3'),note('Gb3'),note('Ab3'),note('Bb3'),note('Cb4'),note('Db4'),note('Eb4'),note('F4'),note('Gb4')];
keySignature('DbM')= [note('Db3'),note('Eb3'),note('F3'),note('Gb3'),note('Ab3'),note('Bb3'),note('C4'),note('Db4'),note('Eb4'),note('F4'),note('Gb4'),note('Ab4'),note('Bb4'),note('C5'),note('Db5')];
keySignature('AbM')= [note('Ab2'),note('Bb2'),note('C3'),note('Db3'),note('Eb3'),note('F3'),note('G3'),note('Ab3'),note('Bb3'),note('C4'),note('Db4'),note('Eb4'),note('F4'),note('G4'),note('Ab4')];
keySignature('EbM')= [note('Eb3'),note('F3'),note('G3'),note('Ab3'),note('Bb3'),note('C4'),note('D4'),note('Eb4'),note('F4'),note('G4'),note('Ab4'),note('Bb4'),note('C5'),note('D5'),note('Eb5')];
keySignature('BbM')= [note('Bb2'),note('C3'),note('D3'),note('Eb3'),note('F3'),note('G3'),note('A3'),note('Bb3'),note('C4'),note('D4'),note('Eb4'),note('F4'),note('G4'),note('A4'),note('Bb4')];
keySignature('FM') = [note('F3'),note('G3'),note('A3'),note('Bb3'),note('C4'),note('D4'),note('E4'),note('F4'),note('G4'),note('A4'),note('Bb4'),note('C5'),note('D5'),note('E5'),note('F5')];
keySignature('CM') = [note('C3'),note('D3'),note('E3'),note('F3'),note('G3'),note('A3'),note('B3'),note('C4'),note('D4'),note('E4'),note('F4'),note('G4'),note('A4'),note('B4'),note('C5')];
keySignature('GM') = [note('G3'),note('A3'),note('B3'),note('C4'),note('D4'),note('E4'),note('F#4'),note('G4'),note('A4'),note('B4'),note('C5'),note('D5'),note('E5'),note('F#5'),note('G5')];
keySignature('DM') = [note('D3'),note('E3'),note('F#3'),note('G3'),note('A3'),note('B3'),note('C#4'),note('D4'),note('E4'),note('F#4'),note('G4'),note('A4'),note('B4'),note('C#5'),note('D5')];
keySignature('AM') = [note('A3'),note('B3'),note('C#4'),note('D4'),note('E4'),note('F#4'),note('G#4'),note('A4'),note('B4'),note('C#5'),note('D5'),note('E5'),note('F#5'),note('G#5'),note('A5')];
keySignature('EM') = [note('E3'),note('F#3'),note('G#3'),note('A3'),note('B3'),note('C#4'),note('D#4'),note('E4'),note('F#4'),note('G#4'),note('A4'),note('B4'),note('C#5'),note('D#5'),note('E5')];
keySignature('BM') = [note('B2'),note('C#3'),note('D#3'),note('E3'),note('F#3'),note('G#3'),note('A#3'),note('B3'),note('C#4'),note('D#4'),note('E4'),note('F#4'),note('G#4'),note('A#4'),note('B5')];
keySignature('F#M')= [note('F#3'),note('G#3'),note('A#3'),note('B3'),note('C#4'),note('D#4'),note('E#4'),note('F#4'),note('G#4'),note('A#4'),note('B4'),note('C#5'),note('D#5'),note('E#5'),note('F#5')];
keySignature('C#M')= [note('C#3'),note('D#3'),note('E#3'),note('F#3'),note('G#3'),note('A#3'),note('B#3'),note('C#4'),note('D#4'),note('E#4'),note('F#4'),note('G#4'),note('A#4'),note('B#4'),note('C#5')];
disp(keySignature('CM'));
%%%%%%%Minors
%keySignature('DbM')= [note('Db4'),note('Eb4'),note('Fb4'),note('Gb4'),note('Ab4'),note('A4'),note('C5')];
keySignature('Abm')= [note('Ab3'),note('Bb3'),note('Cb4'),note('Db4'),note('Eb4'),note('Fb4'),note('G4'),note('Ab4'),note('Bb4'),note('Cb5'),note('Db5'),note('Eb5'),note('Fb5'),note('G5'),note('Ab5')];
keySignature('Ebm')= [note('Eb3'),note('F3'),note('Gb3'),note('Ab3'),note('Bb3'),note('Cb4'),note('D4'),note('Eb4'),note('F4'),note('Gb4'),note('Ab4'),note('Bb4'),note('Cb5'),note('D5'),note('Eb5')];
keySignature('Bbm')= [note('Bb2'),note('C3'),note('Db3'),note('Eb3'),note('F3'),note('Gb3'),note('A3'),note('Bb3'),note('C4'),note('Db4'),note('Eb4'),note('F4'),note('Gb4'),note('A4'),note('Bb5')];
keySignature('Fm') = [note('F3'),note('G3'),note('Ab3'),note('Bb3'),note('C4'),note('Db4'),note('E4'),note('F4'),note('G4'),note('Ab4'),note('Bb4'),note('C5'),note('Db5'),note('E5'),note('F5')];
keySignature('Cm') = [note('C3'),note('D3'),note('Eb3'),note('F3'),note('G3'),note('Ab3'),note('B3'),note('C4'),note('D4'),note('Eb4'),note('F4'),note('G4'),note('Ab4'),note('B4'),note('C5')];
keySignature('Gm') = [note('G3'),note('A3'),note('Bb3'),note('C4'),note('D4'),note('Eb4'),note('F#4'),note('G4'),note('A4'),note('Bb4'),note('C5'),note('D5'),note('Eb5'),note('F#5'),note('G5')];
keySignature('Dm') = [note('D3'),note('E3'),note('F3'),note('G3'),note('A3'),note('Bb3'),note('C#4'),note('D4'),note('E4'),note('F4'),note('G4'),note('A4'),note('Bb4'),note('C#5'),note('D5')];
keySignature('Am') = [note('A3'),note('B3'),note('C4'),note('D4'),note('E4'),note('F4'),note('G#4'),note('A4'),note('B4'),note('C5'),note('D5'),note('E5'),note('F5'),note('G#5'),note('A5')];
keySignature('Em') = [note('E3'),note('F#3'),note('G3'),note('A3'),note('B3'),note('C4'),note('D#4'),note('E4'),note('F#4'),note('G4'),note('A4'),note('B4'),note('C5'),note('D#5'),note('E5')];
keySignature('Bm') = [note('B2'),note('C#3'),note('D3'),note('E3'),note('F#3'),note('G3'),note('A#3'),note('B3'),note('C#4'),note('D4'),note('E4'),note('F#4'),note('G4'),note('A#4'),note('B5')];
keySignature('F#m')= [note('F#3'),note('G#3'),note('A3'),note('B3'),note('C#4'),note('D4'),note('E#4'),note('F#4'),note('G#4'),note('A4'),note('B4'),note('C#5'),note('D5'),note('E#5'),note('F#5')];
keySignature('C#m')= [note('C#3'),note('D#3'),note('E3'),note('F#3'),note('G#3'),note('A3'),note('B#3'),note('C#4'),note('D#4'),note('E4'),note('F#4'),note('G#4'),note('A4'),note('B#4'),note('C#5')];
keySignature('G#m')= [note('G#3'),note('A#3'),note('B3'),note('C#4'),note('D#4'),note('E4'),note('G4'),note('G#4'),note('A#4'),note('B4'),note('C#5'),note('D#5'),note('E5'),note('G5'),note('G#5')];
keySignature('D#m')= keySignature('Ebm');

end

