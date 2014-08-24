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

| Variable Name         | Domain | Source        | Acceleration Signal | Derivative | quantity     | Component |
|-----------------------|--------|---------------|---------------------|------------|--------------|-----------|
| tBodyAcc.mean().X     | time   | Accelerometer | Body                | second     | mean         | X         |
| tBodyAcc.mean().Y     | time   | Accelerometer | Body                | second     | mean         | Y         |
| tBodyAcc.mean().Z     | time   | Accelerometer | Body                | second     | mean         | Z         |
| tBodyAcc.std().X      | time   | Accelerometer | Body                | second     | standard dev | X         |
| tBodyAcc.std().Y      | time   | Accelerometer | Body                | second     | standard dev | Y         |
| tBodyAcc.std().Z      | time   | Accelerometer | Body                | second     | standard dev | Z         |
| tGravityAcc.mean().X  | time   | Accelerometer | Gravity             | second     | mean         | X         |
| tGravityAcc.mean().Y  | time   | Accelerometer | Gravity             | second     | mean         | Y         |
| tGravityAcc.mean().Z  | time   | Accelerometer | Gravity             | second     | mean         | Z         |
| tGravityAcc.std().X   | time   | Accelerometer | Gravity             | second     | standard dev | X         |
| tGravityAcc.std().Y   | time   | Accelerometer | Gravity             | second     | standard dev | Y         |
| tGravityAcc.std().Z   | time   | Accelerometer | Gravity             | second     | standard dev | Z         |
| tBodyAccJerk.mean().X | time   | Accelerometer |                     | third      |              |           |
| tBodyAccJerk.mean().Y | time   | Accelerometer |                     | third      |              |           |


Variable                         Defintion
-------------------------------  ---------
tBodyAcc.mean().X                Mean body linear acceleration, X component
tBodyAcc.mean().Y                Mean body linear acceleration, Y component
tBodyAcc.mean().Z                Mean body linear acceleration, Z component
tBodyAcc.std().X                 Standard deviation body linear acceleration, X component
tBodyAcc.std().Y                 Standard deviation body linear acceleration, Y component
tBodyAcc.std().Z                 Standard deviation body linear acceleration, Z component
tGravityAcc.mean().X             Mean gravity linear acceleration, X component
tGravityAcc.mean().Y             Mean gravity linear acceleration, Y component
tGravityAcc.mean().Z             Mean gravity linear acceleration, Z component
tGravityAcc.std().X              Standard deviation gravity linear acceleration, X component
tGravityAcc.std().Y              Standard deviation gravity linear acceleration, Y component
tGravityAcc.std().Z              Standard deviation gravity linear acceleration, Z component
tBodyAccJerk.mean().X            Mean body linear jerk, X component
tBodyAccJerk.mean().Y            Mean body linear jerk, Y component
tBodyAccJerk.mean().Z            Mean body linear jerk, Z component
tBodyAccJerk.std().X             Standard deviation body linear jerk, X component
tBodyAccJerk.std().Y             Standard deviation body linear jerk, Y component
tBodyAccJerk.std().Z             Standard deviation body linear jerk, Z component
tBodyGyro.mean().X               Mean body gyro acceleration, X component
tBodyGyro.mean().Y               Mean body gyro acceleration, Y component
tBodyGyro.mean().Z               Mean body gyro acceleration, Z component
tBodyGyro.std().X                Standard deviation body gyro acceleration, X component
tBodyGyro.std().Y                Standard deviation body gyro acceleration, Y component
tBodyGyro.std().Z                Standard deviation body gyro acceleration, Z component
tBodyGyroJerk.mean().X           Mean body gyro jerk, X component
tBodyGyroJerk.mean().Y           Mean body gyro jerk, Y component
tBodyGyroJerk.mean().Z           Mean body gyro jerk, Z component
tBodyGyroJerk.std().X            Standard deviation body gyro jerk, X component
tBodyGyroJerk.std().Y            Standard deviation body gyro jerk, Y component
tBodyGyroJerk.std().Z            Standard deviation body gyro jerk, Z component
tBodyAccMag.mean()               Mean body linear acceleration magnitude
tBodyAccMag.std()                Standard deviation body linear acceleration magnitude
tGravityAccMag.mean()            Mean body gravity acceleration magnitude
tGravityAccMag.std()             Standard deviation body gravity acceleration magnitude
tBodyAccJerkMag.mean()           Mean body linear acceleration jerk magnitude
tBodyAccJerkMag.std()            Standard deviation body linear acceleration jerk
tBodyGyroMag.mean()              Mean body gyro magnitude
tBodyGyroMag.std()               Standard deviation gyro magnitude
tBodyGyroJerkMag.mean()          Mean body gyro jerk magnitude
tBodyGyroJerkMag.std()           Standard deviation body gyro jerk magnitude
fBodyAcc.mean().X                FFT Mean body linear acceleration, X component
fBodyAcc.mean().Y                FFT Mean body linear acceleration, Y component
fBodyAcc.mean().Z                FFT Mean body linear acceleration, Z component
fBodyAcc.std().X                 FFT Standard deviation body linear acceleration, X component
fBodyAcc.std().Y                 FFT Standard deviation body linear acceleration, Y component
fBodyAcc.std().Z                 FFT Standard deviation body linear acceleration, Z component
fBodyAcc.meanFreq().X            FFT Mean frequency body linear acceleration, X component
fBodyAcc.meanFreq().Y            FFT Mean frequency body linear acceleration, Y component
fBodyAcc.meanFreq().Z            FFT Mean frequency body linear acceleration, Z component
fBodyAccJerk.mean().X            FFT Mean body linear jerk, X component
fBodyAccJerk.mean().Y            FFT Mean body linear jerk, Y component
fBodyAccJerk.mean().Z            FFT Mean body linear jerk, Z component
fBodyAccJerk.std().X             FFT Standard deviation body linear jerk, X component
fBodyAccJerk.std().Y             FFT Standard deviation body linear jerk, Y component
fBodyAccJerk.std().Z             FFT Standard deviation body linear jerk, Z component
fBodyAccJerk.meanFreq().X        FFT Mean frequency body linear jerk, X component
fBodyAccJerk.meanFreq().Y        FFT Mean frequency body linear jerk, Y component
fBodyAccJerk.meanFreq().Z        FFT Mean frequency body linear jerk, Z component
fBodyGyro.mean().X               FFT Mean body gyro acceleration, X component
fBodyGyro.mean().Y               FFT Mean body gyro acceleration, Y component
fBodyGyro.mean().Z               FFT Mean body gyro acceleration, Z component
fBodyGyro.std().X                FFT Standard deviation body gyro acceleration, X component
fBodyGyro.std().Y                FFT Standard deviation body gyro acceleration, Y component
fBodyGyro.std().Z                FFT Standard deviation body gyro acceleration, Z component
fBodyGyro.meanFreq().X           FFT Mean frequency body gyro acceleration, X component
fBodyGyro.meanFreq().Y           FFT Mean frequency body gyro acceleration, Y component
fBodyGyro.meanFreq().Z           FFT Mean frequency body gyro acceleration, Z component
fBodyAccMag.mean()               FFT Mean body linear acceleration magnitude
fBodyAccMag.std()                FFT Standard deviation body linear acceleration magnitude
fBodyAccMag.meanFreq()           FFT Mean frequency body linear acceleration magnitude
fBodyBodyAccJerkMag.mean()       FFT Mean body body linear jerk magnitude
fBodyBodyAccJerkMag.std()        FFT Standard deviation body body linear jerk magnitude
fBodyBodyAccJerkMag.meanFreq()   FFT Mean frequency body body linear jerk magnitude
fBodyBodyGyroMag.mean()          FFT Mean body body gyro acceleration magnitude
fBodyBodyGyroMag.std()           FFT Standard deviation body body gyro acceleration magnitude
fBodyBodyGyroMag.meanFreq()      FFT Mean frequency body body gyro acceleration magnitude
fBodyBodyGyroJerkMag.mean()      FFT Mean body body gyro jerk magnitude
fBodyBodyGyroJerkMag.std()       FFT Standard deviation body body gyro jerk magnitude
fBodyBodyGyroJerkMag.meanFreq()  FFT Mean frequency body body gyro jerk magnitude

