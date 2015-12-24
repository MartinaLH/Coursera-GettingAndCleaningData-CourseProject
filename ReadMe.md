This repository contains the following files:

-   Read me
-   CodeBook.md
-   run\_analysis.R
-   Tidy\_Data\_set.txt

### Running the script

To be able to use run\_analysis.R, you need to download the following zip file and unzip this in your working directory: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

### Details of run\_analysis.R

The script in run\_analysis.r completes the following steps: 1. Read the data from the Human Activity Recognition Using Smartphones Dataset: \* Load the test files: + Y\_test.txt + X\_test.txt + subject\_test.txt \* Load the training files: + Y\_training.txt + X\_training.txt + subject\_training.txt \* Load the descriptive files: + activity\_labels.txt + features.txt 2. Merge the training and the test sets to create one data set. 3. Extract only the columns that have names containing mean() or std(). \* Give the columns in X the names that are found in features.txt \* Extract only the measurements on the mean and standard deviation for each measurement. 4. Use the descriptive activity names found in activity\_labels.txt to name the activities in the data set. 5. Appropriately label the data set with descriptive variable names. \* Replace all abbreviations from the features with the full words to make the variable names more descriptive. 6. From the data set in the previous step, create a second, independent tidy data set with the average of each variable for each activity and each subject. 7. Create an uploadable text file called "Tidy\_Data\_set.txt"

### Details of CodeBook.md

The code book file describes the variables, the data, and any transformations and work performed to clean up the data.

### Details of Tidy\_Data\_set.txt

This dataset contains 180 rows and 68 columns. These columns represent an activity, a subject and 66 measurements variables showing the average for this combination of activity and subject.
