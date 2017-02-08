### Introduction and Files
#### This repository was uploaded to present pertinent files for the "Getting and Cleaning Data Course 
#### Project" as part of the peer-reviewed assessment of the Getting and Cleaning Data course from
#### Johns Hopkins University on Coursera for the Data Science specialization. 
#### Files and Folders in the repository includes:
#### 1. UCI HAR Dataset (folder) with the original files of the data set manipulated by this project
#### 2. CodeBook.md file describing the variables from the resutingMeansSet
#### 3. This README.md file with important observations of the repository, as well as the project
#### 4. resultingMeansSet.txt file containing the resulting data set from the execution of run_analysis
#### 5. run_analysis.R file containing run_analysis scripted function to transform original data into
#### the final set.
#### Full original data set can be downloaded here:
#### https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#### Further information on the original data set and its observations can be garned here:
#### http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Script details
#### run_analysis is a function that takes no parameters and returns a data set containing the average
#### values for mean and std values on the original data set.

#### Firstly, run_analysis will verify if the Samsung Data Set is in the working directory.
#### Then it proceeds to comply with the following steps on the assignment:
#### 1. Merges the training and the test sets to create one data set.
#### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#### 3. Uses descriptive activity names to name the activities in the data set
#### 4. Appropriately labels the data set with descriptive variable names.
#### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each 
#### variable for each activity and each subject.

### Considerations regarding a tidy data set
#### In order to achieve a tidy data set, the following points were considered:
#### 1. Each variable measured should be in one column
#### 2. Each different observation of that varibale should be in a row
#### 3. There should be one table for every kind of variable
#### 4. A key column should be set to link multiple tables

### Columns selected and its names
#### Data considered to be relevant for the final data set includes all mean and standard deviation columns.
#### Column labels for those data were modified from the original to fit some rules of thumb for variable
#### names presented during lecture:
#### 1. All lower case
#### 2. Descriptive
#### 3. Unique
#### 4. No special characters or spaces

### Information provided
#### The final data set provides variables according to the description in the CodeBook.md file. Each row is
#### filled with information of averages of means and standard deviation variables for a given group. Groups
#### contemplated in this data set includes:
#### 1. Every individual subject to the study (from 1 to 30)
#### 2. Every individual activity (laying, sitting, standing, walking, walking downstairs and upstairs)

### Output file and how to read it back into R
#### Script will write the output file resultingMeansSet.txt containing the final data set.
#### You can easily assign it back to a variable in R by executing the table read as follows: 
#### read.table("resultingMeansSet.txt",header = T)
