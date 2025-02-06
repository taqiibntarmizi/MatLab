% taqiuddin
% none
% 024
% 09/26/2023

%------------------------------------------------------
% AUTOGRADER INFO -- IGNORE BUT DO NOT REMOVE 
% test_cases: true
% feedback('all')
% 501e1824-fc6c-48ef-92c2-526373f7193e
%------------------------------------------------------

function [ hasTumor ] = detectTumor( brain )
    %detectTumor Returns whether or not a tumor was found in the image.
    %     brain: a matrix of numbers representing a grayscale image of a 
    %            brain scan. Bright areas may be tumors and need to
    %            be flagged for further testing.
    %            To get test data for this function, you may call the
    %            provided scan_brain() function and pass the value it
    %            returns into this function. However, DO NOT call
    %            scan_brain() in the code for this function itself.

    % TODO your code here
    
    %NumSpots gets you the total number of spots thats more tham 0.8
    %if more than 1200, tumor exist
    NumSpots = sum(sum(brain > 0.8));
    hasTumor = NumSpots > 1200;
    
end

