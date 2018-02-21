function retval = notegen(freq, step, len, af, pf, a1, p1, a2, p2, a3, p3, a4, p4, a5, p5, a6, a7, a8, a9, a10)
% notegen.m
% Created by: Tasha Vanesian
% generates a note at the given frequency (in Hz), with fundamental and harmonics with
% strength given by an and phase given by pn
% inputs not given default to 0
if nargin < 20, a10 = 0 ; end
if nargin < 19, a9 = 0 ; end
if nargin < 18, a8 = 0 ; end
if nargin < 17, a7 = 0 ; end
if nargin < 16, a6 = 0 ; end
if nargin < 15, p5=0 ; end
if nargin < 14, a5=0 ; end
if nargin < 13, p4=0 ; end
if nargin < 12, a4=0 ; end
if nargin < 11, p3=0 ; end
if nargin < 10, a3=0 ; end
if nargin < 9, p2=0 ; end
if nargin < 8, a2=0 ; end
if nargin < 7, p1=0 ; end
if nargin < 6, a1=0 ; end
if nargin < 5, pf=0 ; end
if nargin < 4, af=0 ; end
if nargin < 3, len=0.5 ; end
if nargin < 2, step=0.000125 ; end
if nargin < 1, freq=0; end

wf = 2*pi*freq;

retval = af * cos(1*wf*(0:step:len) + pf)+ ...
         a1 * cos(2*wf*(0:step:len) + p1) + ...
         a2 * cos(3*wf*(0:step:len) + p2) + ...
         a3 * cos(4*wf*(0:step:len) + p3) + ...
         a4 * cos(5*wf*(0:step:len) + p4) + ... 
         a5 * cos(6*wf*(0:step:len) + p5) + ...
         a6 * cos(7*wf*(0:step:len)) + ...
         a7 * cos(8*wf*(0:step:len)) + ...
         a8 * cos(9*wf*(0:step:len)) + ...
         a9 * cos(10*wf*(0:step:len)) + ...
         a10 * cos(11*wf*(0:step:len));