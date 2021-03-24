% --------------------------------------------------------------------------
% This is a Linear regression Model trained and tested on a stock exchange 
% dataset given in this root folder.
% This model is intended to classify the input into two category based on
% the provided data. The two categories are "CAN PLAY" and "CANNOT PLAY".
% Assumption : Values of one column is not repeated in other
% Programmed By : Nitha Elizabeth John
% Guided By : Prof.Stefano Rovetta 
% --------------------------------------------------------------------------
clc;
clear all;
close all;

% The dataset is loaded and read

Table_1 = readtable('turkishdata.csv');
turkish_data = table2array(Table_1);
[row1,col1] = size(turkish_data) ; 

Table_2 = readtable('mtcarsdata.csv');
Table_2(:,1) = []; %To remove the model names
cars_data = table2array(Table_2);
[row2,col2] = size(cars_data) ; 

% Task 2.1 - Fitting a linear regression model for one-dimensional problem 
% without intercept on the Turkish stock exchange data
disp('-----------------------------------START-----------------------------------');
w_1D = regressionModel_1D(turkish_data);
plotModel(turkish_data,w_1D,0,0,1);

% Task 2.2 - Fitting a linear regression model for one-dimensional problem 
% and comparing graphically the solution obtained on different random 
% subsets (10%) of the whole data set

for i = 1 : 10
    randomdata_turkish = turkish_data(randperm(size(turkish_data, 1)), :);
     % To select 10% of the data
    randomSubset = randomdata_turkish(1:round(row1*0.10),:) ;
    w_random_1D=regressionModel_1D(randomSubset);
    plotModel(randomSubset,w_random_1D,0,0,2);
end

% Task 2.3 - Fitting a linear regression model for one-dimensional problem 
% with intercept on the Motor Trends car data, using columns mpg and weight

cars_1D = cars_data;
% Removing the columns which are not used in this task
cars_1D(:,2) = []; % Removing the columns 2 - "disp"
cars_1D(:,2) = []; % Removing the columns 3 - "hp"
[w_1D_intercept,intercept]=regressionModelintercept_1D(cars_1D);
plotModel(cars_1D,w_1D_intercept,intercept,0,3);

% Task 2.4 - Fitting a linear regression model for multi-dimensional problem 
% on the complete MTcars data, using all four columns 
% (predict mpg with the other three columns)

[output,w_multiD] = regressionModel_multiD(cars_data);
plotModel(cars_data,w_multiD,0,output,4);

% Task 3 - Testing the linear regression models

for i = 1 : 20
% Selecting 7% of the dataset
turkish_subset_train= randomdata_turkish(1:round(row1*0.07),:) ; 
% Selecting the remaining 93% of the dataset for testing
turkish_subset_test = randomdata_turkish(round(row1*0.07)+1:round(row1),:) ;
% Testing the one-dimensional model of task 2.1 
[error1_train(i),error1_test(i)] = testingModel(turkish_subset_train,turkish_subset_test,1);

% Selecting 7% of the dataset
randomdata_cars = cars_data(randperm(size(cars_data,1)), :);
cars_subset_train = randomdata_cars(1:round(row2*0.07),:) ; 
% Selecting the remaining 93% of the dataset for testing
cars_subset_test = randomdata_cars(round(row2*0.07)+1:round(row2),:) ;

% Testing the one-dimensional model with intercept of task 2.3 
[error2_train(i),error2_test(i)] = testingModel(cars_subset_train,cars_subset_test,2);

% Testing the multi-dimensional model of task 2.4 
[error3_train(i),error3_test(i)] = testingModel(cars_subset_train,cars_subset_test,3);

% Plotting the testing error
% figure(6);
% plot((error1_test/10),i,'b*');
% plot((error2_test/10),i,'g*');          % uncomment to see the plot of
% plot((error3_test/10),i,'r*');          % testing error vs iter graph
% title('Testing Error for 3 Models')
% xlabel('Error')
% ylabel('Iterations')
% hold on;

end
disp('-----------------------------------END-----------------------------------');
error_train1 = mean(error1_train);
error_test1 = mean(error1_test);
error_train2 = mean(error2_train);
error_test2 = mean(error2_test);
error_train3 = mean(error3_train);
error_test3 = mean(error3_test);

errors_1 = ["Task 2.1",error_train1,error_test1;"Task 2.3",error_train2,error_test2;"Task 2.4",error_train3,error_test3];
Error_table = array2table(errors_1,...
    'VariableNames',{'Task','Trainng ','Testing'});
disp("The errors computed for coresponding to testing and training of all three models are :");
disp(" ");
disp(Error_table);
