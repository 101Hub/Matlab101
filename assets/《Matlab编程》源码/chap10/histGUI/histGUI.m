function varargout = histGUI(varargin)
% HISTGUI M-file for histGUI.fig
%      HISTGUI, by itself, creates a new HISTGUI or raises the existing
%      singleton*.
%
%      H = HISTGUI returns the handle to a new HISTGUI or the handle to
%      the existing singleton*.
%
%      HISTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HISTGUI.M with the given input arguments.
%
%      HISTGUI('Property','Value',...) creates a new HISTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before histGUI_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to histGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help histGUI

% Last Modified by GUIDE v2.5 27-Mar-2004 20:18:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @histGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @histGUI_OutputFcn, ...
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


% --- Executes just before histGUI is made visible.
function histGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to histGUI (see VARARGIN)

% Choose default command line output for histGUI
handles.output = hObject;

% Set the figure background color
set(hObject,'Color',[0.6 1 1]);

% Set the initial number of bins
handles.nbins = 11;

% Update handles structure
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = histGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function NBins_Callback(hObject, eventdata, handles)
% hObject    handle to NBins (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get number of bins, round to integer, and update field
nbins = str2num(get(hObject,'String'));   
nbins = round(nbins);
if nbins < 1
   nbins = 1;
end
set (handles.NBins,'String',int2str(nbins));

% Save in handles structure
handles.nbins = nbins;
guidata(gcbf, handles);

% Re-display data, if available
if handles.nbins > 0 & ~isempty(handles.x) 
   
   % Create histogram
   hist(handles.x,handles.nbins);
   
end

% --- Executes during object creation, after setting all properties.
function NBins_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NBins (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% --------------------------------------------------------------------
function Open_Callback(hObject, eventdata, handles)
% hObject    handle to Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get file name
[filename,path] = uigetfile('*.dat','Load Data File');
if filename ~= 0 

   % Read data
   x = textread([path filename],'%f');
   
   % Save in handles structure
   handles.x = x;
   guidata(gcbf, handles);

   % Create histogram
   hist(handles.x,handles.nbins);
   
   % Set axis labels
   xlabel('\bfValue');
   ylabel('\bfCount');
   
   % Calculate statistics
   ave = mean(x);
   med = median(x);
   sd  = std(x);
   n   = length(x);
   
   % Update fields
   set (handles.MeanData,'String',sprintf('%7.2f',ave));
   set (handles.MedianData,'String',sprintf('%7.2f',med));
   set (handles.StdDevData,'String',sprintf('%7.2f',sd));
   set (handles.TitleString,'String',['Histogram (N = ' int2str(n) ')']);
   
end

% --------------------------------------------------------------------
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close(gcbf);

% --------------------------------------------------------------------
function File_Callback(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


