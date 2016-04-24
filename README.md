# TidyDataProject Introduction
The purpose of this project is to effectively collect, work with, and clean a dataset.

Data from the accelerometers from the Samsung Galaxy S smartphone are used. A complete description of accelerometer data is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones;

To downloaded the dataset itselfthrough: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Assignment

The associated R script, run_analysis.R, does the following:

setwd(choose.dir()) SELECTS A DIRECTORY

-  Step 1   Merge training and test data sets
  combine train and test data
  combine train and test labels
  combine train and test subjects

-  Step 2   Extract only the data on mean and standard deviation l
  looks for mean() or std() in column V2
  grabs the names where a match was found
  subsets the data with only the needed columns
   remove "()"
   capitalize M
   capitalize S

-   Step3. Uses descriptive activity names to name the activities in the data set
   update values with correct activity names
   correct column name

-   Step 4   Appropriately label the data set with descriptive variable names
   correct column name
   bind all the data in a single data set
   write out the 1st dataset

-   Step5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

A code book that describes the data fields in tidy_dataset.txt can be be found in CodeBook.md.
