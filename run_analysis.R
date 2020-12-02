#Getting and Cleaning Data Course Project

#Step 0. Load required packages - dplyr & data.table

install.packages("dpylr")
library(dplyr)

install.packages("data.table")
library(data.table)

#Step 1. Get the data

#Step 1a. Download dataset
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

#Step 1b. Unzip dataset file
unzip(zipfile="./data/Dataset.zip",exdir="./data")

#Step 1c. Organise data set into file
path_rf <- file.path("./data" , "UCI HAR Dataset")

#Step 1d. Get file list
files<-list.files(path_rf, recursive=TRUE)
files

#Step 2a. Decide on descriptive variable names for data in data frame: Activity, Subject and Features

#Step 2b. Read data into variables
#Read Activity files 
dataActivityTest <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)
#Read Subject files
dataSubjectTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
dataSubjectTest <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)
#Read Features files
dataFeaturesTest <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)

#Step 2c. Look at properties of variables
str(dataActivityTest)
str(dataActivityTrain)
str(dataSubjectTrain)
str(dataSubjectTest)
str(dataFeaturesTest)
str(dataFeaturesTrain)

#Step 3. Merge training and test sets into one data set

#Step 3a.Concatenate data tables by rows
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity <- rbind(dataActivityTrain, dataActivityTest)
dataFeatures <- rbind(dataFeaturesTrain, dataFeaturesTest)

#Step 3b. Set variable names
names(dataSubject)<- c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2

#Step 3c. Merge columns
dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataCombine)

#Step 4. Extracts mean and standard deviation for each measurement

#Step 4a. Subset name of mean and standard deviation
subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]

#Step 4b. Subset the data frame Data by seleted names
selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)

#Step 4c. Check dataframe structure
str(Data)

# Step 5. Appropriately label data set with variable name

names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

names(Data)

# Step 6. Create second independent tidy data set 

Data2<- aggregate(. ~subject + activity, Data, mean)
Data2<- Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "tidydata.txt",row.name=FALSE)