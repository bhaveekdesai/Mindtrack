% trumpet.m
% Created by: Tasha Vanesian

function [tenv4 ] = trumpet( frequency,noteLength)

fs = 1/44100; 
len = noteLength;
tC261 = notegen(frequency, fs, len, 0.17, 0, 0.63, 0, 0.57, 0, 0.98, 0, 0.56, 0, 0.38, 0.19, 0.05, 0.03, 0.02, 0.01);
tenv = tC261.*((sin(10*pi*[0:fs:len]) + 100.2) * 0.1).*((sin(3*pi*[0:fs:len]) + 50.2) * 0.1);
tenv2 = tC261.*abs(sin(pi*[0:fs:len]));
%tenv3 = sinenvelope(tC261, fs,0.25);
tenv4 = tC261.*((sin(10*pi*[0:fs:len]) + 100.2) * 0.01).*abs(sin(2*pi*[0:fs:len])+sin(2*pi*[0:fs:len]+ pi/4)+100);
% tenv5 is the best sounding

size(tC261);
size([1.2*(sin(pi* [0:fs:5/2.0]) ) ...
						ones(1, length([1/2.0:fs:3]) - 1) ]);
                    
%tenv5 = tC261.*[1.2*(sin(pi* [0:fs:1]) ) ...
						%ones(1, length([1/2.0:fs:3/2.0]) - 1) ];
%commented out tenv5 becuase of matrix dimensions off error 
                
                    
                    
end


