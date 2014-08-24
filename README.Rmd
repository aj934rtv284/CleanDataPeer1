---
output: html_document
---
Human Activity Recogintion Using Smartphones Data Cleaning Project
====================================================================



This Project is for the Coursera Getting and Cleaning Data class to get information about this project see:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.




 You should create one R script called run_analysis.R that does the following. 

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 



The R script run_analysis.R was created to perform the above mention tasks.
In addition to this Readme.md file there is also a CodeBook.md file to
describe the variables used in this project.



* The run_analysis.R file reads the test and training sets from the UCI HAR Dataset directory
and merges them together. The following files are read:

* setfeatures.txt, activity_labels.txt, subject_train.txt, X_train.txt, y_train.txt, subject_test.txt  
X_test.txt, y_test.txt  

* Next the mean() and std() data rows are extracted from the full table.
The Accelerometer and Gyroscope data has been compiled for 30 Subjects
performing 6 activities. These are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,
SITTING, STANDING, and LAYING.

* The selection mean() and std() related variable creates a subset of 79 of 
the original 561 calculated or measured variables. In addition, the Subject
and Activity columns are added for identification. 

* Using Statistical Predictive functions the 79 variables would be used to predict
the Activity that the Subject is performing such as WALKING.

* The goal of this project is to perform the preliminary cleaning and packaging
of the data for the actual analysis.

* The CodeBook.md file has a more detailed description of each variable in the 
tidy data set. The Subjects are numbered 1 through 30 for this experiment.

* And, the Mean_of_Data_By_Subject_Activity.txt file has been generated from the
run_analysis.R file. This takes the 30 Subjects and 6 Activities or 180 combinations
and calculates the mean for each of the 79 Smartphone variables.

