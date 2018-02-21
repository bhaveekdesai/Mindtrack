function[] =  client()
%Start broadcasting server
!python acquisition_server.py &

%Listen to broadcasting server
hudpr = dsp.UDPReceiver('LocalIPPort',8888,'MessageDataType','int8');

%parsing frequency
PARSE=1;
DATA=[];

tic;
prev_toc=toc;
%Capture data 
while 1
    data = strsplit(char(step(hudpr)'), ' ');
    
    if (length(data) >= 4)
        
        %Fetch components
        THETA = str2double(data{1});
        ALPHA = str2double(data{2});
        BETA_LOW = str2double(data{3});
        BETA_HIGH = str2double(data{4});
        %GAMMA = str2double(data{5});
        matlab_time = datestr(now,'HH:MM:SS.FFF');
        python_time = data{5};
        %latency = matlab_time-python_time;
        [python_time ' ' matlab_time]
%         KEYSIGRAW = ALPHA-(BETA_LOW+BETA_HIGH);
%         BPMRAW = BETA_LOW+BETA_HIGH;
%         
%         if (KEYSIGRAW < -1.5)
%             KEYSIG = 1;
%         elseif (KEYSIGRAW < -1.2)
%             KEYSIG = 2;
%         elseif (KEYSIGRAW < 0)
%             KEYSIG = 3;
%         elseif (KEYSIGRAW < 1.2)
%             KEYSIG = 4;
%         else
%             KEYSIG = 5;    
%         end
%         
%         if (BPMRAW < 0.5)
%             BPM = 1;
%         elseif (BPMRAW < 2.2)
%             BPM = 2;
%         elseif (BPMRAW < 3.5)
%             BPM = 3;
%         elseif (BPMRAW < 4.2)
%             BPM = 4;
%         else
%             BPM = 5;    
%         end
%         
%         if (toc-prev_toc >= PARSE)
%             
%             [KEYSIG BPM]
%             
%             %CALL FUNCTION
%             updateMusicByEmotion(KEYSIG, BPM);
%             
%             prev_toc = toc;
%         end
        
        
        %DATA=[DATA; [ALPHA BETA_LOW BETA_HIGH GAMMA THETA]];
    end
end

%DATA
end