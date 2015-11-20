Getting and Cleaning Data - Course Project
===========

### Code Book:
This file documents the changes made in the Human Recognition Using SmartPhones Data Set [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]  
by the run_anaylis.R script.

### Description:
Detailed information abaout the data set can be found in the file  
**README.txt** in the folder **Info**.

The run_analysis.R script used the files:
* train_X.txt: contains the measurements, where each columns correspond to a different variable
* train_y.txt: contains the activity id for each measurement
* test_X.txt: same as train_X.txt but with different measurements
* test_y.txt: same as train_y.txt but with different measurements
* features.txt: contains the column names of the train_X.txt and test_X.txt files
* activity_labels.txt: contains the name corresponding to each activity id.  


### Steps:
1. Merge the train_X.txt and train_y.txt by columns
2. Merge the test_X.txt and test_y.txt by columns
3. Merge the results of steps **1.** and **2.** by rows
4. Load the features_names.txt file containing the columns names of the train_X.txt  
and test_y.txt files
5. Extract the columns containing the mean and the standard deviation of the measurements  
and the activity ids
6. Append a new column to the resulting data frame containing the names of each activity,  
as described in the activity_labels.txt file
7. Create a new data frame by grouping the Activity Names and removing the activity id
8. Create a table with the new data frame containing the mean of each measurement  
for each activity name.
