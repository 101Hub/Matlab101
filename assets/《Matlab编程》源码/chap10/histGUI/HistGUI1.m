function varargout = histGUI1(varargin)
% HISTGUI Application M-file for histGUI.fig
%    FIG = HISTGUI launch histGUI GUI.
%    HISTGUI('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 29-Jul-2001 11:18:39

if nargin == 0  % LAUNCH GUI

   fig = openfig(mfilename,'reuse');

   % Generate a structure of handles to pass to callbacks. 
   handles = guihandles(fig);
   
   % Add the number of bins to this structure.
   handles.nbins = str2num(get(handles.NBins,'String'));
   
   % Save handles structure
   guidata(fig, handles);
  
   if nargout > 0
      varargout{1} = fig;
   end

elseif ischar(varargin{1}) % INVOKE NAMED SUBFUNCTION OR CALLBACK

   try
      [varargout{1:nargout}] = feval(varargin{:}); % FEVAL switchyard
   catch
      disp(lasterr);
   end

end


%| ABOUT CALLBACKS:
%| GUIDE automatically appends subfunction prototypes to this file, and 
%| sets objects' callback properties to call them through the FEVAL 
%| switchyard above. This comment describes that mechanism.
%|
%| Each callback subfunction declaration has the following form:
%| <SUBFUNCTION_NAME>(H, EVENTDATA, HANDLES, VARARGIN)
%|
%| The subfunction name is composed using the object's Tag and the 
%| callback type separated by '_', e.g. 'slider2_Callback',
%| 'figure1_CloseRequestFcn', 'axis1_ButtondownFcn'.
%|
%| H is the callback object's handle (obtained using GCBO).
%|
%| EVENTDATA is empty, but reserved for future use.
%|
%| HANDLES is a structure containing handles of components in GUI using
%| tags as fieldnames, e.g. handles.figure1, handles.slider2. This
%| structure is created at GUI startup using GUIHANDLES and stored in
%| the figure's application data using GUIDATA. A copy of the structure
%| is passed to each callback.  You can store additional information in
%| this structure at GUI startup, and you can change the structure
%| during callbacks.  Call guidata(h, handles) after changing your
%| copy to replace the stored original so that subsequent callbacks see
%| the updates. Type "help guihandles" and "help guidata" for more
%| information.
%|
%| VARARGIN contains any extra arguments you have passed to the
%| callback. Specify the extra arguments by editing the callback
%| property in the inspector. By default, GUIDE sets the property to:
%| <MFILENAME>('<SUBFUNCTION_NAME>', gcbo, [], guidata(gcbo))
%| Add any extra arguments after the last argument, before the final
%| closing parenthesis.


% --------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Callback to open and read a file.  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function varargout = FileOpen1_Callback(h, eventdata, handles, varargin)

% Get file name
[filename,path] = uigetfile('*.dat','Load Data File');
if filename ~= 0 

   % Read data
   x = textread([path filename],'%f');
   
   % Save in handles structure
   handles.x = x;
   guidata(gcbf, handles);

   % Create histogram
   hist(handles.x,handles.nbins);
   
   % Set axis labels
   xlabel('\bfValue');
   ylabel('\bfCount');
   
   % Calculate statistics
   ave = mean(x);
   med = median(x);
   sd  = std(x);
   n   = length(x);
   
   % Update fields
   set (handles.MeanData,'String',sprintf('%7.2f',ave));
   set (handles.MedianData,'String',sprintf('%7.2f',med));
   set (handles.StdDevData,'String',sprintf('%7.2f',sd));
   set (handles.TitleString,'String',['Histogram (N = ' int2str(n) ')']);
   
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Callback to exit.  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function varargout = FileExit1_Callback(h, eventdata, handles, varargin)
close(gcbf);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Callback to set number of bins.  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function varargout = NBins_Callback(h, eventdata, handles, varargin)

% Get number of bins, round to integer, and update field
nbins = str2num(get(gcbo,'String'));   
nbins = round(nbins);
if nbins < 1
   nbins = 1;
end
set (handles.NBins,'String',int2str(nbins));

% Save in handles structure
handles.nbins = nbins;
guidata(gcbf, handles);

% Re-display data, if available
if handles.nbins > 0 & ~isempty(handles.x) 
   
   % Create histogram
   hist(handles.x,handles.nbins);
   
end


