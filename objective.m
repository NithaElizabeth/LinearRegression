function [error] = objective(data,w1,w0,task)
% --------------------------------------------------------------------------
% Task 3.2
% This is a function that calclates the mean square error for 1D models and
% root mean square errors for Multi diamensional models
% Programmed By : Nitha Elizabeth John
% Guided By : Prof.Stefano Rovetta 
% --------------------------------------------------------------------------
[row,col]= size(data);
if task == 1
    y = w1 * data(:,1);
    for i = 1: row
        e(i) = (data(i,2)- y(i))^2;
    end
    error = sum(e)/row;
    
elseif task == 2
    y = w1 * data(:,2)+w0;
    for i = 1: row
        e(i) = (data(i,1)- y(i))^2;
    end
    error = sum(e)/row;
    
elseif task == 3
    [r,c] = size(data);
    x1 = ones(r,1);
    x2 = data(:,2:end);
    X = [x1 x2];
%     X = data(:,2:end);
    t = data(:,1);
    y = (X * w1);
%     error = immse(y,t);
    error = sqrt(mean((y - t).^2));

end
    
end

