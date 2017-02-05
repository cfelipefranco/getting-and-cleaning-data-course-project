# The resultingMeansSet CodeBook
#
## Content
#### This file contains the description for the variables in the final data set generated from the
#### execution of the run_analysis.R script - here refered to as resultingMeansSet.
##
## Variables
#### Columns in the data set are labeled in a similar way to the one presented on the features.txt 
#### in the UCI HAR Dataset folder describing the original X_test and X_train data sets variables.
#### Changes made to the original names were performed only to comply with the rules of thumb for
#### variable names described in the readme.md file.
#### Orignal variable values vary from -1 to 1. That means average values should also rest in that
#### interval and, therefore, except for the label column, all observations should measure within 
##
## Columns
### Aside from the first column (label), all others were reshaped from its original form to attend
### some rules proposed for variable names. All those columns names are listed below and contains
### the average for every observation in a determined group that is indicated in the label variable.
### 
### Format of columns names brings some important information.
### Each column label (taken from the original set) begins with either "t" or "f", which does not 
### stand for true or false, but rather the domain for the measurement (t indicating the domain of 
### time and f representing the frequency domain). Afterwards, it contains the string that describes
### what the measurement is about (bodyacc, gravityacc, bodygyro and so on). Lastly, there are two
### importante elements: an indication of mean or std that tells if the variable is measuring the
### mean or standard deviation of its purpose and the axis "x", "y" or "z" (if applicable). 
###
### Without further ado, columns names, everybody:
#### label: indicates to which group the averages of means and stds presented in the row refers to
#### tbodyaccmeanx
#### tbodyaccmeany
#### tbodyaccmeanz
#### tbodyaccstdx
#### tbodyaccstdy
#### tbodyaccstdz
#### tgravityaccmeanx
#### tgravityaccmeany
#### tgravityaccmeanz
#### tgravityaccstdx
#### tgravityaccstdy
#### tgravityaccstdz
#### tbodyaccjerkmeanx
#### tbodyaccjerkmeany
#### tbodyaccjerkmeanz
#### tbodyaccjerkstdx
#### tbodyaccjerkstdy
#### tbodyaccjerkstdz
#### tbodygyromeanx
#### tbodygyromeany
#### tbodygyromeanz
#### tbodygyrostdx
#### tbodygyrostdy
#### tbodygyrostdz
#### tbodygyrojerkmeanx
#### tbodygyrojerkmeany
#### tbodygyrojerkmeanz
#### tbodygyrojerkstdx
#### tbodygyrojerkstdy
#### tbodygyrojerkstdz
#### tbodyaccmagmean
#### tbodyaccmagstd
#### tgravityaccmagmean
#### tgravityaccmagstd
#### tbodyaccjerkmagmean
#### tbodyaccjerkmagstd
#### tbodygyromagmean
#### tbodygyromagstd
#### tbodygyrojerkmagmean
#### tbodygyrojerkmagstd
#### fbodyaccmeanx
#### fbodyaccmeany
#### fbodyaccmeanz
#### fbodyaccstdx
#### fbodyaccstdy
#### fbodyaccstdz
#### fbodyaccjerkmeanx
#### fbodyaccjerkmeany
#### fbodyaccjerkmeanz
#### fbodyaccjerkstdx
#### fbodyaccjerkstdy
#### fbodyaccjerkstdz
#### fbodygyromeanx
#### fbodygyromeany
#### fbodygyromeanz
#### fbodygyrostdx
#### fbodygyrostdy
#### fbodygyrostdz
#### fbodyaccmagmean
#### fbodyaccmagstd
#### fbodyaccjerkmagmean
#### fbodyaccjerkmagstd
#### fbodygyromagmean
#### fbodygyromagstd
#### fbodygyrojerkmagmean
#### fbodygyrojerkmagstd
