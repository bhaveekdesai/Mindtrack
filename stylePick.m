function [ G,H,I ] = stylePick( melody , rhythm , harmony )
%STYLEPICK Summary of this function goes here
%   Detailed explanation goes here

%----------------------------------------------

if strcmp(melody,'arpeggio')
    G = arpeggio();
elseif strcmp(melody,'penatonic')
    G = penatonic();
elseif strcmp(melody,'stepwise')
    G = stepwise();
else
    G = stepwise();
end
%-----------------------------------------------
if strcmp(rhythm,'eighths')
    H = eighths();
elseif strcmp(rhythm,'swing')
    H = swing();
else
    H = eighths();
end    
    
%-----------------------------------------------
if strcmp(harmony,'root')
    I = root();
elseif strcmp(harmony,'thirds')
    I = thirds();
elseif strcmp(harmony, 'fourths')
    I = fourths();
elseif strcmp(harmony, 'fifths')
    I = fifths();
elseif strcmp(harmony, 'sixths')
    I = sixths();
else
    I = root();
end
%----------------------------------------------

end

