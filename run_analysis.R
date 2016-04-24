setwd(choose.dir()) #select a directory

filename <- "getdata_dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, filename, method="auto")
unzip(filename) 

#Step 1 - Merge training and test data sets
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
testLabel <- read.table("./UCI HAR Dataset/test/y_test.txt") 
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

Data <- rbind.data.frame(trainData, testData) #combine train and test data
Label <- rbind.data.frame(trainLabel, testLabel) #combine train and test labels
Subject <- rbind.data.frame(trainSubject, testSubject) #combine train and test subjects

#Step 2 - Extract only the data on mean and standard deviation
features <- read.table("./UCI HAR Dataset/features.txt")

mean_and_std <- grep("mean\\(\\)|std\\(\\)", features$V2) #looks for mean() or std() in column V2
mean_and_std_with_names <- features[mean_and_std,2] #grabs the names where a match was found
Data <- Data[,mean_and_std] #subsets the data with only the needed columns
names(Data) <- gsub("\\(\\)", "", features[mean_and_std, 2]) # remove "()"
names(Data) <- gsub("mean", "Mean", names(Data)) # capitalize M
names(Data) <- gsub("std", "Std", names(Data)) # capitalize S

# Step3. Uses descriptive activity names to name the activities in the data set
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

Label[, 1] <- activity[Label[, 1], 2] # update values with correct activity names

names(Label) <- "activity" # correct column name

# Step 4 - Appropriately label the data set with descriptive variable names
names(Subject) <- "subject" # correct column name
final_data <- cbind.data.frame(Subject, Label, Data) # bind all the data in a single data set
write.table(final_data, "merged_data.txt") # write out the 1st dataset

# Step5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
final_data_with_means<-aggregate(. ~subject + activity, final_data, mean)
write.table(final_data_with_means, "averages_data.txt", row.name=FALSE)
