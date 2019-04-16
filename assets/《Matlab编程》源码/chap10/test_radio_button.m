function varargout = test_radio_button(varargin)
% TEST_RADIO_BUTTON M-file for test_radio_button.fig
%      TEST_RADIO_BUTTON, by itself, creates a new TEST_RADIO_BUTTON or raises the existing
%      singleton*.
%
%      H = TEST_RADIO_BUTTON returns the handle to a new TEST_RADIO_BUTTON or the handle to
%      the existing singleton*.
%
%      TEST_RADIO_BUTTON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_RADIO_BUTTON.M with the given input arguments.
%
%      TEST_RADIO_BUTTON('Property','Value',...) creates a new TEST_RADIO_BUTTON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_radio_button_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_radio_button_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_radio_button

% Last Modified by GUIDE v2.5 13-Mar-2004 16:16:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_radio_button_OpeningFcn, ...
                   'gui_OutputFcn',  @test_radio_button_OutputFcn, ...
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


% --- Executes just before test_radio_button is made visible.
function test_radio_button_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_radio_button (see VARARGIN)

% Choose default command line output for test_radio_button
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_radio_button wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_radio_button_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Option1.
function Option1_Callback(hObject, eventdata, handles)
% hObject    handle to Option1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Display the radio button clicked in the text field
set (handles.TextBox,'String','Option 1');
 
% Update all text fields
set (handles.Option1,'Value',1);
set (handles.Option2,'Value',0);
set (handles.Option3,'Value',0);

% --- Executes on button press in Option2.
function Option2_Callback(hObject, eventdata, handles)
% hObject    handle to Option2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Display the radio button clicked in the text field
set (handles.TextBox,'String','Option 2');
 
% Update all text fields
set (handles.Option1,'Value',0);
set (handles.Option2,'Value',1);
set (handles.Option3,'Value',0);

% --- Executes on button press in Option3.
function Option3_Callback(hObject, eventdata, handles)
% hObject    handle to Option3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Display the radio button clicked in the text field
set (handles.TextBox,'String','Option 3');
 
% Update all text fields
set (handles.Option1,'Value',0);
set (handles.Option2,'Value',0);
set (handles.Option3,'Value',1);



