# Code Book for UCI HAR Dataset

Data source:
------------
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Provided Dataset:
-----------------
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The dataset high level description:
-----------------------------------
Each record in the dataset has: 
- Triaxial (X, Y, Z) acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial (X, Y, Z) Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- An activity label. 
- An identifier of the subject who carried out the experiment.

The process of cleaning the data and creating the tidy data set:
----------------------------------------------------------------

**STEP 1: Merges the training and the test sets to create one data set.

read measurements of test and train data sets: 
test/X_test.txt and train/X_train.txt

read the features that are the column names for the above
features.txt

assign the features to column names as descriptive variable names

read the y vectors that include the activity number for each observation
test/y_test.txt and y_train.txt

read the subject vectors that include the subject number for each observation
test/subject_test.txt and subject_train.txt

bind the subject's number and the Activity number to the measurement data

assign descriptive variable names to the bound columns

combine test and train data set into one


**STEP 2: Extracts only the measurements on the mean and standard deviation

find the column index for variable containing "mean" or "std" in their tag

keep only the subject, activity, and mean / std columns


**STEP 3: Uses descriptive activity names in the dataset

read the activities labels activity_labels.txt

cut the activiy numeric vector to 6 intervals and assign each its label in order


**STEP 4: Appropriately labels the data set with descriptive variable names

already done in step 1 above


**STEP 5: creates a tidy data set with the average of each variable  for each activity and each subject

melt the data set so each row has a combination of: subject, activity,  a variable, and a measurement

tidy the melted data so each row shows subject, activity name, variable, and the average of measurements for this combination.

write the tidyData.txt file to disk.




