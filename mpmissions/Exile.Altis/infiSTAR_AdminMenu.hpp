/*
	File: infiSTAR_AdminMenu.hpp
	Author: GRIMandinfiSTAR
	Contact: bruno.marcetic@gmail.com or infiSTAR23@gmail.com // www.infiSTAR.de
	Antihack & AdminTools - ChristianLorenzen - www.infiSTAR.de-License: (CC)
	#1252
*/
class RscTextInfi
{
access=0;
idc=-1;
type=0;
style=0x00;
linespacing=1;
colorBackground[]={0,0,0,0};
colorText[]={0.84,0.07,0,1};
shadow=1;
font="PuristaBold";
sizeex=0.0400;
fixedWidth=0;
};

class RscButtonInfi
{
access=0;
idc=-1;
type=1;
text="";
action="";
colorText[]={1,1,1,0.9};
colorDisabled[]={0.6,0.1,0.3,0};
colorBackground[]={0,0,0,0.8};
colorBackgroundDisabled[]={0,0.0,0};
colorBackgroundActive[]={0.15,0.35,0.55,0.7};
colorFocused[]={0.58,0.05,0,0.7};
colorShadow[]={0.023529,0,0.0313725,1};
colorBorder[]={0.023529,0,0.0313725,1};
soundEnter[]={"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",0.09,1};
soundPush[]={"\A3\ui_f\data\sound\RscButtonMenu\soundPush",0.09,1};
soundClick[]={"\A3\ui_f\data\sound\RscButtonMenu\soundClick",0.09,1};
soundEscape[]={"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",0.09,1};
style=2;
shadow=0;
font="PuristaMedium";
sizeEx=0.02921;
offsetX=0.003;
offsetY=0.003;
offsetPressedX=0.002;
offsetPressedY=0.002;
borderSize=0;
};


class RscListBoxInfi
{
access=0;
type=5;
style=0;
font="PuristaLight";
sizeEx=0.03;
rowHeight=0;
colorText[]={1,1,1,1};
colorScrollbar[]={1,1,1,1};
colorSelect[]={0,0,0,1};
colorSelect2[]={1,0.5,0,1};
colorSelectBackground[]={0.6,0.6,0.6,1};
colorSelectBackground2[]={0.2,0.2,0.2,1};
colorBackground[]={0,0,0,0.6};
maxHistoryDelay=1.0;
soundSelect[]={"",0.1,1};
period=1;
autoScrollSpeed=-1;
autoScrollDelay=5;
autoScrollRewind=0;
arrowEmpty="#(argb,8,8,3)color(1,1,1,1)";
arrowFull="#(argb,8,8,3)color(1,1,1,1)";
shadow=0;
colorDisabled[]={1,1,1,0.25};
border=false;
borderSize=0;

class ScrollBar
{
arrowEmpty="#(argb,8,8,3)color(1,1,1,1)";
arrowFull="#(argb,8,8,3)color(1,1,1,1)";
border="#(argb,8,8,3)color(1,1,1,1)";
color[]={1,1,1,0.6};
colorActive[]={1,1,1,1};
colorDisabled[]={1,1,1,0.3};
thumb="#(argb,8,8,3)color(1,1,1,1)";
};
class ListScrollBar:ScrollBar
{
color[]={1,1,1,0.6};
colorActive[]={1,1,1,1};
colorDisabled[]={1,1,1,0.3};
thumb="#(argb,8,8,3)color(1,1,1,1)";
arrowEmpty="#(argb,8,8,3)color(1,1,1,1)";
arrowFull="#(argb,8,8,3)color(1,1,1,1)";
border="#(argb,8,8,3)color(1,1,1,1)";
shadow=0;
};
};
class RscEditInfi
{
access=0;
type=2;
style=0x00+64;
colorBackground[]={0,0,0,0};
colorText[]={1,1,1,1};
colorSelection[]={1,1,1,0.25};
colorDisabled[]={1,1,1,0};
font="PuristaBold";
sizeEx=0.04;
autocomplete="";
text="";
size=0.2;
shadow=0;
};
class RscMapControlInfi
{
access=0;
idc=11;
type=101;
style=0x30;

colorOutside[]={0,0,0,1};
colorRailWay[]={0.8,0.2,0,1};
colorTracks[]={0.84,0.76,0.65,0.15};
colorRoads[]={0.7,0.7,0.7,1};
colorMainRoads[]={0.9,0.5,0.3,1};
colorTracksFill[]={0.84,0.76,0.65,1};
colorRoadsFill[]={1,1,1,1};
colorMainRoadsFill[]={1,0.6,0.4,1};
colorGrid[]={0.1,0.1,0.1,0.6};
colorGridMap[]={0.1,0.1,0.1,0.6};
colorBackground[]={1.00,1.00,1.00,1.00};
colorText[]={0.00,0.00,0.00,1.00};
colorSea[]={0.56,0.80,0.98,0.50};
colorForest[]={0.60,0.80,0.20,0.50};
colorRocks[]={0.50,0.50,0.50,0.50};
colorCountlines[]={0.65,0.45,0.27,0.50};
colorMainCountlines[]={0.65,0.45,0.27,1.00};
colorCountlinesWater[]={0.00,0.53,1.00,0.50};
colorMainCountlinesWater[]={0.00,0.53,1.00,1.00};
colorForestBorder[]={0.40,0.80,0.00,1.00};
colorRocksBorder[]={0.50,0.50,0.50,1.00};
colorPowerLines[]={0.00,0.00,0.00,1.00};
colorNames[]={0.00,0.00,0.00,1.00};
colorInactive[]={1.00,1.00,1.00,0.50};
colorLevels[]={0.00,0.00,0.00,1.00};
maxSatelliteAlpha=0.85;
alphaFadeStartScale=0.35;
alphaFadeEndScale=0.4;


font="TahomaB";
sizeEx=0.040000;
moveOnEdges=0;

fontLabel="TahomaB";
sizeExLabel=0.02;
fontGrid="TahomaB";
sizeExGrid=0.02;
fontUnits="TahomaB";
sizeExUnits=0.02;
fontNames="TahomaB";
sizeExNames=0.02;
fontInfo="TahomaB";
sizeExInfo=0.02;
fontLevel="TahomaB";
sizeExLevel=0.02;

ptsPerSquareSea=6;
ptsPerSquareTxt=8;
ptsPerSquareCLn=8;
ptsPerSquareExp=8;
ptsPerSquareCost=8;
ptsPerSquareFor="4.0f";
ptsPerSquareForEdge="10.0f";
ptsPerSquareRoad=2;
ptsPerSquareObj=10;
scaleMin=0.001;
scaleMax=1;

text="#(argb,8,8,3)color(1,1,1,1)";
showCountourInterval=2;
scaleDefault=0.1;
onMouseButtonClick="";
onMouseButtonDblClick="";

class ActiveMarker{
color[]={0.30,0.10,0.90,1.00};
size=50;
};
class Bunker{
icon="\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
color[]={0.00,0.35,0.70,1.00};
size=14;
importance="1.5*14*0.05";
coefMin=0.25;
coefMax=4.00;
};
class Bush{
icon="\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
color[]={0.55,0.64,0.43,1.00};
size=14;
importance="0.2*14*0.05";
coefMin=0.25;
coefMax=4.00;
};
class BusStop{
icon="\A3\ui_f\data\map\mapcontrol\busstop_ca.paa";
color[]={0.00,0.00,1.00,1.00};
size=10;
importance="1*10*0.05";
coefMin=0.25;
coefMax=4.00;
};
class Command{
icon="#(argb,8,8,3)color(1,1,1,1)";
color[]={0.00,0.00,0.00,1.00};
size=18;
importance=1.00;
coefMin=1.00;
coefMax=1.00;
};
class CustomMark
{
color[]={0,0,0,1};
icon="\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
size=24;
importance=1;
coefMin=1;
coefMax=1;
};
class Cross{
icon="\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
color[]={0.00,0.35,0.70,1.00};
size=16;
importance="0.7*16*0.05";
coefMin=0.25;
coefMax=4.00;
};
class Fortress{
icon="\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
color[]={0.00,0.35,0.70,1.00};
size=16;
importance="2*16*0.05";
coefMin=0.25;
coefMax=4.00;
};
class Fuelstation{
icon="\A3\ui_f\data\map\mapcontrol\fuelstation_ca.paa";
color[]={1.00,0.35,0.35,1.00};
size=16;
importance="2*16*0.05";
coefMin=0.75;
coefMax=4.00;
};
class Fountain{
icon="\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
color[]={0.00,0.35,0.70,1.00};
size=12;
importance="1*12*0.05";
coefMin=0.25;
coefMax=4.00;
};
class Hospital{
icon="\A3\ui_f\data\map\mapcontrol\hospital_ca.paa";
color[]={0.78,0.00,0.05,1.00};
size=16;
importance="2*16*0.05";
coefMin=0.50;
coefMax=4;
};
class Chapel{
icon="\A3\ui_f\data\map\mapcontrol\chapel_ca.paa";
color[]={0.00,0.35,0.70,1.00};
size=16;
importance="1*16*0.05";
coefMin=0.90;
coefMax=4.00;
};
class Church{
icon="\A3\ui_f\data\map\mapcontrol\church_ca.paa";
color[]={0.00,0.35,0.70,1.00};
size=16;
importance="2*16*0.05";
coefMin=0.90;
coefMax=4.00;
};
class Lighthouse{
icon="\A3\ui_f\data\map\mapcontrol\lighthouse_ca.paa";
color[]={0.78,0.00,0.05,1.00};
size=20;
importance="3*16*0.05";
coefMin=0.90;
coefMax=4.00;
};
class Quay{
icon="\A3\ui_f\data\map\mapcontrol\quay_ca.paa";
color[]={0.00,0.35,0.70,1.00};
size=16;
importance="2*16*0.05";
coefMin=0.50;
coefMax=4.00;
};
class Rock{
icon="\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
color[]={0.35,0.35,0.35,1.00};
size=12;
importance="0.5*12*0.05";
coefMin=0.25;
coefMax=4.00;
};
class Ruin{
icon="\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
color[]={0.78,0.00,0.05,1.00};
size=16;
importance="1.2*16*0.05";
coefMin=1.00;
coefMax=4.00;
};
class Stack{
icon="\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
color[]={0.00,0.35,0.70,1.00};
size=20;
importance="2*16*0.05";
coefMin=0.90;
coefMax=4.00;
};
class Tree{
icon="\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
color[]={0.55,0.64,0.43,1.00};
size=12;
importance="0.9*16*0.05";
coefMin=0.25;
coefMax=4.00;
};
class SmallTree{
icon="\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
color[]={0.55,0.64,0.43,1.00};
size=12;
importance="0.6*12*0.05";
coefMin=0.25;
coefMax=4.00;
};
class Tourism{
icon="\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
color[]={0.78,0.00,0.05,1.00};
size=16;
importance="1*16*0.05";
coefMin=0.70;
coefMax=4.00;
};
class Transmitter{
icon="\A3\ui_f\data\map\mapcontrol\transmitter_ca.paa";
color[]={0.00,0.35,0.70,1.00};
size=20;
importance="2*16*0.05";
coefMin=0.90;
coefMax=4.00;
};
class ViewTower{
icon="\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
color[]={0.00,0.35,0.70,1.00};
size=16;
importance="2.5*16*0.05";
coefMin=0.50;
coefMax=4.00;
};
class Watertower{
icon="\A3\ui_f\data\map\mapcontrol\watertower_ca.paa";
color[]={0.00,0.35,0.70,1.00};
size=32;
importance="1.2*16*0.05";
coefMin=0.90;
coefMax=4.00;
};
class Waypoint{
icon="\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
color[]={0.00,0.00,0.00,1.00};
size=24;
importance=1.00;
coefMin=1.00;
coefMax=1.00;
};
class WaypointCompleted{
icon="\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa";
color[]={0.00,0.00,0.00,1.00};
size=24;
importance=1.00;
coefMin=1.00;
coefMax=1.00;
};
class Task
{
colorCreated[]={1,1,1,1};
colorCanceled[]={0.7,0.7,0.7,1};
colorDone[]={0.7,1,0.3,1};
colorFailed[]={1,0.3,0.2,1};
color[]={"(profilenamespace getVariable['IGUI_TEXT_RGB_R',0])","(profilenamespace getVariable['IGUI_TEXT_RGB_G',1])","(profilenamespace getVariable['IGUI_TEXT_RGB_B',1])","(profilenamespace getVariable['IGUI_TEXT_RGB_A',0.8])"};
icon="\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
iconCreated="\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
iconCanceled="\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
iconDone="\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
iconFailed="\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
size=27;
importance=1;
coefMin=1;
coefMax=1;
};
class Power
{
icon="\A3\ui_f\data\map\mapcontrol\power_CA.paa";
size=24;
importance=1;
coefMin=0.85;
coefMax=1;
color[]={1,1,1,1};
};
class Powersolar
{
icon="\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
size=24;
importance=1;
coefMin=0.85;
coefMax=1;
color[]={1,1,1,1};
};
class Powerwave
{
icon="\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
size=24;
importance=1;
coefMin=0.85;
coefMax=1;
color[]={1,1,1,1};
};
class Powerwind
{
icon="\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
size=24;
importance=1;
coefMin=0.85;
coefMax=1;
color[]={1,1,1,1};
};
class Shipwreck
{
icon="\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
size=24;
importance=1;
coefMin=0.85;
coefMax=1;
color[]={1,1,1,1};
};
};


class infiSTAR_AdminMenu{
idd=-1338;
movingenable=false;
enablesimulation=true;
controls[]=
{
infiSTAR_TXT_1000,
infiSTAR_BTN_10,
infiSTAR_BTN_11,
infiSTAR_LIST_1500,
infiSTAR_LIST_1501,
infiSTAR_BTN_20,
infiSTAR_BTN_21,
infiSTAR_BTN_23,
infiSTAR_BTN_24,
infiSTAR_BTN_25,
infiSTAR_MAP,
infiSTAR_EDIT_100,
infiSTAR_BTN_26,
infiSTAR_BTN_27,
infiSTAR_BTN_28,
infiSTAR_BTN_29,
infiSTAR_BTN_30,
infiSTAR_BTN_31,
infiSTAR_BTN_32,
infiSTAR_BTN_33,
infiSTAR_BTN_34,
infiSTAR_BTN_35,
infiSTAR_BTN_36,
infiSTAR_BTN_37,
infiSTAR_BTN_38
};
class infiSTAR_TXT_1000:RscTextInfi
{
idc=2;

text="infiSTAR.de";
x=-4.16885e-005*safezoneW+safezoneX;
y=-5.99921e-005*safezoneH+safezoneY;
w=1*safezoneW;
h=0.0341667*safezoneH;
colorText[]={1,1,1,0.9};
colorBackground[]={0.56,0.04,0.04,1};
};
class infiSTAR_BTN_10:RscButtonInfi
{
idc=10;

text="Range";
x=0.01875*safezoneW+safezoneX;
y=0.038*safezoneH+safezoneY;
w=0.0625001*safezoneW;
h=0.02*safezoneH;
};
class infiSTAR_BTN_11:RscButtonInfi
{
idc=11;

text="Alphabet";
x=0.104687*safezoneW+safezoneX;
y=0.038*safezoneH+safezoneY;
w=0.0625001*safezoneW;
h=0.02*safezoneH;
};
class infiSTAR_LIST_1500:RscListBoxInfi
{
idc=1500;

x=0*safezoneW+safezoneX;
y=0.0616667*safezoneH+safezoneY;
w=0.189063*safezoneW;
h=0.938334*safezoneH;
};
class infiSTAR_LIST_1501:RscListBoxInfi
{
idc=1501;

x=0.189021*safezoneW+safezoneX;
y=0.0616663*safezoneH+safezoneY;
w=0.344271*safezoneW;
h=0.946*safezoneH;
};
class infiSTAR_BTN_20:RscButtonInfi
{
idc=20;
default="true";

text="MainMenu";
x=0.202083*safezoneW+safezoneX;
y=0.038*safezoneH+safezoneY;
w=0.0625001*safezoneW;
h=0.02*safezoneH;
};
class infiSTAR_BTN_21:RscButtonInfi
{
idc=21;

text="SpawnMenu";
x=0.288021*safezoneW+safezoneX;
y=0.038*safezoneH+safezoneY;
w=0.0625001*safezoneW;
h=0.02*safezoneH;
};
class infiSTAR_BTN_23:RscButtonInfi
{
idc=23;

text="AHLog";
x=0.373958*safezoneW+safezoneX;
y=0.038*safezoneH+safezoneY;
w=0.0625001*safezoneW;
h=0.02*safezoneH;
};
class infiSTAR_BTN_24:RscButtonInfi
{
idc=24;

text="AdminLog";
x=0.459896*safezoneW+safezoneX;
y=0.038*safezoneH+safezoneY;
w=0.0625001*safezoneW;
h=0.02*safezoneH;
};
class infiSTAR_BTN_25:RscButtonInfi
{
idc=25;

text="MapOn/Off";
x=0.763542*safezoneW+safezoneX;
y=0.038*safezoneH+safezoneY;
w=0.0625001*safezoneW;
h=0.02*safezoneH;
};
class infiSTAR_MAP:RscMapControlInfi
{
idc=7;

x=0.533333*safezoneW+safezoneX;
y=0.0616667*safezoneH+safezoneY;
w=0.467709*safezoneW;
h=0.700666*safezoneH;
};
class infiSTAR_EDIT_100:RscEditInfi
{
idc=100;

text="Search";
x=0.196354*safezoneW+safezoneX;
y=0.126*safezoneH+safezoneY;
w=0.326563*safezoneW;
h=0.044*safezoneH;
};
class infiSTAR_BTN_26:RscButtonInfi
{
idc=26;

text="Weapon";
x=0.207813*safezoneW+safezoneX;
y=0.17*safezoneH+safezoneY;
w=0.0458333*safezoneW;
h=0.022*safezoneH;
};
class infiSTAR_BTN_27:RscButtonInfi
{
idc=27;

text="Magazine";
x=0.259375*safezoneW+safezoneX;
y=0.17*safezoneH+safezoneY;
w=0.0458333*safezoneW;
h=0.022*safezoneH;
};
class infiSTAR_BTN_28:RscButtonInfi
{
idc=28;

text="Backpack";
x=0.310938*safezoneW+safezoneX;
y=0.17*safezoneH+safezoneY;
w=0.0458333*safezoneW;
h=0.022*safezoneH;
};
class infiSTAR_BTN_29:RscButtonInfi
{
idc=29;

text="Vest";
x=0.3625*safezoneW+safezoneX;
y=0.17*safezoneH+safezoneY;
w=0.0458333*safezoneW;
h=0.022*safezoneH;
};
class infiSTAR_BTN_30:RscButtonInfi
{
idc=30;

text="Uniform";
x=0.414063*safezoneW+safezoneX;
y=0.17*safezoneH+safezoneY;
w=0.0458333*safezoneW;
h=0.022*safezoneH;
};
class infiSTAR_BTN_31:RscButtonInfi
{
idc=31;

text="Tools";
x=0.465625*safezoneW+safezoneX;
y=0.17*safezoneH+safezoneY;
w=0.0458333*safezoneW;
h=0.022*safezoneH;
};
class infiSTAR_BTN_32:RscButtonInfi
{
idc=32;

text="SpawnMAP";
x=0.545833*safezoneW+safezoneX;
y=0.786*safezoneH+safezoneY;
w=0.06875*safezoneW;
h=0.022*safezoneH;
};
class infiSTAR_BTN_33:RscButtonInfi
{
idc=33;

text="CameraMAP";
x=0.620313*safezoneW+safezoneX;
y=0.786*safezoneH+safezoneY;
w=0.06875*safezoneW;
h=0.022*safezoneH;
};
class infiSTAR_BTN_34:RscButtonInfi
{
idc=34;

text="TargetMAP";
x=0.694792*safezoneW+safezoneX;
y=0.786*safezoneH+safezoneY;
w=0.06875*safezoneW;
h=0.022*safezoneH;
};
class infiSTAR_BTN_35:RscButtonInfi
{
idc=35;

text="Map/PiPFocus";
x=0.665625*safezoneW+safezoneX;
y=0.038*safezoneH+safezoneY;
w=0.0802083*safezoneW;
h=0.0203333*safezoneH;
};
class infiSTAR_BTN_36:RscButtonInfi
{
idc=36;

text="Items";
x=0.219271*safezoneW+safezoneX;
y=0.082*safezoneH+safezoneY;
w=0.0916667*safezoneW;
h=0.033*safezoneH;
};
class infiSTAR_BTN_37:RscButtonInfi
{
idc=37;

text="Vehicles";
x=0.316667*safezoneW+safezoneX;
y=0.082*safezoneH+safezoneY;
w=0.0916667*safezoneW;
h=0.033*safezoneH;
};
class infiSTAR_BTN_38:RscButtonInfi
{
idc=38;

text="Misc";
x=0.414063*safezoneW+safezoneX;
y=0.082*safezoneH+safezoneY;
w=0.0916667*safezoneW;
h=0.033*safezoneH;
};
};