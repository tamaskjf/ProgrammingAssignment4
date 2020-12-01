## This is a Readme file.

**README - Human Activity Recognition Using Smartphones**

This project is about cleaning and tidying the data sets about the Human Activity Recognition Using Smartphones experiments from 2012. The data sets, and further information about the experiments is here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data sets also can be downloaded from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The *run_analysis.R* script does some data perforation and tidying according to the Coursera's Getting and Cleaning Data Course Project. The *run_analysis.R* script is written in R language and with the help of the **dplyr** package:

- Merges the training and the test sets to create one data set.

- Extracts only the measurements on the mean and standard deviation for each measurement.

- Uses descriptive activity names to name the activities in the data set.

- Appropriately labels the data set with descriptive variable names.

- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The repository also contains a Code Book file - *CodeBook.md* - which includes additional informations about the original and final data sets. And it has an additional data set - *avg_activity_mean_std_dat.txt* -, which contains the average of each variable for each activity and each subject of the merged data set.
