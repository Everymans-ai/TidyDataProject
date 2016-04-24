
# To Initiate the Project


Download data from provided links to online sources.  
Unzip to a R directory.



# Write the R script to solve the stated problem: 
The "analysis.R" file executes the five steps stated in the problem. 

- Merging the training the test sets to create one data set.

- Reading files

- Assigning names to columns

- Merging all data in one set

- Extracting only the measurements on the mean and standard deviation for each measurement

- Reading column names

- Create vector for defining names, mean and standard deviation

- Subsetting for all merged data

- Using descriptive activity names to name the activities in the data set

- Properly labeling the data set with descriptive variable names

- Making second tidy data set

- Writing second tidy data set in txt file



# The variables that were used in the script: 

trainX, trainy, testX, testy, trainD and testD are the provided data which were into the dplyr dataframe using the tbl_df function.
 Those then generated a new set of data variables as are presented in the code. The data were then merged to produce a single data frame for analysis.



# Packages Installed: 
 tidyr & dplyr






Wearable Computing Tidy Data Set Assignment - George Polzer, YourBizzWizz
READ ME:
Introduction

This repository encloses the Getting and Cleaning Data Course Project. The purpose of this project is to collect, work with, and clean a dataset.

Data from the accelerometers from the Samsung Galaxy S smartphone are used in this project. A full description of these data is available at the following url: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones;

and the dataset itself can be downloaded through this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Assignment

In accordance with the assignment, the R script, run_analysis.R, does the following:

Downloads the dataset if not present in the working directory.
Loads the list of activities performed by the subjects as well as the list of features selected for this dataset.
Loads the test and training datasets, keeping only the columns associated to the mean and standard deviation of each variable.
Loads the activities and subjects associated to each data set and column-binds them to the corresponding dataset.
Merges the two datasets.
Appropriately labels the dataset with descriptive variable names.
Creates a second tidy dataset enclosing the average value of eache variable for each subject and activity pair.
Store the second tidy dataset in tidy_dataset.txt.
Code Book

A code book that describes the data fields in tidy_dataset.txt can be be found in CodeBook.md.

----------------------
CODE BOOK SAMPLE
It's very similar to a Statistical Analysis Plan, actually.

Setup, there is a dogwalking business. It wants to analyze its work.

Raw data is: name of dog, address of owner, time walked, date walked, size of dog (small, medium, or large), health of dog (well or sick) on that date and time, comments, and pay.

The business wants to assign ID# to the dogs, and codewords to the address to make this data anonymous. There isn't anything to do to the comments--since free text is all over the place.

Codebook: The dog's name was transformed into an IDNumber (unique) (1-50), the address was transformed into a factor, OwnerName (levels Alice, Bob, Charlie, Deborah, Ernest and Fred), time and date walked were counted to make WalksPerWeek1, WalksPerWeek2, and WalksPerWeek3. Week1 begins at 00:01UTC on July1, 2014, Week2 begins at 00:01UTC on July8, 2014, Week3 begins at 00:01UTC on July15, 2014. Health was summarized as HealthWeek1, HealthWeek2, and HealthWeek3. It is a factor with two levels, Well and Sick. If the dog was sick at any walk during that week, dog was marked sick, else dog was marked well. Dog Size was converted into a factor: Large, Medium and Small are the levels. Comments are dropped. Pay is transformed into PayWeek1, PayWeek2, PayWeek3, which is a factor that has two levels (Yes, and No) for correct pay paid during that week.
------
Code Book
The data fields in tidy_dataset are listed below. There are 81 variables.

Identifiers

subject: subject who performed the activity. Its range is from 1 to 30.
activity: the activity name when the measurement was taken. There are 6 different type of activites that a subject can perform: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.
Measurements

These measurements are performed by the accelerometer and gyroscope of the Samsung Galaxy S smartphone. The subjects wear the device on the waist while performing their activities.

tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccMeanFreqX
fBodyAccMeanFreqY
fBodyAccMeanFreqZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX
fBodyAccJerkMeanFreqY
fBodyAccJerkMeanFreqZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyGyroMeanFreqX
fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ
fBodyAccMagMean
fBodyAccMagStd
fBodyAccMagMeanFreq
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd
fBodyBodyAccJerkMagMeanFreq
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq

================================
# To Initiate the Project

Download data from provided links to online sources.  Unzip to a R directory.


# Write the R script to solve the stated problem: 

The "analysis.R" file executes the five steps stated in the problem. 
- Merging the training the test sets to create one data set.

- Reading files

- Assigning names to columns

- Merging all data in one set

- Extracting only the measurements on the mean and standard deviation for each measurement

- Reading column names

- Create vector for defining names, mean and standard deviation

- Subsetting for all merged data

- Using descriptive activity names to name the activities in the data set

- Properly labeling the data set with descriptive variable names
Making second tidy data set

- Writing second tidy data set in txt file



# The variables that were used in the script: 

trainX, trainy, testX, testy, trainD and testD are the provided data which were into the dplyr dataframe using the tbl_df function.
 Those then generated a new set of data variables as are presented in the code. The data were then merged to produce a single data frame for analysis.

# Packages
 Installed: 
 tidyr & dplyr

===================================
setwd(choose.dir()) #select a directory

#Step 1 - Merge training and test data sets
#combine train and test data
#combine train and test labels
#combine train and test subjects

#Step 2 - Extract only the data on mean and standard deviation
#looks for mean() or std() in column V2
#grabs the names where a match was found
#subsets the data with only the needed columns
# remove "()"
# capitalize M
# capitalize S

# Step3. Uses descriptive activity names to name the activities in the data set
# update values with correct activity names
# correct column name

# Step 4 - Appropriately label the data set with descriptive variable names
# correct column name
# bind all the data in a single data set
# write out the 1st dataset

# Step5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 





rsconnect::setAccountInfo(name='georgepolzer', token='6169D98551664CA1FD00BD448F19F011', secret='GD0HZtXe34fmHYIx7lA1G/cElvlUpgfUjUtQfPfD')


MPG Interactive Chart Project - George Polzer, YourBizzWizz

https://georgepolzer.shinyapps.io/MPG_Interactive_Graph/
http://YourBizzWizz.github.io/YourBizzWizz.github.io
http://rpubs.com/YourBizzWizz/174753

"c:/Rtools/APP"
publish(title = 'MPGslides', 'index.html', host = 'rpubs')

C:\Users\Owner\Desktop\Assignment Desktop\Developing Data Products Project\Developing_Data_Products-master\Developing_Data_Products-master

C:\Users\Owner\Google Drive\___Coursera\Data Science\Assignments\Developing Data Products Project\Developing_Data_Products-master\Developing_Data_Products-master\Course Project