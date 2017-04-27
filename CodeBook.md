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

Variable Names Explanation \* SubjectID ID identifies each participant
in the experiment \* Activity 6 levels: LAYING, SITTING, STANDING,
WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS \* tBodyAcc-mean()-XYZ
Mean value for time domain of body acceleration in the x, y, z
directions \* tBodyAcc-std()-XYZ Standard deviation for time domain of
body acceleration in the x, y, z directions
