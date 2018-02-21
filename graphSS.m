% s - source
% t - destination
% w - weight
% sucessors(G,2) says in Graph G it find the directed neighbors of node 2
%-----Stepwise-----

WW = 1;%This is the variable used for probabilty said at an Arbitrary value
s = [01 02 02 03 03 04 04 05 05 06 06 07 07 08 08 09 09 10 10 11 11 12 12 13 13 14 14 15];
t = [02 01 03 02 04 03 05 04 06 05 07 06 08 07 09 08 10 09 11 10 12 11 13 12 14 13 15 14];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

%-----Penatonic-----
s = [01 01 01 01 01 01 01 01 01 01 01 02 02 02 02 02 02 02 02 02 02 02 03 03 03 03 03 03 03 03 03 03 03 05 05 05 05 05 05 05 05 05 05 05 06 06 06 06 06 06 06 06 06 06 06 08 08 08 08 08 08 08 08 08 08 08 09 09 09 09 09 09 09 09 09 09 09 10 10 10 10 10 10 10 10 10 10 10 12 12 12 12 12 12 12 12 12 12 12 13 13 13 13 13 13 13 13 13 13 13 15 15 15 15 15 15 15 15 15 15 15];
t = [01 02 03 05 06 08 09 10 12 13 15 01 02 03 05 06 08 09 10 12 13 15 01 02 03 05 06 08 09 10 12 13 15 01 02 03 05 06 08 09 10 12 13 15 01 02 03 05 06 08 09 10 12 13 15 01 02 03 05 06 08 09 10 12 13 15 01 02 03 05 06 08 09 10 12 13 15 01 02 03 05 06 08 09 10 12 13 15 01 02 03 05 06 08 09 10 12 13 15 01 02 03 05 06 08 09 10 12 13 15 01 02 03 05 06 08 09 10 12 13 15];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

%-----Arpeggio-----
s = [01 03 03 05 05 08 08 10 10 12 12 15];
t = [03 01 05 03 08 05 10 08 12 10 15 12];
w = [WW WW WW WW WW WW WW WW WW WW WW WW];
%s = [1 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3 3 3 3 3 3 4 4 4 4 4 4 4 5 5 5 5 5 5 5 6 6 6 6 6 6 6 7 7 7 7 7 7 7];
%t = [1 2 3 4 5 6 7 1 2 3 4 5 6 7 1 2 3 4 5 6 7 1 2 3 4 5 6 7 1 2 3 4 5 6 7 1 2 3 4 5 6 7 1 2 3 4 5 6 7];
%w = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
%names = {'Root' 'Second' 'Third' 'Fourth' 'Fifth' 'Sixth' 'Seventh'};
%s=[1 2 3 4 5 6 7];
%t=[2 3 4 5 6 7 1];
%w=[1 1 1 1 1 1 1];

G = digraph(s,t,w)

%Rhythm Graph

% -----Eighths-----
s = [1 1 1 1 2 2 2 2 4 4 4 4 8 8 8 8];
t = [1 2 4 8 1 2 4 8 1 2 4 8 1 2 4 8];
w = [0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1];
% -----Swing-----
s = [1 1 1 1 2 2 2 2 4 4 4 4 8 8 8 8];
t = [1 2 4 8 1 2 4 8 1 2 4 8 1 2 4 8];
w = [0 0 0 1 0 0 0 0 0 0 0 1 0 0 1 0];
%w = [0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0];
%w = [0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0];

%names = {'Whole' 'Half' 'Empty3' 'Quarter' 'Empty5' 'Empty6' 'Empty7' 'Eighth'};
%H = digraph(s,t,w,names)
H = digraph(s,t,w);

%Harmony Graph
s = [1 1 1 2 2 2 2 3 3 3 3 4 4 4 4 5 5 5 5 6 6 6 6 6 7 7 7 7];
t = [1 3 5 2 4 6 7 1 3 5 7 1 2 4 6 1 3 5 7 1 2 3 4 6 2 3 5 7];
w = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];

%-----Root-----
s = [01 02 03 04 05 06 07 08 09 10 11 12 13 14 15];
t = s;
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

%-----Thirds-----
s = [01 02 03 03 04 04 05 05 06 06 07 07 08 08 09 09 10 10 11 11 12 12 13 13 14 15];
t = [03 04 01 05 02 06 03 07 04 08 05 09 06 10 07 11 08 12 09 13 10 14 11 15 12 13];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

%-----Fourths-----
s = [01 02 03 04 04 05 05 06 06 07 07 08 08 09 09 10 10 11 11 12 12 13 14 15];
t = [04 05 06 01 07 02 08 03 09 04 10 05 11 06 12 07 13 08 14 09 15 10 11 12];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

%-----Fifths-----
s = [01 02 03 04 05 05 06 06 07 07 08 08 09 09 10 10 11 11 12 13 14 15];
t = [05 06 07 08 01 09 02 10 03 11 04 12 05 13 06 14 07 15 08 09 10 11];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];

%-----Sixths-----
s = [01 02 03 04 05 06 06 07 07 08 08 09 09 10 10 11 12 13 14 15];
t = [06 07 08 09 10 01 11 02 12 03 13 04 14 05 15 06 07 08 09 10];
w = [WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW WW];


%s=[1 2 3 4 5 6 7];
%t=s;
%w=[1 1 1 1 1 1 1];
I = digraph(s,t,w);


