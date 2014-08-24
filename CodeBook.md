---
output: html_document
---
Code Book for HAR Smartphone Data Set for the Mean() and Std() Values Only
===========================================================================



###Feature Selection 



The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


To download the data set use the following link:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>.



Variable Name                | Type | Domain  |          Variable Label
-----------------------------|------|---------|--------------------------------------------------------------------------
tBodyAcc-mean()-X | num | time | Mean of the Body Acceleration with respect to the X-Axis of the Phone
tBodyAcc-mean()-Y | num | time | Mean of the Body Acceleration with respect to the Y-Axis of the Phone
tBodyAcc-mean()-Z | num | time | Mean of the Body Acceleration with respect to the Z-Axis of the Phone
tBodyAcc-std()-X | num | time | Standard Deviation of the Body Acceleration with respect to the X-Axis of the Phone
tBodyAcc-std()-Y | num | time | Standard Deviation of the Body Acceleration with respect to the Y-Axis of the Phone
tBodyAcc-std()-Z | num | time | Standard Deviation of the Body Acceleration with respect to the Z-Axis of the Phone
tGravityAcc-mean()-X | num | time | Mean of the Gravity Acceleration with respect to the X-Axis of the Phone
tGravityAcc-mean()-Y | num | time | Mean of the Gravity Acceleration with respect to the Y-Axis of the Phone
tGravityAcc-mean()-Z | num | time | Mean of the Gravity Acceleration with respect to the Z-Axis of the Phone
tGravityAcc-std()-X | num | time | Standard Deviation of the Gravity Acceleration with respect to the X-Axis of the Phone
tGravityAcc-std()-Y | num | time | Standard Deviation of the Gravity Acceleration with respect to the Y-Axis of the Phone
tGravityAcc-std()-Z | num | time | Standard Deviation of the Gravity Acceleration with respect to the Z-Axis of the Phone
tBodyAccJerk-mean()-X | num | time | Mean of the Body Acceleration Jerk with respect to the X-Axis of the Phone
tBodyAccJerk-mean()-Y | num | time | Mean of the Body Acceleration Jerk with respect to the Y-Axis of the Phone
tBodyAccJerk-mean()-Z | num | time | Mean of the Body Acceleration Jerk with respect to the Z-Axis of the Phone
tBodyAccJerk-std()-X | num | time | Standard Deviation of the Body Acceleration Jerk with respect to the X-Axis of the Phone
tBodyAccJerk-std()-Y | num | time | Standard Deviation of the Body Acceleration Jerk with respect to the Y-Axis of the Phone
tBodyAccJerk-std()-Z | num | time | Standard Deviation of the Body Acceleration Jerk with respect to the Z-Axis of the Phone
tBodyGyro-mean()-X | num | time | Mean of the Body Angular Speed with respect to the X-Axis of the Phone
tBodyGyro-mean()-Y | num | time | Mean of the Body Angular Speed with respect to the Y-Axis of the Phone
tBodyGyro-mean()-Z | num | time | Mean of the Body Angular Speed with respect to the Z-Axis of the Phone
tBodyGyro-std()-X | num | time | Standard Deviation of the Body Angular Speed with respect to the X-Axis of the Phone
tBodyGyro-std()-Y | num | time | Standard Deviation of the Body Angular Speed with respect to the Y-Axis of the Phone
tBodyGyro-std()-Z | num | time | Standard Deviation of the Body Angular Speed with respect to the Z-Axis of the Phone
tBodyGyroJerk-mean()-X | num | time | Mean of the Body Angular Speed Jerk with respect to the X-Axis of the Phone
tBodyGyroJerk-mean()-Y | num | time | Mean of the Body Angular Speed Jerk with respect to the Y-Axis of the Phone
tBodyGyroJerk-mean()-Z | num | time | Mean of the Body Angular Speed Jerk with respect to the Z-Axis of the Phone
tBodyGyroJerk-std()-X | num | time | Standard Deviation of the Body Angular Speed Jerk with respect to the X-Axis of the Phone
tBodyGyroJerk-std()-Y | num | time | Standard Deviation of the Body Angular Speed Jerk with respect to the Y-Axis of the Phone
tBodyGyroJerk-std()-Z | num | time | Standard Deviation of the Body Angular Speed Jerk with respect to the Z-Axis of the Phone
tBodyAccMag-mean() | num | time | Mean of the Body Acceleration Magnitude with respect to the Phone
tBodyAccMag-std() | num | time | Standard Deviation of the Body Acceleration Magnitude with respect to the Phone
tGravityAccMag-mean() | num | time | Mean of the Gravity Acceleration Magnitude with respect to the Phone
tGravityAccMag-std() | num | time | Standard Deviation of the Gravity Acceleration Magnitude with respect to the Phone
tBodyAccJerkMag-mean() | num | time | Mean of the Body Acceleration Jerk Magnitude with respect to the Phone
tBodyAccJerkMag-std() | num | time | Standard Deviation of the Body Acceleration Jerk Magnitude with respect to the Phone
tBodyGyroMag-mean() | num | time | Mean of the Body Angular Speed Magnitude with respect to the Phone
tBodyGyroMag-std() | num | time | Standard Deviation of the Body Angular Speed Magnitude with respect to the Phone
tBodyGyroJerkMag-mean() | num | time | Mean of the Body Angular Speed Jerk Magnitude with respect to the Phone
tBodyGyroJerkMag-std() | num | time | Standard Deviation of the Body Angular Speed Jerk Magnitude with respect to the Phone
fBodyAcc-mean()-X | num | frequency | Fast Fourier Transform for Mean of the Body Acceleration with respect to the X-Axis of the Phone
fBodyAcc-mean()-Y | num | frequency | Fast Fourier Transform for Mean of the Body Acceleration with respect to the Y-Axis of the Phone
fBodyAcc-mean()-Z | num | frequency | Fast Fourier Transform for Mean of the Body Acceleration with respect to the Z-Axis of the Phone
fBodyAcc-std()-X | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Acceleration with respect to the X-Axis of the Phone
fBodyAcc-std()-Y | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Acceleration with respect to the Y-Axis of the Phone
fBodyAcc-std()-Z | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Acceleration with respect to the Z-Axis of the Phone
fBodyAcc-meanFreq()-X | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Acceleration with respect to the X-Axis of the Phone
fBodyAcc-meanFreq()-Y | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Acceleration with respect to the Y-Axis of the Phone
fBodyAcc-meanFreq()-Z | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Acceleration with respect to the Z-Axis of the Phone
fBodyAccJerk-mean()-X | num | frequency | Fast Fourier Transform for Mean of the Body Acceleration Jerk with respect to the X-Axis of the Phone
fBodyAccJerk-mean()-Y | num | frequency | Fast Fourier Transform for Mean of the Body Acceleration Jerk with respect to the Y-Axis of the Phone
fBodyAccJerk-mean()-Z | num | frequency | Fast Fourier Transform for Mean of the Body Acceleration Jerk with respect to the Z-Axis of the Phone
fBodyAccJerk-std()-X | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Acceleration Jerk with respect to the X-Axis of the Phone
fBodyAccJerk-std()-Y | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Acceleration Jerk with respect to the Y-Axis of the Phone
fBodyAccJerk-std()-Z | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Acceleration Jerk with respect to the Z-Axis of the Phone
fBodyAccJerk-meanFreq()-X | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Acceleration Jerk with respect to the X-Axis of the Phone
fBodyAccJerk-meanFreq()-Y | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Acceleration Jerk with respect to the Y-Axis of the Phone
fBodyAccJerk-meanFreq()-Z | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Acceleration Jerk with respect to the Z-Axis of the Phone
fBodyGyro-mean()-X | num | frequency | Fast Fourier Transform for Mean of the Body Angular Speed  with respect to the X-Axis of the Phone
fBodyGyro-mean()-Y | num | frequency | Fast Fourier Transform for Mean of the Body Angular Speed  with respect to the Y-Axis of the Phone
fBodyGyro-mean()-Z | num | frequency | Fast Fourier Transform for Mean of the Body Angular Speed  with respect to the Z-Axis of the Phone
fBodyGyro-std()-X | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Angular Speed  with respect to the X-Axis of the Phone
fBodyGyro-std()-Y | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Angular Speed  with respect to the Y-Axis of the Phone
fBodyGyro-std()-Z | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Angular Speed  with respect to the Z-Axis of the Phone
fBodyGyro-meanFreq()-X | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Angular Speed  with respect to the X-Axis of the Phone
fBodyGyro-meanFreq()-Y | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Angular Speed  with respect to the Y-Axis of the Phone
fBodyGyro-meanFreq()-Z | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Angular Speed  with respect to the Z-Axis of the Phone
fBodyAccMag-mean() | num | frequency | Fast Fourier Transform for Mean of the Body Acceleration Magnitude with respect to the Phone
fBodyAccMag-std() | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Acceleration Magnitude with respect to the Phone
fBodyAccMag-meanFreq() | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Acceleration Magnitude with respect to the Phone
fBodyBodyAccJerkMag-mean() | num | frequency | Fast Fourier Transform for Mean of the Body Acceleration Jerk Magnitude with respect to the Phone
fBodyBodyAccJerkMag-std() | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Acceleration Jerk Magnitude with respect to the Phone
fBodyBodyAccJerkMag-meanFreq() | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Acceleration Jerk Magnitude with respect to the Phone
fBodyBodyGyroMag-mean() | num | frequency | Fast Fourier Transform for Mean of the Body Angular Speed Magnitude with respect to the Phone
fBodyBodyGyroMag-std() | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Angular Speed Magnitude with respect to the Phone
fBodyBodyGyroMag-meanFreq() | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Angular Speed Magnitude with respect to the Phone
fBodyBodyGyroJerkMag-mean() | num | frequency | Fast Fourier Transform for Mean of the Body Angular Speed Jerk Magnitude with respect to the Phone
fBodyBodyGyroJerkMag-std() | num | frequency | Fast Fourier Transform for Standard Deviation of the Body Angular Speed Jerk Magnitude with respect to the Phone
fBodyBodyGyroJerkMag-meanFreq() | num | frequency | Fast Fourier Transform for Mean Frequency of the Body Angular Speed  Magnitude with respect to the Phone


