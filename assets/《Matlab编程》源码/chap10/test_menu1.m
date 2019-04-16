function varargout = test_menu1(varargin)
% TEST_MENU1 M-file for test_menu1.fig
%      TEST_MENU1, by itself, creates a new TEST_MENU1 or raises the existing
%      singleton*.
%
%      H = TEST_MENU1 returns the handle to a new TEST_MENU1 or the handle to
%      the existing singleton*.
%
%      TEST_MENU1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_MENU1.M with the given input arguments.
%
%      TEST_MENU1('Property','Value',...) creates a new TEST_MENU1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_menu1_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_menu1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_menu1

% Last Modified by GUIDE v2.5 27-Mar-2004 17:33:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_menu1_OpeningFcn, ...
                   'gui_OutputFcn',  @test_menu1_OutputFcn, ...
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


% --- Executes just before test_menu1 is made visible.
function test_menu1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_menu1 (see VARARGIN)

% Choose default command line output for test_menu1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_menu1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_menu1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Menu1Item1_Callback(hObject, eventdata, handles)
% hObject    handle to Menu1Item1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu1Item2_Callback(hObject, eventdata, handles)
% hObject    handle to Menu1Item2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu1Item3_Callback(hObject, eventdata, handles)
% hObject    handle to Menu1Item3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu2Item1_Callback(hObject, eventdata, handles)
% hObject    handle to Menu2Item1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu1_Callback(hObject, eventdata, handles)
% hObject    handle to Menu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu2_Callback(hObject, eventdata, handles)
% hObject    handle to Menu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu1Item2SubmenuItem1_Callback(hObject, eventdata, handles)
% hObject    handle to Menu1Item2SubmenuItem1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu1Item2SubmenuItem2_Callback(hObject, eventdata, handles)
% hObject    handle to Menu1Item2SubmenuItem2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


