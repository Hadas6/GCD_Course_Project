# GCD_Course_Project

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 
Submitted for this project: 
1) a tidy data set tidyData.txt 
2) a link to this Github repository with R script for performing the analysis
3) a code book called CodeBook.md that describes the variables, the data, and any transformations or work that was performed to clean up the data. 
4) This README.md file explaining how the script works.  

Overview:
---------
To figure out how the script should work i looked at the data.
The data source:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiment:
---------------
The experiments have been carried out with a group of 30 volunteers. 
Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, the team captured 3-axial linear acceleration and 3-axial angular velocity. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The dataset:
------------
Each record in the dataset has: 
- Triaxial (X, Y, Z) acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial (X, Y, Z) Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- An activity label. 
- An identifier of the subject who carried out the experiment.

Work done for this project:
---------------------------
A code book called CodeBook.md describes the variables, the data, and any transformations or work that was performed to clean up the data.

The required assignment scope:
------------------------------
Create one R script called run_analysis.R that does the following: 
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
These steps are clearly labeled and explained in the run_analysis.R script submitted for this project.


