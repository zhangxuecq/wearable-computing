# Load the data.
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Merges the training and the test sets to create one data set.
test <- cbind(subject_test,y_test,X_test)
train <- cbind(subject_train,y_train,X_train)
data_total <- rbind(train,test)


#Extracts only the measurements on the mean and standard deviation 
#for each measurement. 
index <- grep("\\bmean()\\b|\\bstd()\\b",features[,2])
data_part <- subset(data_total,select=c(1,2,index+2))

#Uses descriptive activity names to name the activities in the data set
data_part[,2] <- as.factor(activity_labels$V2[data_part[,2]])

#Appropriately labels the data set with descriptive variable names. 
name <- c("subject","activity",as.character(features[index,2]))
names(data_part) <- name

#From the data set in step 4, creates a second, independent tidy data 
#set with the average of each variable for each activity and each subject.
new_data <- data_part %>% group_by(subject,activity) %>% summarize_each(funs="mean")
write.table(new_data,file="tidy new data set.txt",row.names = FALSE)