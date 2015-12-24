This Code Book decribes the original data source, data transformations and variables of the data used for the Course Project of the cours Getting and Cleaning Data.

### Original Data source

The original data source is the Human Activity Recognition Using Smartphones Dataset.

This dataset can be downloaded at: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features\_info.txt' for more details.

For each record it is provided:

-   Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
-   Triaxial Angular velocity from the gyroscope.
-   A 561-feature vector with time and frequency domain variables.
-   Its activity label.
-   An identifier of the subject who carried out the experiment.

The dataset includes the following files:

-   'README.txt'
-   'features\_info.txt': Shows information about the variables used on the feature vector.
-   'features.txt': List of all features.
-   'activity\_labels.txt': Links the class labels with their activity name.
-   'train/X\_train.txt': Training set.
-   'train/y\_train.txt': Training labels.
-   'test/X\_test.txt': Test set.
-   'test/y\_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

-   'train/subject\_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
-   'train/Inertial Signals/total\_acc\_x\_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total\_acc\_x\_train.txt' and 'total\_acc\_z\_train.txt' files for the Y and Z axis.
-   'train/Inertial Signals/body\_acc\_x\_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
-   'train/Inertial Signals/body\_gyro\_x\_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

### Data transformation

The source data is transformed to a tidy data set by the script in run\_analysis.R by the following steps:

1.  Read the data from the Human Activity Recognition Using Smartphones Dataset:
    -   Load the test files:
        -   Y\_test.txt
        -   X\_test.txt
        -   subject\_test.txt
    -   Load the training files:
        -   Y\_training.txt
        -   X\_training.txt
        -   subject\_training.txt
    -   Load the descriptive files:
        -   activity\_labels.txt
        -   features.txt

2.  Merge the training and the test sets to create one data set.
3.  Extract only the columns that have names containing mean() or std().
    -   Give the columns in X the names that are found in features.txt
    -   Extract only the measurements on the mean and standard deviation for each measurement.

4.  Use the descriptive activity names found in activity\_labels.txt to name the activities in the data set.
5.  Appropriately label the data set with descriptive variable names.
    -   Replace all abbreviations from the features with the full words to make the variable names more descriptive.

6.  From the data set in the previous step, create a second, independent tidy data set with the average of each variable for each activity and each subject.
7.  Create an uploadable text file called "Tidy\_Data\_set.txt"

### Variables

A short description of the variables in the file "Tidy\_Data\_set.txt" is given in the following table:

| Variable                                                   | Details                                                                                                |
|------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| Subject                                                    | Each row identifies the subject who performed the activity. The range is from 1 to 30.                 |
| Activity                                                   | Factor with 6 levels WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING        |
| Time-BodyAccelerometer-Mean-X                              | Average of the mean value of the time of Body Accelerometer in the direction X                         |
| Time-BodyAccelerometer-Mean-Y                              | Average of the mean value of the time of Body Accelerometer in the direction Y                         |
| Time-BodyAccelerometer-Mean-Z                              | Average of the mean value of the time of Body Accelerometer in the direction Z                         |
| Time-GravityAccelerometer-Mean-X                           | Average of the mean value of the time of Gravity Accelerometer in the direction X                      |
| Time-GravityAccelerometer-Mean-Y                           | Average of the mean value of the time of Gravity Accelerometer in the direction Y                      |
| Time-GravityAccelerometer-Mean-Z                           | Average of the mean value of the time of Gravity Accelerometer in the direction Z                      |
| Time-BodyAccelerometerJerk-Mean-X                          | Average of the mean value of the time of Body Accelerometer Jerk in the direction X                    |
| Time-BodyAccelerometerJerk-Mean-Y                          | Average of the mean value of the time of Body Accelerometer Jerk in the direction Y                    |
| Time-BodyAccelerometerJerk-Mean-Z                          | Average of the mean value of the time of Body Accelerometer Jerk in the direction Z                    |
| Time-BodyGyroscope-Mean-X                                  | Average of the mean value of the time of Body Gyroscope in the direction X                             |
| Time-BodyGyroscope-Mean-Y                                  | Average of the mean value of the time of Body Gyroscope in the direction Y                             |
| Time-BodyGyroscope-Mean-Z                                  | Average of the mean value of the time of Body Gyroscope in the direction Z                             |
| Time-BodyGyroscopeJerk-Mean-X                              | Average of the mean value of the time of Body Gyroscope Jerk in the direction X                        |
| Time-BodyGyroscopeJerk-Mean-Y                              | Average of the mean value of the time of Body Gyroscope Jerk in the direction Y                        |
| Time-BodyGyroscopeJerk-Mean-Z                              | Average of the mean value of the time of Body Gyroscope Jerk in the direction Z                        |
| Time-BodyAccelerometerMagnitude-Mean                       | Average of the mean value of the time of Body Accelerometer Magnitude                                  |
| Time-GravityAccelerometerMagnitude-Mean                    | Average of the mean value of the time of Gravity Accelerometer Magnitude                               |
| Time-BodyAccelerometerJerkMagnitude-Mean                   | Average of the mean value of the time of Body Accelerometer Jerk Magnitude                             |
| Time-BodyGyroscopeMagnitude-Mean                           | Average of the mean value of the time of Body Gyroscope Magnitude                                      |
| Time-BodyGyroscopeJerkMagnitude-Mean                       | Average of the mean value of the time of Body Gyroscope Jerk Magnitude                                 |
| Frequency-BodyAccelerometer-Mean-X                         | Average of the mean value of the frequency of Body Accelerometer in the direction X                    |
| Frequency-BodyAccelerometer-Mean-Y                         | Average of the mean value of the frequency of Body Accelerometer in the direction Y                    |
| Frequency-BodyAccelerometer-Mean-Z                         | Average of the mean value of the frequency of Body Accelerometer in the direction Z                    |
| Frequency-BodyAccelerometerJerk-Mean-X                     | Average of the mean value of the frequency of Body Accelerometer Jerk in the direction X               |
| Frequency-BodyAccelerometerJerk-Mean-Y                     | Average of the mean value of the frequency of Body Accelerometer Jerk in the direction Y               |
| Frequency-BodyAccelerometerJerk-Mean-Z                     | Average of the mean value of the frequency of Body Accelerometer Jerk in the direction Z               |
| Frequency-BodyGyroscope-Mean-X                             | Average of the mean value of the frequency of Body Gyroscope in the direction X                        |
| Frequency-BodyGyroscope-Mean-Y                             | Average of the mean value of the frequency of Body Gyroscope in the direction Y                        |
| Frequency-BodyGyroscope-Mean-Z                             | Average of the mean value of the frequency of Body Gyroscope in the direction Z                        |
| Frequency-BodyAccelerometerMagnitude-Mean                  | Average of the mean value of the frequency of Body Accelerometer Magnitude                             |
| Frequency-BodyAccelerometerJerkMagnitude-Mean              | Average of the mean value of the frequency of Body Accelerometer Jerk Magnitude                        |
| Frequency-BodyGyroscopeMagnitude-Mean                      | Average of the mean value of the frequency of Body Gyroscope Magnitude                                 |
| Frequency-BodyGyroscopeJerkMagnitude-Mean                  | Average of the mean value of the frequency of Body Gyroscope Jerk Magnitude                            |
| Time-BodyAccelerometer-StandardDeviation-X                 | Average of the standard deviation value of the time of Body Accelerometer in the direction X           |
| Time-BodyAccelerometer-StandardDeviation-Y                 | Average of the standard deviation value of the time of Body Accelerometer in the direction Y           |
| Time-BodyAccelerometer-StandardDeviation-Z                 | Average of the standard deviation value of the time of Body Accelerometer in the direction Z           |
| Time-GravityAccelerometer-StandardDeviation-X              | Average of the standard deviation value of the time of Gravity Accelerometer in the direction X        |
| Time-GravityAccelerometer-StandardDeviation-Y              | Average of the standard deviation value of the time of Gravity Accelerometer in the direction Y        |
| Time-GravityAccelerometer-StandardDeviation-Z              | Average of the standard deviation value of the time of Gravity Accelerometer in the direction Z        |
| Time-BodyAccelerometerJerk-StandardDeviation-X             | Average of the standard deviation value of the time of Body Accelerometer Jerk in the direction X      |
| Time-BodyAccelerometerJerk-StandardDeviation-Y             | Average of the standard deviation value of the time of Body Accelerometer Jerk in the direction Y      |
| Time-BodyAccelerometerJerk-StandardDeviation-Z             | Average of the standard deviation value of the time of Body Accelerometer Jerk in the direction Z      |
| Time-BodyGyroscope-StandardDeviation-X                     | Average of the standard deviation value of the time of Body Gyroscope in the direction X               |
| Time-BodyGyroscope-StandardDeviation-Y                     | Average of the standard deviation value of the time of Body Gyroscope in the direction Y               |
| Time-BodyGyroscope-StandardDeviation-Z                     | Average of the standard deviation value of the time of Body Gyroscope in the direction Z               |
| Time-BodyGyroscopeJerk-StandardDeviation-X                 | Average of the standard deviation value of the time of Body Gyroscope Jerk in the direction X          |
| Time-BodyGyroscopeJerk-StandardDeviation-Y                 | Average of the standard deviation value of the time of Body Gyroscope Jerk in the direction Y          |
| Time-BodyGyroscopeJerk-StandardDeviation-Z                 | Average of the standard deviation value of the time of Body Gyroscope Jerk in the direction Z          |
| Time-BodyAccelerometerMagnitude-StandardDeviation          | Average of the standard deviation value of the time of Body Accelerometer Magnitude                    |
| Time-GravityAccelerometerMagnitude-StandardDeviation       | Average of the standard deviation value of the time of Gravity Accelerometer Magnitude                 |
| Time-BodyAccelerometerJerkMagnitude-StandardDeviation      | Average of the standard deviation value of the time of Body Accelerometer Jerk Magnitude               |
| Time-BodyGyroscopeMagnitude-StandardDeviation              | Average of the standard deviation value of the time of Body Gyroscope Magnitude                        |
| Time-BodyGyroscopeJerkMagnitude-StandardDeviation          | Average of the standard deviation value of the time of Body Gyroscope Jerk Magnitude                   |
| Frequency-BodyAccelerometer-StandardDeviation-X            | Average of the standard deviation value of the frequency of Body Accelerometer in the direction X      |
| Frequency-BodyAccelerometer-StandardDeviation-Y            | Average of the standard deviation value of the frequency of Body Accelerometer in the direction Y      |
| Frequency-BodyAccelerometer-StandardDeviation-Z            | Average of the standard deviation value of the frequency of Body Accelerometer in the direction Z      |
| Frequency-BodyAccelerometerJerk-StandardDeviation-X        | Average of the standard deviation value of the frequency of Body Accelerometer Jerk in the direction X |
| Frequency-BodyAccelerometerJerk-StandardDeviation-Y        | Average of the standard deviation value of the frequency of Body Accelerometer Jerk in the direction Y |
| Frequency-BodyAccelerometerJerk-StandardDeviation-Z        | Average of the standard deviation value of the frequency of Body Accelerometer Jerk in the direction Z |
| Frequency-BodyGyroscope-StandardDeviation-X                | Average of the standard deviation value of the frequency of Body Gyroscope in the direction X          |
| Frequency-BodyGyroscope-StandardDeviation-Y                | Average of the standard deviation value of the frequency of Body Gyroscope in the direction Y          |
| Frequency-BodyGyroscope-StandardDeviation-Z                | Average of the standard deviation value of the frequency of Body Gyroscope in the direction Z          |
| Frequency-BodyAccelerometerMagnitude-StandardDeviation     | Average of the standard deviation value of the frequency of Body Accelerometer Magnitude               |
| Frequency-BodyAccelerometerJerkMagnitude-StandardDeviation | Average of the standard deviation value of the frequency of Body Accelerometer Jerk Magnitude          |
| Frequency-BodyGyroscopeMagnitude-StandardDeviation         | Average of the standard deviation value of the frequency of Body Gyroscope Magnitude                   |
| Frequency-BodyGyroscopeJerkMagnitude-StandardDeviation     | Average of the standard deviation value of the frequency of Body Gyroscope Jerk Magnitude              |
