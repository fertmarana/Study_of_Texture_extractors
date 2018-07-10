function varargout = interface(varargin)
% INTERFACE MATLAB code for interface.fig
%      INTERFACE, by itself, creates a new INTERFACE or raises the existing
%      singleton*.
%
%      H = INTERFACE returns the handle to a new INTERFACE or the handle to
%      the existing singleton*.
%
%      INTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFACE.M with the given input arguments.
%
%      INTERFACE('Property','Value',...) creates a new INTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interface

% Last Modified by GUIDE v2.5 24-Jan-2018 21:03:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interface_OpeningFcn, ...
                   'gui_OutputFcn',  @interface_OutputFcn, ...
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


% --- Executes just before interface is made visible.
function interface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interface (see VARARGIN)

% Choose default command line output for interface
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interface_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.gif','Select the MATLAB code file');
imageDIR = strcat(PathName, FileName);
I = imread(imageDIR);
%figure,imshow(I);
textLabel = sprintf('%s', imageDIR);
set(handles.text3, 'String', textLabel);
global LBPARRAY;
global LBP;
global LBPARRAYSIZE;

LBPARRAY = [];
LBP = [];
LBPARRAYSIZE = 0;





% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on popupmenu1 and none of its controls.
function popupmenu1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on pushbutton1 and none of its controls.
function pushbutton1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

  global arrayIPCM;
X=get(handles.text3,'string');
selectedIndex = get(handles.popupmenu1,'String')
allItems = get(handles.popupmenu1,'Value')
selectedIndex{allItems}
I = imread(X);
if size(I,3)==3
I1=rgb2gray(I);
else
    I1=I;
end

global IPCMGLOBALSIZE;
global LBPARRAY;
global LBP;
global LBPARRAYSIZE;
switch selectedIndex{allItems}
   
    
    case  'histograma'
        set(handles.text14,'visible','off');
        set(handles.text14,'enable','off');
        
    set(handles.popupmenu3,'visible','off');
    set(handles.popupmenu3,'enable','off');
    set(handles.popupmenu2, 'enable','off');
    set(handles.pushbutton7,'visible','off');
    set(handles.pushbutton7,'enable','off');
    set(handles.pushbutton8,'visible','off');
    set(handles.pushbutton8,'enable','off'); 
    set(handles.edit2, 'enable', 'off');
    set(handles.pushbutton3, 'enable', 'off');
    set(handles.pushbutton4, 'enable', 'off');
    set(handles.pushbutton5, 'enable', 'off');
    set(handles.popupmenu2,'visible','off');
    set(handles.text4,'visible','off');
    set(handles.text5,'visible','off');
    set(handles.edit2,'visible','off');
    set(handles.pushbutton3,'visible','off');   
    set(handles.pushbutton4,'visible','off');
    set(handles.pushbutton5,'visible','off');
    setHandlesText4to13(handles,'off', 'enable');
    setHandlesText4to13(handles,'off', 'visible');
     set(handles.text14,'visible','off');
      set(handles.text14,'enable','off');
    IPCMGLOBALSIZE = 0;
    
    %figure,imshow(I1);
    %gray = rgb2gray(I1);
   % Forma histograma
    figure,imhist(I1);
    % run('/Users/Fer/Documents/MATLAB/dados.m')   
   %forma matriz de coocorrencia
  
    case 'matriz de coocorrência'
    set(handles.popupmenu3,'visible','off');
    set(handles.popupmenu3,'enable','off');    
    set(handles.popupmenu2, 'enable','on');
    set(handles.edit2, 'enable', 'on');
    set(handles.pushbutton7,'visible','off');
      set(handles.pushbutton7,'enable','off');
     set(handles.pushbutton8,'visible','off');
      set(handles.pushbutton8,'enable','off'); 
    set(handles.popupmenu2,'visible','on');
    set(handles.edit2,'visible','on');
    set(handles.pushbutton3, 'enable', 'on');
    set(handles.pushbutton3, 'visible', 'on');
    set(handles.text14,'visible','off');
      set(handles.text14,'enable','off');
    setHandlesText4to13(handles,'on', 'enable');
    setHandlesText4to13(handles,'off', 'visible');
     set(handles.text4, 'visible', 'on');
    set(handles.text5, 'visible', 'on');
    setHandlesText6to13(handles,'', 'String');
   
   
    case 'LBP'
   i18 = im2uint8(I1)  ;  
    
    set(handles.popupmenu3,'visible','off');
    set(handles.popupmenu3,'enable','off');
    setHandlesText4to13(handles,'off', 'enable');
    setHandlesText4to13(handles,'off', 'visible');
    set(handles.popupmenu2, 'enable','off');
    set(handles.edit2, 'enable', 'off');
    set(handles.pushbutton3, 'enable', 'off');
    set(handles.pushbutton4, 'enable', 'off');
    set(handles.popupmenu2,'visible','off');
    set(handles.edit2,'visible','off');
    set(handles.pushbutton3,'visible','off');
    set(handles.pushbutton4,'visible','off');
    set(handles.pushbutton7,'visible','on');
    set(handles.pushbutton7,'enable','on');
     set(handles.text14,'visible','off');
      set(handles.text14,'enable','off');
    features = extractLBPFeatures(i18);
    descritor = calculaLBP(I1);
    LBP = descritor ;
    LBPARRAY = [LBPARRAY , LBP];
    LBPARRAYSIZE = size(LBPARRAY,2) ;
   % figure, plot(1:256,descritor,'-r');
   % figure,imhist(descritor);
   % figure,imhist(features);

end




% --- Executes on key press with focus on pushbutton2 and none of its controls.
function pushbutton2_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)

% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global IPCMGLOBAL;
X=get(handles.text3,'string');
selectedIndex = get(handles.popupmenu1,'String')
allItems = get(handles.popupmenu1,'Value')
selectedIndex{allItems}
I = imread(X);
if size(I,3)==3
I1=rgb2gray(I);
else
    I1=I;
end
   DistanceStr = get(handles.edit2,'String')
   Distance = str2num(DistanceStr)
   selectedAng = get(handles.popupmenu2,'String')
   AllAng = get(handles.popupmenu2,'Value')
   Option = selectedAng{AllAng}
  
   if strcmp(Option,'0') == 1
      
       Ang = 0
   else 
       
       Ang = - Distance
   end     
   
  % figure
   glcm = graycomatrix(I,'Offset',[Ang Distance])
  % imshow(mat2gray(glcm))
   
   ROWmedia = median(glcm,1)
   ROWdesvio = std(ROWmedia)
   COLmediap =  median(glcm,2)
   COLmedia =    (COLmediap).'
   COLdesvio = std(COLmedia)
   vectormedia = [ROWmedia, ROWdesvio,COLmedia, COLdesvio]
  
   set(handles.text6, 'visible', 'on');
   set(handles.text7, 'visible', 'on');
   set(handles.text8, 'visible', 'on');
   set(handles.text9, 'visible', 'on');
   set(handles.text10, 'visible', 'on');
   set(handles.text11, 'visible', 'on');
   set(handles.text12, 'visible', 'on');
   set(handles.text13, 'visible', 'on');
   set(handles.text6, 'String', 'Correlation:');
   set(handles.text8, 'String', 'Contrast:');
   set(handles.text9, 'String', 'Energy:');
   set(handles.text11, 'String', 'Homogeneity:');
   contrast= graycoprops(glcm,{'contrast'});
   con = cell2mat(struct2cell(contrast));
   set(handles.text12, 'String', con);
   homogeneity = graycoprops(glcm,{'homogeneity'});
   hom = cell2mat(struct2cell(homogeneity));
   set(handles.text13, 'String', hom);
   correlation = graycoprops(glcm,{'correlation'});
   cor = cell2mat(struct2cell(correlation));
   set(handles.text7, 'String', cor);
   energy = graycoprops(glcm,{'energy'});
   ener = cell2mat(struct2cell(energy));
   set(handles.text10, 'String', ener);
   set(handles.pushbutton4, 'enable', 'on');
   set(handles.pushbutton4, 'visible', 'on');
   set(handles.pushbutton5, 'enable', 'on');
   set(handles.pushbutton5, 'visible', 'on');
   p = get(handles.text3,'string');

zero = get(handles.text12,'string');
one = get(handles.text7,'string');
two = get(handles.text13,'string');
three = get(handles.text10,'string');

IPCM = ImagePropertiesCoMatrix();
IPCM = setPath(IPCM,p);

array = [zero, one, two, three];
IPCM = setCoMatrixProperties(IPCM,array);

IPCMGLOBAL = IPCM;

   
   
 
   
  

% --- Executes on key press with focus on pushbutton3 and none of its controls.
function pushbutton3_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arrayIPCM;
global IPCMGLOBAL;


arrayIPCM = [arrayIPCM  IPCMGLOBAL];
size(arrayIPCM)



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
global arrayIPCM;
global IPCMGLOBAL;
global IPCMGLOBALSIZE;

euclidian = 100

p =IPCMGLOBAL.Path;
a = p;
s = size(arrayIPCM,2);
for i=1:s
    x = sqrt( (IPCMGLOBAL.CoMatrixProperties(1)-arrayIPCM(i). CoMatrixProperties(1) ).^2 + (IPCMGLOBAL.CoMatrixProperties(2)-arrayIPCM(i). CoMatrixProperties(2) ).^2 +  (IPCMGLOBAL.CoMatrixProperties(3)-arrayIPCM(i). CoMatrixProperties(3) ).^2 + (IPCMGLOBAL.CoMatrixProperties(4)-arrayIPCM(i). CoMatrixProperties(4) ).^2 );
    
    if x < euclidian
        euclidian = x
        p = arrayIPCM(i). Path;
    end
end

figure,imshow(p);

figure,imshow(IPCMGLOBAL.Path);



% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arrayIPCM;
whos
clear arrayIPCM
whos
clear
closereq


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global LBPARRAY;
global LBP;
global LBPARRAYSIZE;

LBPARRAY = [LBPARRAY  LBP];
LBPARRAYSIZE = size(LBPARRAY)
set(handles.pushbutton8,'visible','on');
set(handles.pushbutton8,'enable','on');
set(handles.text14,'visible','on');
set(handles.text14,'enable','on');
set(handles.popupmenu3,'visible','on');
set(handles.popupmenu3,'enable','on');



% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global LBPARRAY;
global LBP;
global LBPARRAYSIZE;
LBPARRAY
selectedIndex = get(handles.popupmenu1,'String')
allItems = get(handles.popupmenu1,'Value')
selectedIndex{allItems}
switch selectedIndex{allItems}
    case 'Euclidiana'
        
        
        
        
    case 'Manhattan'
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
