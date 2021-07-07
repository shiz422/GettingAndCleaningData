## Raw data
Here are the raw data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## run_analysis.R does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## MeanByGroups.txt
MeanByGroups.txt is the output of the run_analysis.R, which summarized the average of each variable for each activity,
e.g. tBodyAcc-mean()-X_mean indicates the mean of tBodyAcc-mean()-X from the raw data:
tBodyAcc-mean()-X_mean
tBodyAcc-mean()-Y_mean
tBodyAcc-mean()-Z_mean
tBodyAcc-std()-X_mean
tBodyAcc-std()-Y_mean
tBodyAcc-std()-Z_mean
tGravityAcc-mean()-X_mean
tGravityAcc-mean()-Y_mean
tGravityAcc-mean()-Z_mean
tGravityAcc-std()-X_mean
tGravityAcc-std()-Y_mean
tGravityAcc-std()-Z_mean
tBodyAccJerk-mean()-X_mean
tBodyAccJerk-mean()-Y_mean
tBodyAccJerk-mean()-Z_mean
tBodyAccJerk-std()-X_mean
tBodyAccJerk-std()-Y_mean
tBodyAccJerk-std()-Z_mean
tBodyGyro-mean()-X_mean
tBodyGyro-mean()-Y_mean
tBodyGyro-mean()-Z_mean
tBodyGyro-std()-X_mean
tBodyGyro-std()-Y_mean
tBodyGyro-std()-Z_mean
tBodyGyroJerk-mean()-X_mean
tBodyGyroJerk-mean()-Y_mean
tBodyGyroJerk-mean()-Z_mean
tBodyGyroJerk-std()-X_mean
tBodyGyroJerk-std()-Y_mean
tBodyGyroJerk-std()-Z_mean
tBodyAccMag-mean()_mean
tBodyAccMag-std()_mean
tGravityAccMag-mean()_mean
tGravityAccMag-std()_mean
tBodyAccJerkMag-mean()_mean
tBodyAccJerkMag-std()_mean
tBodyGyroMag-mean()_mean
tBodyGyroMag-std()_mean
tBodyGyroJerkMag-mean()_mean
tBodyGyroJerkMag-std()_mean
fBodyAcc-mean()-X_mean
fBodyAcc-mean()-Y_mean
fBodyAcc-mean()-Z_mean
fBodyAcc-std()-X_mean
fBodyAcc-std()-Y_mean
fBodyAcc-std()-Z_mean
fBodyAccJerk-mean()-X_mean
fBodyAccJerk-mean()-Y_mean
fBodyAccJerk-mean()-Z_mean
fBodyAccJerk-std()-X_mean
fBodyAccJerk-std()-Y_mean
fBodyAccJerk-std()-Z_mean
fBodyGyro-mean()-X_mean
fBodyGyro-mean()-Y_mean
fBodyGyro-mean()-Z_mean
fBodyGyro-std()-X_mean
fBodyGyro-std()-Y_mean
fBodyGyro-std()-Z_mean
fBodyAccMag-mean()_mean
fBodyAccMag-std()_mean
fBodyBodyAccJerkMag-mean()_mean
fBodyBodyAccJerkMag-std()_mean
fBodyBodyGyroMag-mean()_mean
fBodyBodyGyroMag-std()_mean
fBodyBodyGyroJerkMag-mean()_mean
fBodyBodyGyroJerkMag-std()_mean
