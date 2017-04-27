# Merging the training and test sets to create one data set
setwd("~/Getting-Cleaning-Data-Project")                
subjectTest <- read.table("./test/subject_test.txt")
xTest <- read.table("./test/X_test.txt")
yTest <- read.table("./test/Y_test.txt")

subjectTrain <- read.table("./train/subject_train.txt") 
xTrain <- read.table("./train/X_train.txt")
yTrain <- read.table("./train/Y_train.txt")

subjectData <- rbind(subjectTest, subjectTrain)
xData <- rbind(xTest, xTrain)
yData <- rbind(yTest, yTrain)

# Extracting only the mean and SD of each measurement 
feature_vars <- read.table("./features.txt")
colnames(xData) <- feature_vars[,2]
mean_std_xData <- xData[, grep("-(mean|std)\\(\\)", feature_vars[,2])]

# Using names showing descriptive activity to name activities in data set
activity_labels <- read.table("./activity_labels.txt")
yData[,1] <- activity_labels[yData[,1],2]

# Labeling the data set with descriptive variable names
colnames(yData) <- "Activity"
colnames(subjectData) <- "SubjectID"

# Creating a second independent data set with the average of each variable for each activity 
# and each subject
completeData2 <- cbind(subjectData, yData, mean_std_xData)
orderedData2 <- completeData2[order(completeData2$SubjectID, completeData2$Activity), ]
dataLabel <- setdiff(colnames(completeData2), c("SubjectID", "Activity"))
library(reshape2)
meltData <- melt(orderedData2, id = c("SubjectID", "Activity"), measure.vars = dataLabel)
avgData <- dcast(meltData, SubjectID + Activity~variable, mean)
write.table(avgData, file = "./final_tidyData.txt")

