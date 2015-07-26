
# Getting and Cleaning Data Course Project

##########################################################################
## STEP 1: Merges the training and the test sets to create one data set.
##########################################################################

# read measurements of test and train data sets
Xtest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)

# read the features that are the column names for the above
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE)

# assign the features to column names as descriptive variable names
colnames(Xtest) <- features[,2]
colnames(Xtrain) <- features[,2]

# read the y vectores that include the activity number for each observation
ytest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)

# read the subject vectors that include the subject number for each observation
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)

# bind the subject's number and the Activity number to the measurement data
test <- Xtest 
test <- cbind(subjecttest[,1], ytest[,1], test) 
train <- Xtrain 
train <- cbind(subjecttrain[,1], ytrain[,1], train)

# assign descriptive variable names to bound columns
colnames(test)[1:2] <- c("subject", "activity")
colnames(train)[1:2] <- c("subject", "activity")

# combine test and train data set into one
dataset <- rbind(test,train)

#############################################################################
## STEP 2: Extracts only the measurements on the mean and standard deviation
#############################################################################

# find the column index for variable containing "mean" or "std"
meanindex <- grep("mean", c(names(dataset)), ignore.case=TRUE)
stdindex <- grep("std", c(names(dataset)), ignore.case=TRUE)
# keep the subject, activity, and mean / std columns
keepcol <- sort(unique(c(1, 2, meanindex, stdindex)))
narrowdown <- dataset[, keepcol]

#############################################################################
## STEP 3: Uses descriptive activity names in the dataset
#############################################################################

# read the activities labels
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
# cut the activiy numeric vector to 6 intervals and assign each its label in order
narrowdown$activityName <- cut(narrowdown$activity, 6, labels = activities[,2])

#############################################################################
## STEP 4: Appropriately labels the data set with descriptive variable names
#############################################################################

# already done in step 1 above

#############################################################################
## STEP 5: creates a tidy data set with the average of each variable 
##         for each activity and each subject
#############################################################################

# melt the dta set so each row has a combination of: subject, activity, 
# a variable, and a measurement
GalaxyMelt <- melt(narrowdown,id=c("subject","activityName"),measure.vars = c(colnames(narrowdown)[3:88]))
# tidy the melted data so each row shows subject, activity name, variable,
# and the average of measurements for this combination.
tidyData <- ddply(GalaxyMelt, c("subject","activityName", "variable"), summarise, mean = mean(value))
write.table(tidyData, file="UCI HAR Dataset/tidyData.txt", sep="\t", row.name=FALSE)




