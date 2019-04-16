function varargout = plot_line(varargin)
% PLOT_LINE M-file for plot_line.fig
%      PLOT_LINE, by itself, creates a new PLOT_LINE or raises the existing
%      singleton*.
%
%      H = PLOT_LINE returns the handle to a new PLOT_LINE or the handle to
%      the existing singleton*.
%
%      PLOT_LINE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLOT_LINE.M with the given input arguments.
%
%      PLOT_LINE('Property','Value',...) creates a new PLOT_LINE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before plot_line_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to plot_line_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help plot_line

% Last Modified by GUIDE v2.5 27-Mar-2004 18:44:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @plot_line_OpeningFcn, ...
                   'gui_OutputFcn',  @plot_line_OutputFcn, ...
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


% --- Executes just before plot_line is made visible.
function plot_line_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to plot_line (see VARARGIN)

% Choose default command line output for plot_line
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes plot_line wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = plot_line_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function FileOpen_Callback(hObject, eventdata, handles)
% hObject    handle to FileOpen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get the file to open
[filename, pathname] = uigetfile('*.dat','Load Data');
if filename ~= 0

   % Open the input file
   filename = [pathname filename];
   [fid,msg] = fopen(filename,'rt');

   % Check to see of the open failed.
   if fid < 0 

      % There was an error--tell user.
      str = ['File ' filename ' could not be opened.'];
      title = 'File Open Failed';
      errordlg(str,title,'modal');

   else

      % File opened successfully. Read the (x,y) pairs from 
      % the input file.  Get first (x,y) pair before the
      % loop starts.
      [in,count] = fscanf(fid,'%g',2);
      ii = 0;
      
      while ~feof(fid)
         ii = ii + 1;
         x(ii) = in(1);
         y(ii) = in(2);

         % Get next (x,y) pair
         [in,count] = fscanf(fid,'%g',2);
      end
      
      % Data read in.  Close file.
      fclose(fid);
      
      % Now plot the data.
      hline = plot(x,y,'LineWidth',3);
      xlabel('x');
      ylabel('y');
      grid on;
      
      % Associate the context menu with line
      set(hline,'Uicontextmenu',handles.ContextMenu1);
      
      % Save the line's handle as application data
      handles.hline = hline;
      guidata(gcbf, handles);
     
   end
end

% --------------------------------------------------------------------
function FileExit_Callback(hObject, eventdata, handles)
% hObject    handle to FileExit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close(gcbf);

% --------------------------------------------------------------------
function LineSolid_Callback(hObject, eventdata, handles)
% hObject    handle to LineSolid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.hline,'LineStyle','-');

% --------------------------------------------------------------------
function LineDashed_Callback(hObject, eventdata, handles)
% hObject    handle to LineDashed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.hline,'LineStyle','--');

% --------------------------------------------------------------------
function LineDotted_Callback(hObject, eventdata, handles)
% hObject    handle to LineDotted (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.hline,'LineStyle',':');

% --------------------------------------------------------------------
function LineDashDot_Callback(hObject, eventdata, handles)
% hObject    handle to LineDashDot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.hline,'LineStyle','-.');

% --------------------------------------------------------------------
function File_Callback(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ContextMenu1_Callback(hObject, eventdata, handles)
% hObject    handle to ContextMenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


