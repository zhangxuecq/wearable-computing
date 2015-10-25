# wearable-computing

## Introduction
This R script uses the data collected from the accelerometers from the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The script loads the test and training data sets, and then merge them to a new data set called data_total. Next, it will extract only the measurements on the mean and standard deviation for each measurement called part_data, and use descriptive activity names to name the activities. Then it labels the data set with descriptive variable names. Finally, it creates a second, independent tidy data set called new_data with the average of each variable for each activity and each subject, and writes the data in file called “tidy new data set.txt” in the working directory.

## How to run the script
* Put the “UCI HAR Dataset” folder in the working directory.
* Put the run_analysis.R in the same working directory.
* Load library dplyr.
* Call source(“run_analysis.R”) in the command line.
