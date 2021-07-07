# Title: Getting and cleaning data
# Name: ZQ S
# Date: 2021-07-06

# packages
library(dplyr)

# 1 Merges the training and the test sets to create one data set.
# read y_train.txt, rename, add a 'tag' column
train_y<-read.table('./UCI HAR Dataset/train/y_train.txt');dim(train_y)
names(train_y)<-'activity'
head(train_y)
# read X_train.txt
train_x<-read.table('./UCI HAR Dataset/train/X_train.txt');dim(train_x)
# rename by features.txt, add the seq number to avoid errors caused by duplicate names
features<-read.table('./UCI HAR Dataset/features.txt');dim(features)
names(train_x)<-paste(features[,1],features[,2],sep='-');names(train_x)
# combine y_train.txt,X_train.txt
train<-cbind(train_y,train_x);dim(train)
head(train[,1:6])
# read y_test.txt, add a 'tag' column
test_y<-read.table('./UCI HAR Dataset/test/y_test.txt');dim(test_y)
names(test_y)<-'activity'
head(test_y)
# read X_test.txt, rename by features.txt
test_x<-read.table('./UCI HAR Dataset/test/X_test.txt');dim(test_x)
names(test_x)<-paste(features[,1],features[,2],sep='-');names(test_x)
# combine y_train.txt,X_train.txt
test<-cbind(test_y,test_x);dim(test)
head(test[,1:6])
# combine dataset: train and test
df<-tbl_df(rbind(train,test));df

# 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
colName<-paste(features[,1],features[,2],sep='-')
colMeanSD<-colName[grep('(mean|std)\\(',colName)]
df1<-select(df,activity,colMeanSD);dim(df1)

# 3 Uses descriptive activity names to name the activities in the data set
activityLabels<-read.table('./UCI HAR Dataset/activity_labels.txt')
df1<-mutate(df1,activity=as.factor(activity))
levels(df1$activity)<-activityLabels[,2]

# 4 Appropriately labels the data set with descriptive variable names. 
oldname<-names(df1)
newname<-seq()
for (i in 1:length(oldname)){newname[i]<-sub('^[0-9]+-','',oldname[i])}
names(df1)<-newname

# 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
df2<-df1 %>% group_by(activity) %>% summarise_all(mean)
names(df2)[-(1:2)]<-paste(names(df2)[-(1:2)],'mean',sep='_')
write.table(df2,'./UCI HAR Dataset/MeanByGroups.txt',row.name=FALSE,quote=FALSE)
