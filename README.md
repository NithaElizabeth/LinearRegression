# LinearRegression
Linear Regression is a statistical supervised learning technique to predict the quantitative variable by forming a linear relationship with one or more independent features.It calculates the value of a dependent variable from an independent variable and measures the association between these variables. Linear regression method is the most widely used in statistical and machine learning techniques.This project uses machine learning system for stock market prediction and and a motor trend data which explores the relationship between a set of variables and miles per gallon(mpg). In this project, it summarizes the method in which different types of Linear Regression models were build using MATLAB on the above mentioned datasets.
## Project in Brief
The aim of this project is to build linear regression model for different scenarios like:
* One-dimensional problem without intercept
* One-dimensional problem with intercept
* Multi-dimensional problem

For the first experiment Turkish stock exchange data is used in which the data organized with regard to working days in Istanbul Stock Exchange.For the next two experiments MT cars data issued which describes the model using a set of variables like displacement, weight, power and miles per gallon(mpg). One dimensional linear regression problem is simple linear regression which helps to find the linear relationship between two continuous variables, one independent and one dependent feature.
## Result
The regressionModel_1D(data) function will fit a linear regression model for 1D problem and it returns the slope. From the main script, this slope is then passed to the plotModel(data,w1,w0,out,task) function along with other values like values for intercept(here = 0), out(this value remains 0 for all cases other than task 2.4) and task(here =1). This function is used for plotting the 1D linear regression model with the computed slope and is shown in Figure below.

![1](https://user-images.githubusercontent.com/47361086/112375161-68090180-8cfc-11eb-8aef-4818d81b6851.PNG)

The main script compares graphically the solution obtained for 1D model, on different random subsets (10%) of the whole data set.The model is again plotted using the plotModel(data,w1,w0,out,task) function.This is depicted in the following Figure.

![2](https://user-images.githubusercontent.com/47361086/112375178-6b03f200-8cfc-11eb-8e69-0aae01173065.PNG)

The main script then invokes the function for fitting a 1D model with intercept.This is performed on the MT cars data. At this task, the columns other than "mpg" and "weight" is neglected to create a 1D dataset.After preparing the data, it passed to the function regressionModelintercept_1D(data) which fits the model and returns the slope and intercept to the main script. Plotting for "mpg" as y ad "weight" as x is done using plotModel(data,w1,w0,out,task) function. This plot is shown in the next Figure.

![3](https://user-images.githubusercontent.com/47361086/112375180-6c351f00-8cfc-11eb-8515-b9fd238a5d27.PNG)

The desired valued is compared with the actual value and they are both plotted as shown in Figure given below. (The targeted and predicted outputs are plotted in dotted lines for the purpose of comparison). This plot depicts the fitted linear regression model for Multi-Dimensional problem.The blue shows the desired output and red shows the predicted output.

![4](https://user-images.githubusercontent.com/47361086/112375194-70613c80-8cfc-11eb-9b45-0a76f0e08261.PNG)

## Installation and Running Procedure
This program requires a working MATLAB installation.
To run this program clone this repository into your workspace
```
git clone https://github.com/NithaElizabeth/LinearRegression
```
## Author
The system was developed by Nitha Elizabeth John as a part of academic curriculam of EMARO.\
Author  : Nitha Elizabeth John\
Contact : nithaelizabethjohn@gmail.com
