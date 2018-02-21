function varargout = guiEmoCon(varargin)
% GUIEMOCON MATLAB code for guiEmoCon.fig
%      GUIEMOCON, by itself, creates a new GUIEMOCON or raises the existing
%      singleton*.
%
%      H = GUIEMOCON returns the handle to a new GUIEMOCON or the handle to
%      the existing sin`gleton*.
%
%      GUIEMOCON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIEMOCON.M with the given input arguments.
%
%      GUIEMOCON('Property','Value',...) creates a new GUIEMOCON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiEmoCon_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiEmoCon_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiEmoCon

% Last Modified by GUIDE v2.5 21-Jan-2017 15:53:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiEmoCon_OpeningFcn, ...
                   'gui_OutputFcn',  @guiEmoCon_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before guiEmoCon is made visible.
function guiEmoCon_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiEmoCon (see VARARGIN)

% Choose default command line output for guiEmoCon
handles.output = hObject;
handles.currentEmotion = 1;
handles.melody = 'stepwise';
handles.rhythm = 'eighths';
handles.harmony = 'root';

% Update handles structure
set(handles.stepwise,'Value',1);
set(handles.eighths,'Value',1);
set(handles.root,'Value',1);

guidata(hObject, handles);

% UIWAIT makes guiEmoCon wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiEmoCon_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
% hObject    handle to play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button_state = get(hObject,'Value');
if button_state == get(hObject,'Max')
	fclose(fopen('_trigger', 'w'));
    axes(handles.emotionImage);
    imshow('images/NeutralEmoji.png');
    set(handles.mood,'String','Neutral');
    set(handles.play,'BackgroundColor','Red');
    play(hObject,eventdata,handles);
elseif button_state == get(hObject,'Min')
    delete('_trigger');
    !killall python
    set(handles.play,'BackgroundColor','Green');
    disp('EXITING');
end


function play(hObject,eventdata,handles)

init();

%%% BCI code
%Start broadcasting server
!python acquisition_server.py &

%Listen to broadcasting server
hudpr = dsp.UDPReceiver('LocalIPPort',8888,'MessageDataType','int8');

%parsing frequency
PARSE=5;

tic;
prev_toc=toc;

%%% BCI code ends

%TRAVERSAL Summary of this function goes here
%   Detailed explanation goes here
%Instructions: to call this function, enter three blank parameters
%This function will play the music 

[keySignatureSignal,bpmSignal] = initEmotionSignal( );

BPM = 120;
offset = 4;%This offset is for quarter notes to make the formula work
%The rules
melody = handles.melody;
rhythm = handles.rhythm;
harmony = handles.harmony;
%melody = 'penatonic';
%rhythm = 'swing';
%harmony = 'root';
[G, H, I] = stylePick(melody,rhythm,harmony);

currentNode = findnode(G,1);
currentNodeRhy = findnode(H,1);
%keySignature library has to be global
keySignatureLibrary = newPlayableNotes();
currentKeySignature = keySignatureLibrary('CM');
%Bhaveek, TODO:Initalize signal numbers preferabbly init both to 3.

while exist('_trigger','file') == 2
   % [currentKeySignature]
    %%% BCI code 
     data = strsplit(char(step(hudpr)'), ' ');  
       
        
        if (length(data)==4)
            %Fetch components
            ALPHA_AF3 = str2double(data{1});
            BETA_AF3 = str2double(data{2});
            ALPHA_AF4 = str2double(data{3});
            BETA_AF4 = str2double(data{4});
            

            KEYSIGRAW = (BETA_AF4/ALPHA_AF4) - (BETA_AF3/ALPHA_AF3); %valence [2.34,5.22,7.18] [-1.7283 1.167]
            BPMRAW = (BETA_AF3+BETA_AF4) / (ALPHA_AF3+ALPHA_AF4); %arousal [5.80,3.06,5.41] [0.29 2.79]

            KEYSIGRAW = KEYSIGRAW+0.3;
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
                
                
                %CALL FUNCTION
                %updateMusicByEmotion(KEYSIG, BPM);
                currentKeySignature = keySignatureSignal(KEYSIG,:);
                BPM = bpmSignal(BPMSIGNAL);
                [KEYSIGRAW KEYSIG BPMRAW BPMSIGNAL]
  
                handles.currentEmotion = KEYSIG;
                guidata(hObject, handles);
                emotionImage_update(hObject,eventdata,handles);
            
                prev_toc = toc;
            end
        end
   
    %%% BCI code  ends
    
    
    
    %finds the length of the note in seconds based on BPM
    noteLength = findNoteLength(BPM,offset,currentNodeRhy);
    
    %Finds what note it belongs to in the key signature
    %disp(currentNode);
    
    currentNote = currentKeySignature(currentNode);
    %disp(currentNote);
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


% --- Executes on button press in stepwise.
function stepwise_Callback(hObject, eventdata, handles)
% hObject    handle to stepwise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of stepwise
set(handles.stepwise,'Value',1);
set(handles.arpeggio,'Value',0);
set(handles.penatonic,'Value',0);
handles.melody = 'stepwise';
guidata(hObject, handles);
% --- Executes on button press in arpeggio.
function arpeggio_Callback(hObject, eventdata, handles)
% hObject    handle to arpeggio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of arpeggio
set(handles.stepwise,'Value',0);
set(handles.arpeggio,'Value',1);
set(handles.penatonic,'Value',0);
handles.melody = 'arpeggio';
guidata(hObject, handles);
% --- Executes on button press in penatonic.
function penatonic_Callback(hObject, eventdata, handles)
% hObject    handle to penatonic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of penatonic
set(handles.stepwise,'Value',0);
set(handles.arpeggio,'Value',0);
set(handles.penatonic,'Value',1);
handles.melody = 'penatonic';
guidata(hObject, handles);
% --- Executes on button press in eighths.
function eighths_Callback(hObject, eventdata, handles)
% hObject    handle to eighths (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of eighths
set(handles.eighths,'Value',1);
set(handles.swing,'Value',0);
handles.rhythm = 'eighths';
guidata(hObject, handles);
% --- Executes on button press in swing.
function swing_Callback(hObject, eventdata, handles)
% hObject    handle to swing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of swing
set(handles.eighths,'Value',0);
set(handles.swing,'Value',1);
handles.rhythm = 'swing';
guidata(hObject, handles);

% --- Executes on button press in root.
function root_Callback(hObject, eventdata, handles)
% hObject    handle to root (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of root
set(handles.root,'Value',1);
set(handles.third,'Value',0);
set(handles.fourth,'Value',0);
set(handles.fifth,'Value',0);
set(handles.sixth,'Value',0);

handles.harmony = 'root';
guidata(hObject, handles);
% --- Executes on button press in third.
function third_Callback(hObject, eventdata, handles)
% hObject    handle to third (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of third
set(handles.root,'Value',0);
set(handles.third,'Value',1);
set(handles.fourth,'Value',0);
set(handles.fifth,'Value',0);
set(handles.sixth,'Value',0);

handles.harmony = 'thirds';
guidata(hObject, handles);
% --- Executes on button press in fourth.
function fourth_Callback(hObject, eventdata, handles)
% hObject    handle to fourth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fourth
set(handles.root,'Value',0);
set(handles.third,'Value',0);
set(handles.fourth,'Value',1);
set(handles.fifth,'Value',0);
set(handles.sixth,'Value',0);

handles.harmony = 'fourths';
guidata(hObject, handles);
% --- Executes on button press in fifth.
function fifth_Callback(hObject, eventdata, handles)
% hObject    handle to fifth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fifth
set(handles.root,'Value',0);
set(handles.third,'Value',0);
set(handles.fourth,'Value',0);
set(handles.fifth,'Value',1);
set(handles.sixth,'Value',0);

handles.harmony = 'fifths';
guidata(hObject, handles);
% --- Executes on button press in sixth.
function sixth_Callback(hObject, eventdata, handles)
% hObject    handle to sixth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sixth
set(handles.root,'Value',0);
set(handles.third,'Value',0);
set(handles.fourth,'Value',0);
set(handles.fifth,'Value',0);
set(handles.sixth,'Value',1);

handles.harmony = 'sixths';
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function emotionImage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to emotionImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate emotionImage
set(handles.emotionImage);
handles.emotionImage = axes(hObject);

handles.currentEmotion = 1;
%disp(handles.currentEmotion);

if handles.currentEmotion == 1
    imshow('SadderEmoji.png');
elseif handles.currentEmotion == 2
    imshow('SadEmoji.png');
elseif handles.currentEmotion == 3
    imshow('NeutralEmoji.png');
elseif handles.currentEmotion == 4
    imshow('HappyEmoji');
elseif handles.currentEmotion == 5
    imshow('HappierEmoji');
else
    %lol derp nothing happens here
end

function emotionImage_update(hObject,eventData,handles)



if handles.currentEmotion == 1
    fileImage = 'images/SadderEmoji.png';
    mood = 'Mood: Very Sad';
elseif handles.currentEmotion == 2
    fileImage = 'images/SadEmoji.png';
    mood = 'Mood: Sad';
elseif handles.currentEmotion == 3
    fileImage = 'images/NeutralEmoji.png';
    mood = 'Mood: Normal';
elseif handles.currentEmotion == 4
    fileImage = 'images/HappyEmoji.png';
    mood = 'Mood: Happy';
elseif handles.currentEmotion == 5
    fileImage = 'images/HappierEmoji.png';
    mood = 'Mood: Very Happy';
else
    %lol derp nothing happens here
end

%set(handles.emotionImage,'UserData',fileImage);
axes(handles.emotionImage);
imshow(fileImage);
set(handles.mood,'String',mood);
