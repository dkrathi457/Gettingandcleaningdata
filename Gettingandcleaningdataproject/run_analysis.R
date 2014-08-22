# Getting and Cleaning Data Project



setwd("UCI HAR Dataset")

#Section 1.1 Loading data from Directories, and naming the variables

features <- read.table("features.txt")

x_train <- read.table("train\\X_train.txt")
x_test <- read.table("test\\X_test.txt")
names(x_train) <- features$V2
names(x_test) <- features$V2

y_train <- read.table("train\\y_train.txt")
y_test <- read.table("test\\y_test.txt")

names(y_train) <- "activity"
names(y_test) <- "activity"

subject_train <- read.table("train\\subject_train.txt" , col.names = c('subject'))
subject_test <- read.table("test\\subject_test.txt" ,col.names = c('subject'))

names(subject_train) <- "subject"
names(subject_test) <- "subject"

activity_labels <- read.table("activity_labels.txt")
names(activity_labels)[1] <- "ActivityId"
names(activity_labels)[2] <- "ActivityType"

# Section 1.2 Merging the Training and Testing Data sets
X_Dataset <- rbind(x_train, x_test)
Y_Dataset <- rbind(y_train,y_test)
subject <- rbind(subject_train, subject_test)

#Section 2:Extracts only the measurements on the mean and standard deviation for each measurement.

# create a vector which contain the column number which have contain the mean andstd measurment.
indices_of_means_and_stds<-grep("(mean|std)\\(",features$V2)
# creates a data frame of mean and std measumrements using the above vector
mean_and_std <- X_Dataset[,indices_of_means_and_stds]

#Section 3 :Uses descriptive activity names to name the activities in the data set

#Replacs the activity indices by their activity names.

total_activity_labels <- nrow(activity_labels)
i=0
while (i <= total_activity_labels) {
  id <- as.numeric(activity_labels[i, 1])
  type <- as.character(activity_labels[i, 2])
  Y_Dataset[Y_Dataset$activity == id, ] <- type
  i <- i+1
  }

#Section 4: Label the Data set with Appropriate names.

X_with_labels <- cbind(Y_Dataset, X_Dataset)
mean_and_std_with_labels <- cbind(Y_Dataset, mean_and_std)
colnames(X_Dataset) = colNames;
for (i in 1:length(colNames)) 
{
  colNames[i] = gsub("\\()","",colNames[i])
  colNames[i] = gsub("-std$","StdDev",colNames[i])
  colNames[i] = gsub("-mean","Mean",colNames[i])
  colNames[i] = gsub("^(t)","time",colNames[i])
  colNames[i] = gsub("^(f)","freq",colNames[i])
       
};
  colnames(finalData) = colNames;

#Section 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
averages <- aggregate(X_Dataset, by = list(activity = Y_Dataset[,1], subject = subject[,1]), mean)

write.table(averages, file = "tidy.txt", sep = "\t", row.names=FALSE)





