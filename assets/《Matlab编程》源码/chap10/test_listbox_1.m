function varargout = test_listbox_1(varargin)
% TEST_LISTBOX_1 M-file for test_listbox_1.fig
%      TEST_LISTBOX_1, by itself, creates a new TEST_LISTBOX_1 or raises the existing
%      singleton*.
%
%      H = TEST_LISTBOX_1 returns the handle to a new TEST_LISTBOX_1 or the handle to
%      the existing singleton*.
%
%      TEST_LISTBOX_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_LISTBOX_1.M with the given input arguments.
%
%      TEST_LISTBOX_1('Property','Value',...) creates a new TEST_LISTBOX_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_listbox_1_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_listbox_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_listbox_1

% Last Modified by GUIDE v2.5 13-Mar-2004 17:14:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_listbox_1_OpeningFcn, ...
                   'gui_OutputFcn',  @test_listbox_1_OutputFcn, ...
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


% --- Executes just before test_listbox_1 is made visible.
function test_listbox_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_listbox_1 (see VARARGIN)

% Choose default command line output for test_listbox_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_listbox_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_listbox_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in Listbox1.
function Listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to Listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% If this was a double click, update the label.
selectiontype = get(gcbf,'SelectionType'); 
if selectiontype(1) == 'o'

   % Find the value of the popup menu
   value = get(handles.Listbox1,'Value');

   % Update text label
   str = ['Option ' num2str(value)];
   set (handles.Label1,'String',str);
end


% --- Executes during object creation, after setting all properties.
function Listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in Button1.
function Button1_Callback(hObject, eventdata, handles)
% hObject    handle to Button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Find the value of the popup menu
value = get(handles.Listbox1,'Value');

% Update text label
str = ['Option ' num2str(value)];
set (handles.Label1,'String',str);


