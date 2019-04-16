function varargout = test_textbox(varargin)
% TEST_TEXTBOX M-file for test_textbox.fig
%      TEST_TEXTBOX, by itself, creates a new TEST_TEXTBOX or raises the existing
%      singleton*.
%
%      H = TEST_TEXTBOX returns the handle to a new TEST_TEXTBOX or the handle to
%      the existing singleton*.
%
%      TEST_TEXTBOX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_TEXTBOX.M with the given input arguments.
%
%      TEST_TEXTBOX('Property','Value',...) creates a new TEST_TEXTBOX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_textbox_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_textbox_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_textbox

% Last Modified by GUIDE v2.5 25-Mar-2002 12:19:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_textbox_OpeningFcn, ...
                   'gui_OutputFcn',  @test_textbox_OutputFcn, ...
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


% --- Executes just before test_textbox is made visible.
function test_textbox_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_textbox (see VARARGIN)

% Choose default command line output for test_textbox
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_textbox wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_textbox_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
