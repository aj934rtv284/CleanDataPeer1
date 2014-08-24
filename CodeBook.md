---
title: "code book for har smart phone data set "
date: "Sunday, August 24, 2014"
output: html_document
---

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.




```r
Data.Book.Smart.Phone.Data1 <- read.csv("./Data-Book-Smart-Phone-Data1.csv")
Data.Book.Smart.Phone.Data1$Column.Name
```

```
##  [1] tBodyAcc-mean()-X               tBodyAcc-mean()-Y              
##  [3] tBodyAcc-mean()-Z               tBodyAcc-std()-X               
##  [5] tBodyAcc-std()-Y                tBodyAcc-std()-Z               
##  [7] tGravityAcc-mean()-X            tGravityAcc-mean()-Y           
##  [9] tGravityAcc-mean()-Z            tGravityAcc-std()-X            
## [11] tGravityAcc-std()-Y             tGravityAcc-std()-Z            
## [13] tBodyAccJerk-mean()-X           tBodyAccJerk-mean()-Y          
## [15] tBodyAccJerk-mean()-Z           tBodyAccJerk-std()-X           
## [17] tBodyAccJerk-std()-Y            tBodyAccJerk-std()-Z           
## [19] tBodyGyro-mean()-X              tBodyGyro-mean()-Y             
## [21] tBodyGyro-mean()-Z              tBodyGyro-std()-X              
## [23] tBodyGyro-std()-Y               tBodyGyro-std()-Z              
## [25] tBodyGyroJerk-mean()-X          tBodyGyroJerk-mean()-Y         
## [27] tBodyGyroJerk-mean()-Z          tBodyGyroJerk-std()-X          
## [29] tBodyGyroJerk-std()-Y           tBodyGyroJerk-std()-Z          
## [31] tBodyAccMag-mean()              tBodyAccMag-std()              
## [33] tGravityAccMag-mean()           tGravityAccMag-std()           
## [35] tBodyAccJerkMag-mean()          tBodyAccJerkMag-std()          
## [37] tBodyGyroMag-mean()             tBodyGyroMag-std()             
## [39] tBodyGyroJerkMag-mean()         tBodyGyroJerkMag-std()         
## [41] fBodyAcc-mean()-X               fBodyAcc-mean()-Y              
## [43] fBodyAcc-mean()-Z               fBodyAcc-std()-X               
## [45] fBodyAcc-std()-Y                fBodyAcc-std()-Z               
## [47] fBodyAcc-meanFreq()-X           fBodyAcc-meanFreq()-Y          
## [49] fBodyAcc-meanFreq()-Z           fBodyAccJerk-mean()-X          
## [51] fBodyAccJerk-mean()-Y           fBodyAccJerk-mean()-Z          
## [53] fBodyAccJerk-std()-X            fBodyAccJerk-std()-Y           
## [55] fBodyAccJerk-std()-Z            fBodyAccJerk-meanFreq()-X      
## [57] fBodyAccJerk-meanFreq()-Y       fBodyAccJerk-meanFreq()-Z      
## [59] fBodyGyro-mean()-X              fBodyGyro-mean()-Y             
## [61] fBodyGyro-mean()-Z              fBodyGyro-std()-X              
## [63] fBodyGyro-std()-Y               fBodyGyro-std()-Z              
## [65] fBodyGyro-meanFreq()-X          fBodyGyro-meanFreq()-Y         
## [67] fBodyGyro-meanFreq()-Z          fBodyAccMag-mean()             
## [69] fBodyAccMag-std()               fBodyAccMag-meanFreq()         
## [71] fBodyBodyAccJerkMag-mean()      fBodyBodyAccJerkMag-std()      
## [73] fBodyBodyAccJerkMag-meanFreq()  fBodyBodyGyroMag-mean()        
## [75] fBodyBodyGyroMag-std()          fBodyBodyGyroMag-meanFreq()    
## [77] fBodyBodyGyroJerkMag-mean()     fBodyBodyGyroJerkMag-std()     
## [79] fBodyBodyGyroJerkMag-meanFreq()
## 79 Levels: fBodyAcc-mean()-X fBodyAcc-mean()-Y ... tGravityAccMag-std()
```

```r
Data.Book.Smart.Phone.Data1$Description.Acceleration..and.Gyroscope.readings.for.30.Subjects
```

```
##  [1] Mean of the Body Acceleration with respect to the X-Axis of the Phone                                              
##  [2] Mean of the Body Acceleration with respect to the Y-Axis of the Phone                                              
##  [3] Mean of the Body Acceleration with respect to the Z-Axis of the Phone                                              
##  [4] Standard Deviation of the Body Acceleration with respect to the X-Axis of the Phone                                
##  [5] Standard Deviation of the Body Acceleration with respect to the Y-Axis of the Phone                                
##  [6] Standard Deviation of the Body Acceleration with respect to the Z-Axis of the Phone                                
##  [7] Mean of the Gravity Acceleration with respect to the X-Axis of the Phone                                           
##  [8]                                                                                                                    
##  [9]                                                                                                                    
## [10] Standard Deviation of the Gravity Acceleration with respect to the X-Axis of the Phone                             
## [11]                                                                                                                    
## [12]                                                                                                                    
## [13] Mean of the Body Acceleration Jerk with respect to the X-Axis of the Phone                                         
## [14]                                                                                                                    
## [15]                                                                                                                    
## [16] Standard Deviation of the Body Acceleration Jerk with respect to the X-Axis of the Phone                           
## [17]                                                                                                                    
## [18]                                                                                                                    
## [19] Mean of the Body Angular Speed with respect to the X-Axis of the Phone                                             
## [20]                                                                                                                    
## [21]                                                                                                                    
## [22] Standard Deviation of the Body Angular Speed with respect to the X-Axis of the Phone                               
## [23]                                                                                                                    
## [24]                                                                                                                    
## [25] Mean of the Body Angular Speed Jerk with respect to the X-Axis of the Phone                                        
## [26]                                                                                                                    
## [27]                                                                                                                    
## [28] Standard Deviation of the Body Angular Speed Jerk with respect to the X-Axis of the Phone                          
## [29]                                                                                                                    
## [30]                                                                                                                    
## [31] Mean of the Body Acceleration Magnitude with respect to the Phone                                                  
## [32]                                                                                                                    
## [33] Mean of the Gravity Acceleration Magnitude with respect to the Phone                                               
## [34]                                                                                                                    
## [35] Mean of the Body Acceleration Jerk Magnitude with respect to the Phone                                             
## [36]                                                                                                                    
## [37] Mean of the Body Angular Speed Magnitude with respect to the Phone                                                 
## [38]                                                                                                                    
## [39] Mean of the Body Angular Speed Jerk Magnitude with respect to the Phone                                            
## [40]                                                                                                                    
## [41] Fast Fourier Transform for Mean of the Body Acceleration with respect to the X-Axis of the Phone                   
## [42]                                                                                                                    
## [43]                                                                                                                    
## [44] Fast Fourier Transform for Standard Deviation of the Body Acceleration with respect to the X-Axis of the Phone     
## [45]                                                                                                                    
## [46]                                                                                                                    
## [47] Fast Fourier Transform for Mean Frequency of the Body Acceleration with respect to the X-Axis of the Phone         
## [48]                                                                                                                    
## [49]                                                                                                                    
## [50] Fast Fourier Transform for Mean of the Body Acceleration Jerk with respect to the X-Axis of the Phone              
## [51]                                                                                                                    
## [52]                                                                                                                    
## [53] Fast Fourier Transform for Standard Deviation of the Body Acceleration Jerk with respect to the X-Axis of the Phone
## [54]                                                                                                                    
## [55]                                                                                                                    
## [56] Fast Fourier Transform for Mean Frequency of the Body Acceleration Jerk with respect to the X-Axis of the Phone    
## [57]                                                                                                                    
## [58]                                                                                                                    
## [59] Fast Fourier Transform for Mean of the Body Angular Speed  with respect to the X-Axis of the Phone                 
## [60]                                                                                                                    
## [61]                                                                                                                    
## [62] Fast Fourier Transform for Standard Deviation of the Body Angular Speed  with respect to the X-Axis of the Phone   
## [63]                                                                                                                    
## [64]                                                                                                                    
## [65] Fast Fourier Transform for Mean Frequency of the Body Angular Speed  with respect to the X-Axis of the Phone       
## [66]                                                                                                                    
## [67]                                                                                                                    
## [68] Fast Fourier Transform for Mean of the Body Acceleration Magnitude with respect to the Phone                       
## [69]                                                                                                                    
## [70]                                                                                                                    
## [71] Fast Fourier Transform for Mean of the Body Acceleration Jerk Magnitude with respect to the Phone                  
## [72]                                                                                                                    
## [73] Fast Fourier Transform for Mean of the Body Acceleration Jerk Magnitude with respect to the Phone                  
## [74] Fast Fourier Transform for Mean of the Body Angular Speed Magnitude with respect to the Phone                      
## [75]                                                                                                                    
## [76]                                                                                                                    
## [77] Fast Fourier Transform for Mean of the Body Angular Speed Jerk Magnitude with respect to the Phone                 
## [78]                                                                                                                    
## [79] Fast Fourier Transform for Mean Frequency of the Body Angular Speed  Magnitude with respect to the Phone           
## 34 Levels:  ...
```




You can also embed plots, for example:




![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 




Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.





