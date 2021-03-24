function [w1,w0] = regressionModelintercept_1D(data)
% -------------------------------------------------------------------------
% Task 2.3
% This is a function for one diamensional Linear regression Model trained 
% and tested on a mtcars dataset passed from the regression_main
% script.
% Programmed By : Nitha Elizabeth John
% Guided By : Prof.Stefano Rovetta 
% -------------------------------------------------------------------------
[row,col] = size(data) ;
x_bar = sum(data(:,2))/row;
t_bar = sum(data(:,1))/row;

if col == 2 % Checking if the passed data is one diamensional or not
    for i = 1:row
        num(i) = ((data(i,2))-x_bar)*((data(i,1))-t_bar);
        den(i) = (((data(i,2))-x_bar)^2);
        
    end
    w1 = sum(num)/sum(den);
    w0 = t_bar - w1*x_bar;
else
    disp("The given data is not one diamensional.Cannot perform this function");
end

end

