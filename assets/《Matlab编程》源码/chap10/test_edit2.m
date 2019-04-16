function varargout = test_edit2(varargin)
% TEST_EDIT2 M-file for test_edit2.fig
%      TEST_EDIT2, by itself, creates a new TEST_EDIT2 or raises the existing
%      singleton*.
%
%      H = TEST_EDIT2 returns the handle to a new TEST_EDIT2 or the handle to
%      the existing singleton*.
%
%      TEST_EDIT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_EDIT2.M with the given input arguments.
%
%      TEST_EDIT2('Property','Value',...) creates a new TEST_EDIT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_edit2_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_edit2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_edit2

% Last Modified by GUIDE v2.5 13-Mar-2004 14:59:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_edit2_OpeningFcn, ...
                   'gui_OutputFcn',  @test_edit2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before test_edit2 is made visible.
function test_edit2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_edit2 (see VARARGIN)

% Choose default command line output for test_edit2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_edit2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_edit2_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function EditBox2_Callback(hObject, eventdata, handles)
% hObject    handle to EditBox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditBox2 as text
%        str2double(get(hObject,'String')) returns contents of EditBox2 as a double

% Find the value typed into the edit box
str = get (handles.EditBox2,'String');

% Place the value into the text field
set (handles.TextBox2,'String',str);


% --- Executes during object creation, after setting all properties.
function EditBox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditBox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


