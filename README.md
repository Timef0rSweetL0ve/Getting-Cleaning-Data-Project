README
------

    A.  Objective of the experiment
    B.  About the Experiment “Human Activity Recognition”
    C.  Reference
    D.  Detail Description of Data Script Acquisition and Organization

A. Objective
------------

One of the most exciting areas in all of data science right now is
wearable computing. Companies like Fitbit, Nike, and Jawbone Up are
racing to develop the most advanced algorithms to attract new users. The
purpose of this project is to get and organize data collected from the
accelerometers from the Samsung Galaxy S smartphone. The source of data
is studied at UCI Machine Learning Repository and presented in the
article “Human Activity Recognition Using Smartphones Data Set”.

B. About the Experiment “Human Activity Recognition”
----------------------------------------------------

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

C. Reference
------------

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L.
Reyes-Ortiz. Human Activity Recognition on Smartphones using a
Multiclass Hardware-Friendly Support Vector Machine. International
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
Spain. Dec 2012

D. Detail Description of Data Script Acquisition and Organization
-----------------------------------------------------------------

The purpose of this project is to demonstrate your ability to collect,
work with, and clean a data set. The goal is to prepare tidy data that
can be used for later analysis. This is a peer-grading project based on
a series of yes/no questions related to the project. The submission
should include the following:

    1   The text of tidy data set.
    2   The Github repo containing the required scripts.
    3   GitHub containing a code book called CodeBook.md
    4   The README.md

Original Data Source for this project is from
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

### This repository consists of the following files

`run_analysis.R` `CodeBook.md` `final_tidyData.txt`

### Details of *run\_analysis.R* script

This script is created to perform the acquisition and organization of
raw dataset to generate a tidy data file, called `final_tidyData.txt`

### Functions of *run\_analysis.R* script

-   Downloads the dataset from the URL mentioned above and unzips it to
    create UCI HAR Dataset folder.
-   Reads ‘test’ and ‘train’ data sets into R as data frames, then
    combines them by row to create one data frame for each coordinate
    (x, y, subject).
-   Labels the data set with measurement variable names. Extracts a
    subset of data with only the measurements on the mean `mean()` and
    standard deviation `std()` for each measurement.
-   Assigns names showing descriptive activities (LAYING, STANDING,
    SITTING, etc) to corresponding numbers to improve readability.
-   Labels the data set with descriptive variable names.
-   Creates a second independent data set by combine all the columns as
    one data set, arrange all columns by `SubjectID` and `Activity`.
    Reshapes newly created second data set to calculate the average of
    each variable for each activity and each subject.
-   Writes new tidy data frame to a text file to create the required
    tidy data set file of **180** observations and **68** columns(**2**
    columns for `Activity` and `SubjectID` and **66** columns for
    measurement variables)

### Running the script by sourcing the script from your working directory in R.

    `source(run_analysis.R)`

### Details of *CodeBook.md*

The code book file describes the variables, the data, summaries
calculated, along with units, and any transformations and work performed
to clean up the data.

### Details of *final\_tidyData.txt*

This is generated by running `run_analysis.R` and consists of tidy data
in form of text. This tidy data set consists of

-   **180** observations and **68** columns(**2** columns for
    `SubjectID` and `Activity` and **66** columns for measurement
    variables).  
-   Each measurement variable column is average value for each
    combination of `SubjectID` and `Activity`.
