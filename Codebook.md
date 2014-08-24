Codebook
========

Human Activity Recognition Using Smartphones Dataset
----------------------------------------------------

The following codebook was adapted from the "README.txt" and "features_info.txt" files found in the directory **"UCI HAR Dataset"**.

This codebook reflects certain minor changes to the names made to the original codebook.  Name changes were kept to a minimum to insure easy transitions between the reference dataset and the modified dataset.  Specifically, the '-' characters were converted to "." characters.  The R language was used to process this data, and there can be issues with the '-' character in strings being interpreted as an arithmetic operation (subtraction).  In contrast, '.' characters are part of the R language S3 naming conventions.

Quoting from the original codebook:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

(Note 1: Velocity is the first derivative of position.
         Acceleration is the second derivative of position.
         Jerk is the third derivative of position.)

The follow table shows the definitions for the variables in the tidy dataset:

| Variable Name                   |   Domain  |     Source    |   Signal   | Derivative |      quantity      | Component |
|---------------------------------|:---------:|:-------------:|:----------:|:----------:|:------------------:|:---------:|
| tBodyAcc.mean().X               |    time   | Accelerometer |    Body    |   second   |        mean        |     X     |
| tBodyAcc.mean().Y               |    time   | Accelerometer |    Body    |   second   |        mean        |     Y     |
| tBodyAcc.mean().Z               |    time   | Accelerometer |    Body    |   second   |        mean        |     Z     |
| tBodyAcc.std().X                |    time   | Accelerometer |    Body    |   second   | standard deviation |     X     |
| tBodyAcc.std().Y                |    time   | Accelerometer |    Body    |   second   | standard deviation |     Y     |
| tBodyAcc.std().Z                |    time   | Accelerometer |    Body    |   second   | standard deviation |     Z     |
| tGravityAcc.mean().X            |    time   | Accelerometer |   Gravity  |   second   |        mean        |     X     |
| tGravityAcc.mean().Y            |    time   | Accelerometer |   Gravity  |   second   |        mean        |     Y     |
| tGravityAcc.mean().Z            |    time   | Accelerometer |   Gravity  |   second   |        mean        |     Z     |
| tGravityAcc.std().X             |    time   | Accelerometer |   Gravity  |   second   | standard deviation |     X     |
| tGravityAcc.std().Y             |    time   | Accelerometer |   Gravity  |   second   | standard deviation |     Y     |
| tGravityAcc.std().Z             |    time   | Accelerometer |   Gravity  |   second   | standard deviation |     Z     |
| tBodyAccJerk.mean().X           |    time   | Accelerometer |     Body   |    third   |        mean        |     X     |
| tBodyAccJerk.mean().Y           |    time   | Accelerometer |     Body   |    third   |        mean        |     Y     |
| tBodyAccJerk.mean().Z           |    time   | Accelerometer |     Body   |    third   |        mean        |     Z     |
| tBodyAccJerk.std().X            |    time   | Accelerometer |     Body   |    third   | standard deviation |     X     |
| tBodyAccJerk.std().Y            |    time   | Accelerometer |     Body   |    third   | standard deviation |     Y     |
| tBodyAccJerk.std().Z            |    time   | Accelerometer |     Body   |    third   | standard deviation |     Z     |
| tBodyGyro.mean().X              |    time   |   Gyroscope   |     Body   |   second   |        mean        |     X     |
| tBodyGyro.mean().Y              |    time   |   Gyroscope   |     Body   |   second   |        mean        |     Y     |
| tBodyGyro.mean().Z              |    time   |   Gyroscope   |     Body   |   second   |        mean        |     Z     |
| tBodyGyro.std().X               |    time   |   Gyroscope   |     Body   |   second   | standard deviation |     X     |
| tBodyGyro.std().Y               |    time   |   Gyroscope   |     Body   |   second   | standard deviation |     Y     |
| tBodyGyro.std().Z               |    time   |   Gyroscope   |     Body   |   second   | standard deviation |     Z     |
| tBodyGyroJerk.mean().X          |    time   |   Gyroscope   |     Body   |    third   |        mean        |     X     |
| tBodyGyroJerk.mean().Y          |    time   |   Gyroscope   |     Body   |    third   |        mean        |     Y     |
| tBodyGyroJerk.mean().Z          |    time   |   Gyroscope   |     Body   |    third   |        mean        |     Z     |
| tBodyGyroJerk.std().X           |    time   |   Gyroscope   |     Body   |    third   | standard deviation |     X     |
| tBodyGyroJerk.std().Y           |    time   |   Gyroscope   |     Body   |    third   | standard deviation |     Y     |
| tBodyGyroJerk.std().Z           |    time   |   Gyroscope   |     Body   |    third   | standard deviation |     Z     |
| tBodyAccMag.mean()              |    time   | Accelerometer |     Body   |   second   |        mean        | magnitude |
| tBodyAccMag.std()               |    time   | Accelerometer |     Body   |   second   | standard deviation | magnitude |
| tGravityAccMag.mean()           |    time   | Accelerometer |    Gravity |   second   |        mean        | magnitude |
| tGravityAccMag.std()            |    time   | Accelerometer |    Gravity |   second   | standard deviation | magnitude |
| tBodyAccJerkMag.mean()          |    time   | Accelerometer |     Body   |    third   |        mean        | magnitude |
| tBodyAccJerkMag.std()           |    time   | Accelerometer |     Body   |    third   | standard deviation | magnitude |
| tBodyGyroMag.mean()             |    time   |   Gyroscope   |     Body   |   second   |        mean        | magnitude |
| tBodyGyroMag.std()              |    time   |   Gyroscope   |     Body   |   second   | standard deviation | magnitude |
| tBodyGyroJerkMag.mean()         |    time   |   Gyroscope   |     Body   |    third   |        mean        | magnitude |
| tBodyGyroJerkMag.std()          |    time   |   Gyroscope   |     Body   |    third   | standard deviation | magnitude |
| fBodyAcc.mean().X               | frequency | Accelerometer |     Body   |   second   |        mean        |     X     |
| fBodyAcc.mean().Y               | frequency | Accelerometer |     Body   |   second   |        mean        |     Y     |
| fBodyAcc.mean().Z               | frequency | Accelerometer |     Body   |   second   |        mean        |     Z     |
| fBodyAcc.std().X                | frequency | Accelerometer |     Body   |   second   | standard deviation |     X     |
| fBodyAcc.std().Y                | frequency | Accelerometer |     Body   |   second   | standard deviation |     Y     |
| fBodyAcc.std().Z                | frequency | Accelerometer |     Body   |   second   | standard deviation |     Z     |
| fBodyAcc.meanFreq().X           | frequency | Accelerometer |     Body   |   second   |        mean        |     X     |
| fBodyAcc.meanFreq().Y           | frequency | Accelerometer |     Body   |   second   |        mean        |     Y     |
| fBodyAcc.meanFreq().Z           | frequency | Accelerometer |     Body   |   second   |        mean        |     Z     |
| fBodyAccJerk.mean().X           | frequency | Accelerometer |     Body   |    third   |        mean        |     X     |
| fBodyAccJerk.mean().Y           | frequency | Accelerometer |     Body   |    third   |        mean        |     Y     |
| fBodyAccJerk.mean().Z           | frequency | Accelerometer |     Body   |    third   |        mean        |     Z     |
| fBodyAccJerk.std().X            | frequency | Accelerometer |     Body   |    third   | standard deviation |     X     |
| fBodyAccJerk.std().Y            | frequency | Accelerometer |     Body   |    third   | standard deviation |     Y     |
| fBodyAccJerk.std().Z            | frequency | Accelerometer |     Body   |    third   | standard deviation |     Z     |
| fBodyAccJerk.meanFreq().X       | frequency | Accelerometer |     Body   |    third   |        mean        |     X     |
| fBodyAccJerk.meanFreq().Y       | frequency | Accelerometer |     Body   |    third   |        mean        |     Y     |
| fBodyAccJerk.meanFreq().Z       | frequency | Accelerometer |     Body   |    third   |        mean        |     Z     |
| fBodyGyro.mean().X              | frequency |   Gyroscope   |     Body   |   second   |        mean        |     X     |
| fBodyGyro.mean().Y              | frequency |   Gyroscope   |     Body   |   second   |        mean        |     Y     |
| fBodyGyro.mean().Z              | frequency |   Gyroscope   |     Body   |   second   |        mean        |     Z     |
| fBodyGyro.std().X               | frequency |   Gyroscope   |     Body   |   second   | standard deviation |     X     |
| fBodyGyro.std().Y               | frequency |   Gyroscope   |     Body   |   second   | standard deviation |     Y     |
| fBodyGyro.std().Z               | frequency |   Gyroscope   |     Body   |   second   | standard deviation |     Z     |
| fBodyGyro.meanFreq().X          | frequency |   Gyroscope   |     Body   |   second   |        mean        |     X     |
| fBodyGyro.meanFreq().Y          | frequency |   Gyroscope   |     Body   |   second   |        mean        |     Y     |
| fBodyGyro.meanFreq().Z          | frequency |   Gyroscope   |     Body   |   second   |        mean        |     Z     |
| fBodyAccMag.mean()              | frequency | Accelerometer |     Body   |   second   |        mean        | magnitude |
| fBodyAccMag.std()               | frequency | Accelerometer |     Body   |   second   | standard deviation | magnitude |
| fBodyAccMag.meanFreq()          | frequency | Accelerometer |     Body   |   second   |        mean        | magnitude |
| fBodyBodyAccJerkMag.mean()      | frequency | Accelerometer |     Body   |    third   |        mean        | magnitude |
| fBodyBodyAccJerkMag.std()       | frequency | Accelerometer |     Body   |    third   | standard deviation | magnitude |
| fBodyBodyAccJerkMag.meanFreq()  | frequency | Accelerometer |     Body   |    third   |        mean        | magnitude |
| fBodyBodyGyroMag.mean()         | frequency |   Gyroscope   |     Body   |   second   |        mean        | magnitude |
| fBodyBodyGyroMag.std()          | frequency |   Gyroscope   |     Body   |   second   | standard deviation | magnitude |
| fBodyBodyGyroMag.meanFreq()     | frequency |   Gyroscope   |     Body   |   second   |        mean        | magnitude |
| fBodyBodyGyroJerkMag.mean()     | frequency |   Gyroscope   |     Body   |    third   |        mean        | magnitude |
| fBodyBodyGyroJerkMag.std()      | frequency |   Gyroscope   |     Body   |    third   | standard deviation | magnitude |
| fBodyBodyGyroJerkMag.meanFreq() | frequency |   Gyroscope   |     Body   |    third   |        mean        | magnitude |

