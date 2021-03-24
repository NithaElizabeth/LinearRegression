function [outputArg1,outputArg2] = plotModel(data,w1,w0,out,task)
% --------------------------------------------------------------------------
% This is a function that created the plots for various tasks throughout
% this project
% Programmed By : Nitha Elizabeth John
% Guided By : Prof.Stefano Rovetta 
% --------------------------------------------------------------------------
if task == 1
    
    figure(task);
    plot(data(:,1), data(:,2),'bx');
    hold on
    plot(data(:,1), w1 * data(:,1)+ w0, '-','LineWidth',2);
    title('One-dimensional Linear regression')
    xlabel('Standard and Poors 500 return Index')
    ylabel('MSCI Europe Index')
    hold on
elseif task == 2
    figure(task);
    plot(data(:,1), data(:,2),'x');
    hold on
    plot(data(:,1), w1 * data(:,1) + w0, '-','LineWidth',2);
    title('One-dimensional Linear regression on different random subsets (10%) of the whole data set for multiple times')
    xlabel('Standard and Poors 500 return Index')
    ylabel('MSCI Europe Index')
    hold on ;
elseif task == 3
    figure(task);
    plot(data(:,2), data(:,1),'bx');
    hold on
    plot(data(:,2), w1 * data(:,2)+ w0, '-','LineWidth',2);
    title('One-dimensional Linear regression for MT Cars')
    xlabel('Cars weight (lbs/1000)')
    ylabel('Fuel Efficiency (mpg)')
    hold on
elseif task == 4
    output = out;
    T = array2table(output,...
    'VariableNames',{'mpg','Predicted mpg'});
    disp("The desired and actual output of Multi-diamensional Linear Regression Model :");
    disp(" ");
    disp(T);
    
    % To plot the desired and actual outputs
    figure(task);
    plot(out(:,1),'b--','LineWidth',1);
    hold on;
    
    plot(out(:,2),'r--','LineWidth',1);
    hold off;
    legend('Target','Prediction')
    title('Targeted and Predicted Output of Multi-dimensional Linear regression');
  
    
end
    
end

