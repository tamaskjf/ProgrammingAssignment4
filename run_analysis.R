# Using the dplyr library for cleaning and tidying the datasets
library(dplyr)

# Reading the X and Y test data sets
x_test_set <- read.table("ProgrammingAssignment4/UCI HAR Dataset/test/X_test.txt", header=FALSE)
y_test_label <- read.table("ProgrammingAssignment4/UCI HAR Dataset/test/y_test.txt", header=FALSE)

# Reading the X and Y train data sets
x_train_set <- read.table("ProgrammingAssignment4/UCI HAR Dataset/train/X_train.txt", header=FALSE)
y_train_label <- read.table("ProgrammingAssignment4/UCI HAR Dataset/train/y_train.txt", header=FALSE)

# Reading the test and train subject data sets
subject_test <- read.table("ProgrammingAssignment4/UCI HAR Dataset/test/subject_test.txt", header=FALSE)
subject_train <- read.table("ProgrammingAssignment4/UCI HAR Dataset/train/subject_train.txt", header=FALSE)

# Reading the activity labels
activity_labels <- read.table("ProgrammingAssignment4/UCI HAR Dataset/activity_labels.txt", header=FALSE)

# Reading the features list
features <- read.table("ProgrammingAssignment4/UCI HAR Dataset/features.txt", header = FALSE)

# Defining column names for the data sets
colnames(x_test_set) <- features[, 2]
colnames(y_test_label) <- "Id"

colnames(x_train_set) <- features[, 2]
colnames(y_train_label) <- "Id"

colnames(subject_test) <- "Subject_Id"
colnames(subject_train) <- "Subject_Id"

colnames(activity_labels) <- c("Activity_Id", "Activity_Label")

# Merging the training and the test sets to create one data set
merge_test <- cbind(x_test_set, y_test_label, subject_test)
merge_train <- cbind(x_train_set, y_train_label, subject_train)

merge_test_train <- rbind(merge_test, merge_train)

# Extracting only the measurements on the mean and standard deviation for each measurement
mean_std_data <- merge_test_train %>% select(Subject_Id, Id, contains("mean"), contains("std"))

# Using descriptive activity names to name the activities in the data set
mean_std_data$Id <- activity_labels[mean_std_data$Id, 2]

# Appropriately labeling the data set with descriptive variable names
names(mean_std_data)[2] = "Activity"

names(mean_std_data) <- gsub("Acc", "Accelerometer", names(mean_std_data))
names(mean_std_data) <- gsub("Gyro", "Gyroscope", names(mean_std_data))
names(mean_std_data) <- gsub("BodyBody", "Body", names(mean_std_data))
names(mean_std_data) <- gsub("Mag", "Magnitude", names(mean_std_data))
names(mean_std_data) <- gsub("Freq", "Frequency", names(mean_std_data))
names(mean_std_data) <- gsub("^t", "Time", names(mean_std_data))
names(mean_std_data) <- gsub("^f", "Frequency", names(mean_std_data))
names(mean_std_data) <- gsub("tBody", "TimeBody", names(mean_std_data))
names(mean_std_data) <- gsub("angle", "Angle", names(mean_std_data))

# Creating a second, independent tidy data set with the average of each variable for each activity and each subject
avg_activity_mean_std_data <- mean_std_data %>% group_by(Subject_Id, Activity) %>% summarise(across(where(is.numeric), mean))

write.table(avg_activity_mean_std_data, "avg_activity_mean_std_data.txt", row.name = FALSE)


