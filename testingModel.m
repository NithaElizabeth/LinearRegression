function [train_error,test_error] = testingModel(train,test,task)
% --------------------------------------------------------------------------
% Task 3
% This is a function performing the test for 3 models.This function calls
% the objective function to calculate the error
% Programmed By : Nitha Elizabeth John
% Guided By : Prof.Stefano Rovetta 
% --------------------------------------------------------------------------

if task == 1
    w_new = regressionModel_1D(train);
    train_error = objective(train,w_new,0,1);
    test_error = objective(test,w_new,0,1);
    
elseif task == 2
    cars_subset1D = train;
    cars_subset1D(:,2) = [];
    cars_subset1D(:,2) = [];
    
    cars_subset1D_test = test;
    cars_subset1D_test(:,2) = [];
    cars_subset1D_test(:,2) = [];
    [slope_2_new,intercept_new]=regressionModelintercept_1D(cars_subset1D);
    train_error = objective(cars_subset1D,slope_2_new,intercept_new,2);
    test_error = objective(cars_subset1D_test,slope_2_new,intercept_new,2);

elseif task ==3
    [out,w_multi_new] = regressionModel_multiD(train);
    train_error = objective(train,w_multi_new,0,3);
    test_error = objective(test,w_multi_new,0,3);
end

end

