% s - source
% t - destination
% w - weight
% sucessors(G,2) says in Graph G it find the directed neighbors of node 2
s = [1 1 1 1 1 1 1 2 2 2 3 3 3 4 4 5 5 5 6 6 6 7 7];
t = [1 2 3 4 5 6 7 2 3 4 3 5 7 5 4 1 3 5 3 4 6 1 7];
w = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
%s = [1 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3 3 3 3 3 3 4 4 4 4 4 4 4 5 5 5 5 5 5 5 6 6 6 6 6 6 6 7 7 7 7 7 7 7];
%t = [1 2 3 4 5 6 7 1 2 3 4 5 6 7 1 2 3 4 5 6 7 1 2 3 4 5 6 7 1 2 3 4 5 6 7 1 2 3 4 5 6 7 1 2 3 4 5 6 7];
%w = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
%names = {'Root' 'Second' 'Third' 'Fourth' 'Fifth' 'Sixth' 'Seventh'};
%s=[1 2 3 4 5 6 7];
%t=[2 3 4 5 6 7 1];
%w=[1 1 1 1 1 1 1];

G = digraph(s,t,w)

%Rhythm Graph
s = [1 1 1 1 2 2 2 2 4 4 4 4 8 8 8 8];
t = [1 2 4 8 1 2 4 8 1 2 4 8 1 2 4 8];
w = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
w = [0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1];
%w = [0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0];
%w = [0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0];

%names = {'Whole' 'Half' 'Empty3' 'Quarter' 'Empty5' 'Empty6' 'Empty7' 'Eighth'};
%H = digraph(s,t,w,names)
H = digraph(s,t,w);

%Harmony Graph
s = [1 1 1 2 2 2 2 3 3 3 3 4 4 4 4 5 5 5 5 6 6 6 6 6 7 7 7 7];
t = [1 3 5 2 4 6 7 1 3 5 7 1 2 4 6 1 3 5 7 1 2 3 4 6 2 3 5 7];
w = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];

%s=[1 2 3 4 5 6 7];
%t=s;
%w=[1 1 1 1 1 1 1];
I = digraph(s,t,w);


