function [output,W] = regressionModel_multiD(data)
% -------------------------------------------------------------------------
% Task 2.4
% This is a function for multi diamensional Linear regression Model built
% on  'mtcars' dataset passed from the regression_main
% script.
% Programmed By : Nitha Elizabeth John
% Guided By : Prof.Stefano Rovetta 
% -------------------------------------------------------------------------
[r,c] = size(data);
x1 = ones(r,1);
x2 = data(:,2:end);
X = [x1 x2];
t = data(:,1);
[row,col]= size(X);
[row_t,col_t]= size(t);

if row==col
    W = (inv(transpose(X)* X)*transpose(X))*t;
else
    W = pinv(X)*t;
end


for i=1:col
    
    Y(:,i) = W(i)*X(:,i);
end
% prediction = W(1)*X(:,1) + W(2)*X(:,2) + W(3)*X(:,3);
prediction=sum(Y,2);
output = [t,prediction];
end
