% taqiuddin
% none
% 024
% 09/26/2023

%------------------------------------------------------
% AUTOGRADER INFO -- IGNORE BUT DO NOT REMOVE 
% test_cases: true
% feedback('all')
% e8ae6568-5afc-488d-9b37-89499d729583
%------------------------------------------------------

function [ img ] = zones( dome, rad )
    %zones Generates an image colored according to radiation threat 
    %  zones. Values from rad are used to determine the zone, and the hue
    %  value in img is set accordingly.
    %     img: a 3-dimensional matrix of numbers representing an image in
    %          RGB (red-green-blue) format, which forms the background for
    %          to which the heatmap colors are applied.
    %     rad: a matrix of numbers representing the radiation
    %          measurements, between 0 and 100 millisieverts.
    %          It is has the same width and height as the img parameter.

    %convert rgb to hsv
    dome = rgb2hsv(dome);
    
    %bring out the hue channel to change it accordingly to the specs
    %set all sat to 1
    hue = dome(:, :, 1);
    sat = 1;
  
    hue(rad >= 0 & rad < 20) = 0.6;
    hue(rad >= 20 & rad < 50) = 0.4;
    hue(rad >= 50 & rad < 70) = 0.2;
    hue(rad >= 70 & rad < 90) = 0.1;
    hue(rad >= 90 ) = 0;
    
    %put the adjusted layer back 
    dome(:, :, 1) = hue;
    dome(:, :, 2) = sat;

    %convert it back to rgb
    img = hsv2rgb(dome);
  
end

