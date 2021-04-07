function varargout = luasVolumeBalok(varargin)
% LUASVOLUMEBALOK MATLAB code for luasVolumeBalok.fig
%      LUASVOLUMEBALOK, by itself, creates a new LUASVOLUMEBALOK or raises the existing
%      singleton*.
%
%      H = LUASVOLUMEBALOK returns the handle to a new LUASVOLUMEBALOK or the handle to
%      the existing singleton*.
%
%      LUASVOLUMEBALOK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LUASVOLUMEBALOK.M with the given input arguments.
%
%      LUASVOLUMEBALOK('Property','Value',...) creates a new LUASVOLUMEBALOK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before luasVolumeBalok_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to luasVolumeBalok_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help luasVolumeBalok

% Last Modified by GUIDE v2.5 03-Mar-2020 09:51:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @luasVolumeBalok_OpeningFcn, ...
                   'gui_OutputFcn',  @luasVolumeBalok_OutputFcn, ...
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


% --- Executes just before luasVolumeBalok is made visible.
function luasVolumeBalok_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to luasVolumeBalok (see VARARGIN)

% Choose default command line output for luasVolumeBalok
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes luasVolumeBalok wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = luasVolumeBalok_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function luas = luasP(panjang,lebar,tinggi)
luas = 2*(panjang*lebar+lebar*tinggi+panjang*tinggi);

function volume = volumeB(panjang,lebar,tinggi)
volume = panjang*lebar*tinggi;

% --- Executes on button press in btnHitung.
function btnHitung_Callback(hObject, eventdata, handles)
% hObject    handle to btnHitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%volume = str2num(get(handles.panjang,'string'))*str2num(get(handles.lebar,'string'))*str2num(get(handles.tinggi,'string'));
set(handles.luaspermukaan,'string',num2str(luasP(str2num(get(handles.panjang,'string')),str2num(get(handles.lebar,'string')),str2num(get(handles.tinggi,'string')))));
set(handles.volume,'string',num2str(volumeB(str2num(get(handles.panjang,'string')),str2num(get(handles.lebar,'string')),str2num(get(handles.tinggi,'string')))));

function panjang_Callback(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of panjang as text
%        str2double(get(hObject,'String')) returns contents of panjang as a double


% --- Executes during object creation, after setting all properties.
function panjang_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lebar_Callback(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lebar as text
%        str2double(get(hObject,'String')) returns contents of lebar as a double


% --- Executes during object creation, after setting all properties.
function lebar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tinggi_Callback(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tinggi as text
%        str2double(get(hObject,'String')) returns contents of tinggi as a double


% --- Executes during object creation, after setting all properties.
function tinggi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in back.
close(luasVolumeBalok);
menu
