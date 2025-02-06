% taqiuddin
% none
% 024
% 09/26/2023
%------------------------------------------------------
% AUTOGRADER INFO -- IGNORE BUT DO NOT REMOVE 
% test_cases: true
% feedback('all')
% 6c26a5aa-cdd9-4698-b802-b82bb8db8a25
%------------------------------------------------------

function [ img ] = heatmap( dome, rad )

    %heatmap Generates a heatmap image by using values from rad to set
    %  values in the hue channel for img. Hue values vary smoothly
    %  depending on the corresponding radiation level
    %     img: a 3-dimensional matrix of numbers representing an image in
    %          RGB (red-green-blue) format, which forms the background
    %          to which the heatmap colors are applied.
    %     rad: a matrix of numbers representing the radiation
    %          measurements, between 0 and 100 millisieverts.
    %          It is has the same width and height as the img parameter.

    % TODO your code here

    %convert rgb image to hsv first
    dome = rgb2hsv(dome);

    %set the hue and sat based on specs
    hue = 0.7 - 0.7 .* (rad ./ 100);
    sat = 1;

    %put the value back into the hue and sat layer
    dome(:, :, 1) = hue;
    dome(:, :, 2) = sat;

    %convert back to rgb show that matlab can see the image
    img = hsv2rgb(dome);

end


   
