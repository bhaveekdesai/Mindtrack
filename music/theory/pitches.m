function [ note ] = pitches( input_args )
%PITCHES Summary of this function goes here
%   Detailed explanation goes here
%Note if the pitches match then it is because of enharmonics

PITCHES = zeros(1,88);%Allocated memory for the speed
for i = 1:88
    PITCHES(i) = ((2^(1/12))^(i-49))*440;
end
note=containers.Map;%init the map
note('A0') = PITCHES(1);
note('A#0') = PITCHES(2);
note('Bb0') = note('A#0');
note('B0') = PITCHES(3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
note('C1') = PITCHES(4);
note('C#1') = PITCHES(5);
note('Db1') = note('C#1');
note('D1') = PITCHES(6);
note('D#1') = PITCHES(7);
note('Eb1') = note('D#1');
note('E1') = PITCHES(8);
note('F1') = PITCHES(9);
note('F#1') = PITCHES(10);
note('Gb1') = note('F#1');
note('G1') = PITCHES(11);
note('G#1') = PITCHES(12);
note('Ab1') = note('G#1');
note('A1') = PITCHES(13);
note('A#1') = PITCHES(14);
note('Bb1') = note('A#1');
note('B1') = PITCHES(15);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
note('C2') = PITCHES(16);
note('C#2') = PITCHES(17);
note('Db2') = note('C#2');
note('D2') = PITCHES(18);
note('D#2') = PITCHES(19);
note('Eb2') = note('D#2');
note('E2') = PITCHES(20);
note('F2') = PITCHES(21);
note('F#2') = PITCHES(22);
note('Gb2') = note('F#2');
note('G2') = PITCHES(23);
note('G#2') = PITCHES(24);
note('Ab2') = note('G#2');
note('A2') = PITCHES(25);
note('A#2') = PITCHES(26);
note('Bb2') = note('A#2');
note('B2') = PITCHES(27);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
note('C3') = PITCHES(28);
note('C#3') = PITCHES(29);
note('Db3') = note('C#3');
note('D3') = PITCHES(30);
note('D#3') = PITCHES(31);
note('Eb3') = note('D#3');
note('E3') = PITCHES(32);
note('F3') = PITCHES(33);
note('F#3') = PITCHES(34);
note('Gb3') = note('F#3');
note('G3') = PITCHES(35);
note('G#3') = PITCHES(36);
note('Ab3') = note('G#3');
note('A3') = PITCHES(37);
note('A#3') = PITCHES(38);
note('Bb3') = note('A#3');
note('B3') = PITCHES(39);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
note('C4') = PITCHES(40);
note('C#4') = PITCHES(41);
note('Db4') = note('C#4');
note('D4') = PITCHES(42);
note('D#4') = PITCHES(43);
note('Eb4') = note('D#4');
note('E4') = PITCHES(44);
note('F4') = PITCHES(45);
note('F#4') = PITCHES(46);
note('Gb4') = note('F#4');
note('G4') = PITCHES(47);
note('G#4') = PITCHES(48);
note('Ab4') = note('G#4');
note('A4') = PITCHES(49);
note('A#4') = PITCHES(50);
note('Bb4') = note('A#4');
note('B4') = PITCHES(51);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
note('C5') = PITCHES(52);
note('C#5') = PITCHES(53);
note('Db5') = note('C#5');
note('D5') = PITCHES(54);
note('D#5') = PITCHES(55);
note('Eb5') = note('D#5');
note('E5') = PITCHES(56);
note('F5') = PITCHES(57);
note('F#5') = PITCHES(58);
note('Gb5') = note('F#5');
note('G5') = PITCHES(59);
note('G#5') = PITCHES(60);
note('Ab5') = note('G#5');
note('A5') = PITCHES(61);
note('A#5') = PITCHES(62);
note('Bb5') = note('A#5');
note('B5') = PITCHES(63);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
note('C6') = PITCHES(64);
note('C#6') = PITCHES(65);
note('Db6') = note('C#6');
note('D6') = PITCHES(66);
note('D#6') = PITCHES(67);
note('Eb6') = note('D#6');
note('E6') = PITCHES(68);
note('F6') = PITCHES(69);
note('F#6') = PITCHES(70);
note('Gb6') = note('F#6');
note('G6') = PITCHES(71);
note('G#6') = PITCHES(72);
note('Ab6') = note('G#6');
note('A6') = PITCHES(73);
note('A#6') = PITCHES(74);
note('Bb6') = note('A#6');
note('B6') = PITCHES(75);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
note('C7') = PITCHES(76);
note('C#7') = PITCHES(77);
note('Db7') = note('C#7');
note('D7') = PITCHES(78);
note('D#7') = PITCHES(79);
note('Eb7') = note('D#7');
note('E7') = PITCHES(80);
note('F7') = PITCHES(81);
note('F#7') = PITCHES(82);
note('Gb7') = note('F#7');
note('G7') = PITCHES(83);
note('G#7') = PITCHES(84);
note('Ab7') = note('G#7');
note('A7') = PITCHES(85);
note('A#7') = PITCHES(86);
note('Bb7') = note('A#7');
note('B7') = PITCHES(87);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
note('C8') = PITCHES(88);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
note('Cb1') = note('B0');
note('B#0') = note('C1');
note('Fb1') = note('E1');
note('E#1') = note('F1');

note('Cb2') = note('B1');
note('B#1') = note('C2');
note('Fb2') = note('E2');
note('E#2') = note('F2');

note('Cb3') = note('B2');
note('B#2') = note('C3');
note('Fb3') = note('E3');
note('E#3') = note('F3');

note('Cb4') = note('B3');
note('B#3') = note('C4');
note('Fb4') = note('E4');
note('E#4') = note('F4');

note('Cb5') = note('B4');
note('B#4') = note('C5');
note('Fb5') = note('E5');
note('E#5') = note('F5');

note('Cb6') = note('B5');
note('B#5') = note('C6');
note('Fb6') = note('E6');
note('E#6') = note('F6');

note('Cb7') = note('B6');
note('B#6') = note('C7');
note('Fb7') = note('E7');
note('E#7') = note('F7');

note('Cb8') = note('B7');
note('B#7') = note('C8');


end

