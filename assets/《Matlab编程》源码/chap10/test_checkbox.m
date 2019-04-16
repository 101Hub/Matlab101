function varargout = test_checkbox(varargin)
% TEST_CHECKBOX M-file for test_checkbox.fig
%      TEST_CHECKBOX, by itself, creates a new TEST_CHECKBOX or raises the existing
%      singleton*.
%
%      H = TEST_CHECKBOX returns the handle to a new TEST_CHECKBOX or the handle to
%      the existing singleton*.
%
%      TEST_CHECKBOX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_CHECKBOX.M with the given input arguments.
%
%      TEST_CHECKBOX('Property','Value',...) creates a new TEST_CHECKBOX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_checkbox_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_checkbox_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_checkbox

% Last Modified by GUIDE v2.5 13-Mar-2004 16:38:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_checkbox_OpeningFcn, ...
                   'gui_OutputFcn',  @test_checkbox_OutputFcn, ...
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


% --- Executes just before test_checkbox is made visible.
function test_checkbox_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_checkbox (see VARARGIN)

% Choose default command line output for test_checkbox
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_checkbox wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_checkbox_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in CheckBox.
function CheckBox_Callback(hObject, eventdata, handles)
% hObject    handle to CheckBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Find the state of the checkbox
state = get(handles.CheckBox,'Value');

% Place the value into the text field
if state == 0
   set (handles.TextBox,'String','Off');
else
   set (handles.TextBox,'String','On');
end   


