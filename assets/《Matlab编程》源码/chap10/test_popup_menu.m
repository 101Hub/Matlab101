function varargout = test_popup_menu(varargin)
% TEST_POPUP_MENU M-file for test_popup_menu.fig
%      TEST_POPUP_MENU, by itself, creates a new TEST_POPUP_MENU or raises the existing
%      singleton*.
%
%      H = TEST_POPUP_MENU returns the handle to a new TEST_POPUP_MENU or the handle to
%      the existing singleton*.
%
%      TEST_POPUP_MENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_POPUP_MENU.M with the given input arguments.
%
%      TEST_POPUP_MENU('Property','Value',...) creates a new TEST_POPUP_MENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_popup_menu_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_popup_menu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_popup_menu

% Last Modified by GUIDE v2.5 13-Mar-2004 16:54:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_popup_menu_OpeningFcn, ...
                   'gui_OutputFcn',  @test_popup_menu_OutputFcn, ...
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


% --- Executes just before test_popup_menu is made visible.
function test_popup_menu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_popup_menu (see VARARGIN)

% Choose default command line output for test_popup_menu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_popup_menu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_popup_menu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in Popup1.
function Popup1_Callback(hObject, eventdata, handles)
% hObject    handle to Popup1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Find the value of the popup menu
value = get(handles.Popup1,'Value');

% Place the value into the text field
str = ['Option ' num2str(value)];
set (handles.Label1,'String',str);

% --- Executes during object creation, after setting all properties.
function Popup1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Popup1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


