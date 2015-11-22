Getting and Cleaning Data - Course Project
===========

### Code Book:
This file documents the changes made in the Human Recognition Using SmartPhones Data Set [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]  
by the run_anaylis.R script.

### Description:
Detailed information about the data set can be found in the previous link.
Essentially, the raw data set consists of many smart phone measurements from  
positioning variables, e.g. angular speed and body accelerations at the X, Y or Z axis  
in order to determine the activity, e.g. walking and sitting, someone is doing.

The run_analysis.R script used the files:
* train_X.txt: contains the measurements, where each columns correspond to a different variable
* train_y.txt: contains the activity id for each measurement
* test_X.txt: same as train_X.txt but with different measurements
* test_y.txt: same as train_y.txt but with different measurements
* features.txt: contains the column names of the train_X.txt and test_X.txt files
* activity_labels.txt: contains the name corresponding to each activity id.  

The script manipulates the mean and standard deviation of the following variables  
from the original data set:
* The body linear acceleration and angular velocity were derived in time to obtain Jerk signals:  
(TimeDomainBodyAccelerationJerkXYZ and TimeDomainBodyGyroscopeJerkXYZ).
* Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm
(TimeDomainBodyAccelerationMagnitude, TimeDoaminGravityAccelerationMagnitude,  
TimeDomainBodyAccelerationJerkMagnitude, TimeDomainBodyGyroscopeMagnitude,  
TimeDomainBodyGyroscopeJerkMagnitude).
* Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing:
FrequencyDomainBodyAccelerationXYZ, FrequencyDomainBodyAccelerationXYZ,  
FrequencyDomainBodyGyroXYZ, FrequencyDomainBodyAccelerationJerkMagnitude,
FrequencyDomainBodyGyroscopeMagnitude, FrequencyDomainBodyGyroscopeJerkMagnitude
* The signals which have a 'XYZ' pattern at the end of their names  
were used to denote 3-axial signals in the X, Y and Z directions.
* Many parameters of these signals were estimated in the raw data, in this project  
only the Mean and StandarDeviation were used.
* The analysis merges the ActivityId and the ActivityName, presented in the  
y.txt and activity_labels.txt files from the raw data set, with the described signals.


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
