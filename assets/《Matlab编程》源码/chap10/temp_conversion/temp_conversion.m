function varargout = temp_conversion(varargin)
% TEMP_CONVERSION M-file for temp_conversion.fig
%      TEMP_CONVERSION, by itself, creates a new TEMP_CONVERSION or raises the existing
%      singleton*.
%
%      H = TEMP_CONVERSION returns the handle to a new TEMP_CONVERSION or the handle to
%      the existing singleton*.
%
%      TEMP_CONVERSION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEMP_CONVERSION.M with the given input arguments.
%
%      TEMP_CONVERSION('Property','Value',...) creates a new TEMP_CONVERSION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before temp_conversion_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to temp_conversion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help temp_conversion

% Last Modified by GUIDE v2.5 13-Mar-2004 18:07:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @temp_conversion_OpeningFcn, ...
                   'gui_OutputFcn',  @temp_conversion_OutputFcn, ...
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


% --- Executes just before temp_conversion is made visible.
function temp_conversion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to temp_conversion (see VARARGIN)

% Choose default command line output for temp_conversion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes temp_conversion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = temp_conversion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Edit1_Callback(hObject, eventdata, handles)
% hObject    handle to Edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update all temperature values
deg_f = str2num( get(hObject,'String') );
deg_f = max( [ 32 deg_f] );
deg_f = min( [212 deg_f] );
deg_c = to_c(deg_f);

% Now update the fields
set (handles.Edit1,'String',sprintf('%.1f',deg_f));
set (handles.Edit2,'String',sprintf('%.1f',deg_c));
set (handles.Slider1,'Value',deg_c);


% --- Executes during object creation, after setting all properties.
function Edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Edit2_Callback(hObject, eventdata, handles)
% hObject    handle to Edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update all temperature values
deg_c = str2num( get(hObject,'String') );
deg_c = max( [  0 deg_c] );
deg_c = min( [100 deg_c] );
deg_f = to_f(deg_c);

% Now update the fields
set (handles.Edit1,'String',sprintf('%.1f',deg_f));
set (handles.Edit2,'String',sprintf('%.1f',deg_c));
set (handles.Slider1,'Value',deg_c);


% --- Executes during object creation, after setting all properties.
function Edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function Slider1_Callback(hObject, eventdata, handles)
% hObject    handle to Slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update all temperature values
deg_c = get(hObject,'Value');
deg_f = to_f(deg_c);

% Now update the fields
set (handles.Edit1,'String',sprintf('%.1f',deg_f));
set (handles.Edit2,'String',sprintf('%.1f',deg_c));
set (handles.Slider1,'Value',deg_c);


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


