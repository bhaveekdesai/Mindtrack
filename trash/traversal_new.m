
function [  ] = traversal_new( G,H,I )

init();

%%% BCI code
%Start broadcasting server
!python acquisition_server.py &

%Listen to broadcasting server
hudpr = dsp.UDPReceiver('LocalIPPort',8888,'MessageDataType','int8');

%parsing frequency
PARSE=10;

tic;
prev_toc=toc;

%%% BCI code ends

%TRAVERSAL Summary of this function goes here
%   Detailed explanation goes here
%Instructions: to call this function, enter three blank parameters
%This function will play the music 
%init();%adds all the dependencies needed

[keySignatureSignal,bpmSignal] = initEmotionSignal( );

BPM = 200;
offset = 4;%This offset is for quarter notes to make the formula work
%The rules
melody = 'penatonic';
rhythm = 'swing';
harmony = 'root';
[G, H, I] = stylePick(melody,rhythm,harmony);

currentNode = findnode(G,1);
currentNodeRhy = findnode(H,1);
%keySignature library has to be global
keySignatureLibrary = newPlayableNotes();
currentKeySignature = keySignatureLibrary('CM');
%Bhaveek, TODO:Initalize signal numbers preferabbly init both to 3.

while(true)
   % [currentKeySignature]
    %%% BCI code
%      if (toc-prev_toc >= 10)
%             [currentKeySignature, BPM] = updateMusicByEmotion(mod(instance,5), mod(instance,5));
%     %        [currentKeySignature]
%             instance = instance+1;
%             if (mod(instance,5)==0)
%                 instance = instance+1;
%             end
%             prev_toc = toc;
%      end
   
      
        data = strsplit(char(step(hudpr)'), ' ');  
       
        
        if (length(data)==4)
            %Fetch components
            ALPHA_AF3 = str2double(data{1});
            BETA_AF3 = str2double(data{2});
            ALPHA_AF4 = str2double(data{3});
            BETA_AF4 = str2double(data{4});
            

            KEYSIGRAW = (BETA_AF4/ALPHA_AF4) - (BETA_AF3/ALPHA_AF3); %valence [2.34,5.22,7.18] [-1.7283 1.167]
            BPMRAW = (BETA_AF3+BETA_AF4) / (ALPHA_AF3+ALPHA_AF4); %arousal [5.80,3.06,5.41] [0.29 2.79]

            
            if (KEYSIGRAW <= -0.86)
                KEYSIG = 1;
            elseif (KEYSIGRAW < 0)
                KEYSIG = 2;
            elseif (KEYSIGRAW < 0.28)
                KEYSIG = 3;
            elseif (KEYSIGRAW < 0.56)
                KEYSIG = 4;
            else
                KEYSIG = 5;    
            end

            if (BPMRAW <= 0.67)
                BPMSIGNAL = 1;
            elseif (BPMRAW < 1)
                BPMSIGNAL = 2;
            elseif (BPMRAW < 1.41)
                BPMSIGNAL = 3;
            elseif (BPMRAW < 1.75)
                BPMSIGNAL = 4;
            else
                BPMSIGNAL = 5;    
            end

            if (toc-prev_toc >= PARSE)
                
                [KEYSIGRAW KEYSIG BPMRAW BPMSIGNAL]

                %CALL FUNCTION
                %updateMusicByEmotion(KEYSIG, BPM);
                currentKeySignature = keySignatureSignal(KEYSIG,:);
                BPM = bpmSignal(BPMSIGNAL);

                prev_toc = toc;
            end
        end
   
    %%% BCI code ends
    
    
    
    %finds the length of the note in seconds based on BPM
    noteLength = findNoteLength(BPM,offset,currentNodeRhy);
    
    %Finds what note it belongs to in the key signature
    currentNote = currentKeySignature(currentNode);
    
    harmonyNode = getHarmonyNode(I,currentNode);
    harmonyNote = currentKeySignature(harmonyNode);
    %print statements
    %currentNote
    %harmonyNote
    %uncomment the below for no harmony
    %soundsc(trumpet(currentKeySignature(currentNode),1),41000,16);
    soundsc((trumpet(currentNote,noteLength)+trumpet(harmonyNote,noteLength)),44100,16);
    %disp(currentNode);
    %Calculate Probabilites here 
    currentNode = probabilityPick(G,currentNode);
    currentNodeRhy = probabilityPick(H,currentNodeRhy);
    
    %G=updateProbability(G,currentNode);
    %H=updateProbability(H,currentNodeRhy);

    pause(noteLength);
    %G=updateProbability(G,currentNode);
    %H=updateProbability(H,currentNodeRhy);
    %Set that new neighboring node as the new node

end

end

