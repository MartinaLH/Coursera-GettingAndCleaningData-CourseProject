## File: run_analysis.R
## Cleaning up Human Activity Recognition Using Smartphones Dataset
## Martina Hoever
## For Coursera course getdata-035, "Getting and Cleaning Data"


## 0. Read data
    ## read test data set
    Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
    X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
    subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
    
    ## read training data set
    Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
    X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
    subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
    
    ## read activity labels and feature names 
    activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
    features <- read.table("UCI HAR Dataset/features.txt")

## 1. Merge the training and the test sets to create one data set.
    X <- rbind(X_test, X_train)
    Y <- rbind(Y_test, Y_train)
    subject <- rbind(subject_test, subject_train)

    
## 2. Extract only the measurements on the mean and standard deviation for each measurement. 
    ## Give the columns in X the names that are found in features.txt
    colnames(X) <- features[,2]
    
    ## Extract only the columns that have names containing mean() or std()
    X_mean <- X[ , grepl("mean()", names(X), fixed = TRUE)]
    X_std <- X[ , grepl("std()", names(X), fixed = TRUE)]
    X <- cbind(X_mean, X_std)

## 3. Use descriptive activity names to name the activities in the data set
    Y <- as.data.frame(activity_labels$V2[match(Y$V1,activity_labels$V1)])
    
## 4. Appropriately labels the data set with descriptive variable names. 
    colnames(Y) <- "activity"
    colnames(subject) <- "subject"

    ## Extract all columnnames and rename them
    cn <- colnames(X)
    cn <- gsub("^t", "Time-", cn)
    cn <- gsub("^f", "Frequency-", cn)
    cn <- gsub("Acc", "Accelerometer", cn)
    cn <- gsub("Gyro", "Gyroscope", cn)
    cn <- gsub("Mag","Magnitude", cn)
    cn <- gsub("mean", "Mean", cn, fixed = TRUE)
    cn <- gsub("std", "StandardDeviation", cn)
    cn <- gsub("BodyBody", "Body", cn)
    cn <- gsub("\\(\\)", "", cn)
    colnames(X) <- cn
    
## 5. From the data set in the previous step, create a second, independent tidy data set with the average of each variable for each activity and each subject.
    ## Group data by subject and activity
    XY <- split(X, list(subject$subject, Y$activity))
    ## Get the mean of each feature
    XY <- sapply(XY, colMeans)
    ## Transpose the matrix so we have the means of the features in the columns 
    XY <- t(XY)
    ## Get the rownames from this matrix that are now grouped
    rn <- rownames(XY)
    ## Split them in to two columns
    subject_activity  <- matrix(unlist(strsplit(rn, split=".", fixed = TRUE)), ncol=2, byrow=TRUE)
    ## Rename the columns "subject" and "activity" again
    colnames(subject_activity) <- c("subject", "activity")
    ## Combine the result in one column
    XY <- cbind(subject_activity,XY)
    
    
## 6. Create an uploadable text file
    ## Create uploadable text file called "Tidy_Data_set.txt"
    write.table(XY, "Tidy_Data_Set.txt", row.name=FALSE) 
    
    