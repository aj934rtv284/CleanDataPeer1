#######     CLEAN ALL DATA - Smart phone Exercise Data


#     You should create one R script called run_analysis.R that does the following. 







# 1. Merges the training and the test sets to create one data set.

###  Load Data 

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", quote="\"")

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", quote="\"")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", quote="\"")



X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", quote="\"")

y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", quote="\"")

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", quote="\"")



features <- read.table("./UCI HAR Dataset/features.txt", quote="\"")

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", quote="\"")

###  END OF Load Data 


### COmplete CASES

table(complete.cases(X_train))

table(complete.cases(X_test))



# Creaste DF data frames - Add labels

df_train <- data.frame(X_train)

names(df_train) <- (features$V2)

df_test <- data.frame(X_test)

names(df_test) <- (features$V2)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 


### Subset to STD | MEAN columns

std_mean <- grep("std|mean", features$V2, perl=TRUE, value=TRUE)

std_mean

logic_std_mean <- names(df_train) %in% std_mean

df_train_std_mean <- df_train[logic_std_mean]

df_test_std_mean <- df_test[logic_std_mean]



# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 


#### Combine TEST & TRAIN - add LABELS

df_all_std_mean <- rbind(df_train_std_mean,df_test_std_mean)

labels_logic <- replace((rbind(y_train,y_test))$V1, activity_labels$V1, activity_labels$V2)

df_all_labels <- data.frame(activity_labels$V2[labels_logic])

df_all_81_col_std_mean <- cbind(df_all_std_mean,rbind(subject_train,subject_test),df_all_labels)

colnames(df_all_81_col_std_mean)

colnames(df_all_81_col_std_mean)[80] <- "Subject"

colnames(df_all_81_col_std_mean)[81] <- "Activity"


# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Agregate date - Create 2nd Tidy Data Set

attach(df_all_81_col_std_mean)

Mean_of_Data_By_Subject_Activity <- aggregate(df_all_81_col_std_mean[,std_mean], by=list(Subject,Activity), FUN=mean, na.rm=TRUE)

colnames(Mean_of_Data_By_Subject_Activity)[1] <- "Group.By.Subject"

colnames(Mean_of_Data_By_Subject_Activity)[2] <- "Group.By.Activity"



write.table(Mean_of_Data_By_Subject_Activity, "d:/data/Mean_of_Data_By_Subject_Activity.txt", sep=",", row.name=FALSE) 

