% taqiuddin
% none
% 024
% 09/26/2023

%------------------------------------------------------
% AUTOGRADER INFO -- IGNORE BUT DO NOT REMOVE
% test_cases: true
% feedback('all')
% 72a7eabf-94c8-4b11-8c2c-751f9693133d
%------------------------------------------------------

function [ rad ] = removeNoise( rad, n )

%removeNoise Removes noise from a matrix of radiation values by
% applying an nxn mean filter three times.
% n: The size of the filter (e.g. if n=3, use a 3x3 filter)
% rad: a matrix of numbers representing the radiation
% measurements from the scanner.
% NOTE: A matrix obtained from a call to the scan_radiation()
% may be used as an input argument when calling this function,
% but you should NOT call scan_radiation() inside of this
% function!

    % take 1/9th of each of the 9 neighboring elements
    fil = ones(n) ./ (n^2);
    %filter it three times
    % replicate is to help the filter functioning at the 
    % edges of the picture
    rad = imfilter(rad, fil, 'replicate');    
    rad = imfilter(rad, fil, 'replicate');
    rad = imfilter(rad, fil, 'replicate');

end

