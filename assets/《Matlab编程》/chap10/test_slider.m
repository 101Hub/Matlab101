function varargout = test_slider(varargin)
% TEST_SLIDER M-file for test_slider.fig
%      TEST_SLIDER, by itself, creates a new TEST_SLIDER or raises the existing
%      singleton*.
%
%      H = TEST_SLIDER returns the handle to a new TEST_SLIDER or the handle to
%      the existing singleton*.
%
%      TEST_SLIDER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_SLIDER.M with the given input arguments.
%
%      TEST_SLIDER('Property','Value',...) creates a new TEST_SLIDER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_slider_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_slider_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_slider

% Last Modified by GUIDE v2.5 13-Mar-2004 17:41:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_slider_OpeningFcn, ...
                   'gui_OutputFcn',  @test_slider_OutputFcn, ...
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


% --- Executes just before test_slider is made visible.
function test_slider_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_slider (see VARARGIN)

% Choose default command line output for test_slider
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_slider wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_slider_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function Slider1_Callback(hObject, eventdata, handles)
% hObject    handle to Slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Find the value of the slider
value = get(handles.Slider1,'Value');

% Place the value in the text field
str = sprintf('%.2f',value);
set (handles.Label1,'String',str);


% --- Executes during object creation, after setting all properties.
function Slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


