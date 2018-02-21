function [fenv4 ] = flute( frequency,noteLength)

% flute.m
% Created by: Tasha Vanesian
% Used to create a flute sound.

% The harmonics of a flute are nearly impossible
% to see on a linear scale past the second harmonic.
% I had to zoom in by a power of 1000 to get the first
% three harmonics.

fs = 1/44100;
len = noteLength;
fD587 = notegennophase(frequency, fs, len, 2.54, .245, .009, .00001);
fenv = fD587.*((sin(10*pi*[0:fs:len]) + 100.2) * 0.1).*((sin(3*pi*[0:fs:len]) + 50.2) * 0.1);
fenv2 = fD587.*abs(sin(pi*[0:fs:len]));
% fenv3 sounds best, but more like a recorder than a flute.
%fenv3 = sinenvelope(fD587, fs,1);
fenv4 = fD587.*((sin(10*pi*[0:fs:len]) + 100.2) * 0.01).*abs(sin(2*pi*[0:fs:len])+sin(2*pi*[0:fs:len]+ pi/4)+100);

