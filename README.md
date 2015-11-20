
Getting and Cleaning Data - Course Project
===========

This folder contains all the necessary files
to execute the following tasks:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Set descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set  
with the average of each variable for each activity and each subject.

### Folder Contents:

The R script **run_analysis.R** performs all the operations assuming that  
the data set is in the same directory.

It is also necessary to install the package 'dplyr'

The **CodeBook** lists all the steps present in the script and describes the  
data set.

The script takes no input argument and outputs the file:

* tidy_data.txt

Organized as in step **5.**
