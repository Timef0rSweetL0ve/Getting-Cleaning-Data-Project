CodeBook
========

Data Experiment Information:
----------------------------

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain
signals (prefix 't' to denote time) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the acceleration signal was then separated into body
and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3
Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
indicate frequency domain signals).

Original Data Source for this project is from
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The dataset includes the following files:
-----------------------------------------

-   'README.txt’: Introduces the background of experiment and
    data collection. Describes different data scripts for analysis.
-   'features\_info.txt': Shows information about the variables used on
    the feature vector.
-   'features.txt': List of all features of measurement variables.
-   'activity\_labels.txt': Links the class labels with their
    activity name.
-   'train/X\_train.txt': Training set.
-   'train/y\_train.txt': Training labels.
-   'test/X\_test.txt': Test set.
-   'test/y\_test.txt': Test labels.

Explanation of Variable Names:
------------------------------

-   SubjectID: ID identifies each participant in the experiment
-   Activity: 6 levels - LAYING, SITTING, STANDING, WALKING,
    WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS
-   tBodyAcc-mean()-XYZ: Mean value for time domain of body acceleration
    in the x, y, z directions
-   tBodyAcc-std()-XYZ: Standard deviation for time domain of body
    acceleration in the x, y, z directions
-   tGravityAcc-mean()-XYZ: Mean value for time domain of gravity
    acceleration in the x, y, z directions
-   tGravityAcc-std()-XYZ: Standard deviation for time domain of gravity
    acceleration in the x, y, z directions
-   tBodyAccJerk-mean()-XYZ: Mean value for time domain of body
    acceleration with jerk signal in the x, y, z directions
-   tBodyAccJerk-std()-XYZ: Standard deviation for time domain of body
    acceleration with jerk signal in the x, y, z directions
-   tBodyGyro-mean()-XYZ: Mean value for time domain of body gyro in the
    x, y, z directions
-   tBodyGyro-std()-XYZ: Standard deviation for time domain of bogy gyro
    in the x, y, z directions
-   tBodyGyroJerk-mean()-XYZ: Mean value for time domain of body gyro
    with jerk signal in the x, y, z directions
-   tBodyGyroJerk-std()-XYZ: Standard deviation for time domain of body
    gyro with jerk signal in the x, y, z directions
-   tBodyAccMag-mean(): Mean value for time domain of body acceleration
    in magnitude
-   tBodyAccMag-std(): Standard deviation for time domain of body
    acceleration in magnitude
-   tGravityAccMag-mean(): Mean value for time domain of gravity
    acceleration in magnitude
-   tGravityAccMag-std(): Standard deviation for time domain of gravity
    acceleration in magnitude
-   tBodyAccJerkMag-mean(): Mean value for time domain of body
    acceleration with jerk signal in magnitude
-   tBodyAccJerkMag-std(): Standard deviation for time domain of body
    acceleration with jerk signal in magnitude
-   tBodyGyroMag-mean(): Mean value for time domain of body gyro in
    magnitude
-   tBodyGyroMag-std(): Standard deviation for time domain of body gyro
    in magnitude
-   tBodyGyroJerkMag-mean(): Mean value for time domain of body gyro
    with jerk signal in magnitude
-   tBodyGyroJerkMag-std(): Standard deviation for time domain of body
    gyro with jerk signal in magnitude
-   fBodyAcc-mean()-XYZ: Mean value for frequency domain of body
    acceleration in the x, y, z directions
-   fBodyAcc-std()-XYZ: Standard deviation for frequency domain of body
    acceleration in the x, y, z directions
-   fBodyAccJerk-mean()-XYZ: Mean value for frequency domain of body
    acceleration with jerk signal in the x, y, z directions
-   fBodyAccJerk-std()-XYZ: Standard deviation for frequency domain of
    body acceleration with jerk signal in the x, y, z directions
-   fBodyGyro-mean()-XYZ: Mean value for frequency domain of body gyro
    in the x, y, z directions
-   fBodyGyro-std()-XYZ: Standard deviation for frequency domain of body
    gyro in the x, y, z directions
-   fBodyAccMag-mean(): Mean value for frequency domain of body
    acceleration in magnitude
-   fBodyAccMag-std(): Standard deviation for frequency domain of body
    acceleration in magnitude
-   fBodyBodyAccJerkMag-mean(): Mean value for frequency domain of body
    acceleration with jerk signal in magnitude
-   fBodyBodyAccJerkMag-std(): Standard deviation for frequency domain
    of body acceleration with jerk signal in magnitude
-   fBodyBodyGyroMag-mean(): Mean value for frequency domain of body
    gyro in magnitude
-   fBodyBodyGyroMag-std(): Standard deviation for frequency domain of
    body gyro in magnitude
-   fBodyBodyGyroJerkMag-mean(): Mean value for frequency domain of body
    gyro with jerk signal in magnitude
-   fBodyBodyGyroJerkMag-std(): Standard deviation for frequency domain
    of body gyro with jerk signal in magnitude

Detail Description of Steps in Getting and Cleaning Data in run\_analysis.R script
----------------------------------------------------------------------------------

### 1. Merging the training and test sets to create one data set

-   Downloads original data source and create UCI HAR Dataset folder.
-   Sets current directory of the data folder in R.
-   Reads ‘test’ and ‘train’ data sets into R as data frames using
    read.table
-   Combine them by rows to create one data frame for each coordinate
    (x, y, subject) using rbind.

<!-- -->

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
