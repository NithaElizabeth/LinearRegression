function [w] = regressionModel_1D(data)
% --------------------------------------------------------------------------
% Task 2.1
% This is a function for one diamensional Linear regression Model trained 
% and tested on a stock exchange dataset passed from the regression_main
% script.
% Programmed By : Nitha Elizabeth John
% Guided By : Prof.Stefano Rovetta 
% --------------------------------------------------------------------------
[row,col] = size(data) ;
if col == 2 % Checking if the passed data is one diamensional or not
    for i = 1:row
        A1(i) = (data(i,1)*data(i,2));
        A2(i) = (data(i,1)^2);
    end
    w = sum(A1)/sum(A2);
else
    disp("The give data is not one diamensional");
    w=0;
end

end



