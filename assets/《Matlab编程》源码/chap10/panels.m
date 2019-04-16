function varargout = panels(varargin)
% PANELS M-file for panels.fig
%      PANELS, by itself, creates a new PANELS or raises the existing
%      singleton*.
%
%      H = PANELS returns the handle to a new PANELS or the handle to
%      the existing singleton*.
%
%      PANELS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PANELS.M with the given input arguments.
%
%      PANELS('Property','Value',...) creates a new PANELS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before panels_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to panels_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help panels

% Last Modified by GUIDE v2.5 25-Mar-2002 12:19:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @panels_OpeningFcn, ...
                   'gui_OutputFcn',  @panels_OutputFcn, ...
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


% --- Executes just before panels is made visible.
function panels_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to panels (see VARARGIN)

% Choose default command line output for panels
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes panels wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = panels_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
