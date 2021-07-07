# GettingAndCleaningData, course project

## This repo inludes the following files:
* README.md
* run_analysis.R
* CodeBook.md

## Raw data for run_analysis.R
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the raw data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## How to run run_analysis.R
Download the raw data and run the code n run_analysis.R under the same directory.

## Contents of run_analysis.R
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Output of run_analysis.R 
The independent tidy data set in step-5 will be saved as a text file named MeanByGroups.txt under the same directory.

## CodeBook.md
CodeBook.md describes the variables, the data, and any transformations or work that run_analysis.R performed to clean up the data
