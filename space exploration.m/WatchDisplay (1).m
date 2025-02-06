% taqiuddin
% none
% 024
% 09/26/2023
%------------------------------------------------------
% AUTOGRADER INFO -- IGNORE BUT DO NOT REMOVE 
% test_cases: true
% feedback('all')
% ee21397f-bbc2-4c9a-9d33-86aaca7dd7c3
%------------------------------------------------------
%   Get radiation data from the scanner using the scan_radiation helper 
%   function and the time returned by the GPS_data helper function

%% Driver program for smartwatch display

%clear and close all variables
clear 
close all

%read image of the dome area
dome = imread('dome_area.jpg');

%get gps data
[r,c,t] = GPS_data();

%get radiation data and use time from gps data
rad = scan_radiation(t);

%remove noise and use filter size 15
rad = removeNoise(rad, 15);

%get zoom offset = z
z = display_settings();

%create local version and crop image
heatMapImg = heatmap(dome, rad);
zonesImg = zones(dome,rad);
iRow = r - z : r + z;
IColumn = c - z : c + z;
cropHeatMap = heatMapImg(iRow,IColumn, :);
cropZone = zonesImg(iRow,IColumn, :);

%save the local version into names as intended in specs
imwrite(cropHeatMap, 'heatmap_local.png');
imwrite(cropZone, 'zones_local.png');






