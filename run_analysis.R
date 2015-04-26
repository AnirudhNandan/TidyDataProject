## This R script extracts data from the provided "Samsung" database and constructs -
## a data frame of means for each activity for each subject
## lines 4 to 10 various data tables are extracted
sub_test <- read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE)
sub_train <- read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE)
x_test <- read.table("UCI HAR Dataset/test/X_test.txt",header=FALSE)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt",header=FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt",header=FALSE)
features <- read.table("UCI HAR Dataset/features.txt",header=FALSE)
library(dplyr)
features <- select(features,-V1) ## only second column is required
features$V2 <- gsub("-","",features$V2) ## removes "-" from feature names
## lines 15 to 17 combine train and test data
X <- rbind(x_train,x_test)
Y <- rbind(y_train,y_test)
subject_name <- rbind(sub_train,sub_test)
## forms data base having various features as measurements
dataSet <- cbind(subject_name,Y,X)
## extracts features which are either "mean()" or "std()"
se_fe <- sapply(c("mean\\(\\)","std\\(\\)"),grep,features$V2)
match_mean <- se_fe[,1] + 2 ## indices of features with "mean()"
match_std <- se_fe[,2] + 2 ## indices of features with "std()"
## +2 in lines 20 & 21 because feature list is shifted by two columns in the database
match_vec <- c(match_mean,match_std) ## combined vector of column indices to be extracted
dataSet <- dataSet[,c(1,2,match_vec)] ## extracted data frame
## getting feature desciptive names
se_fe <- sapply(c("mean\\(\\)","std\\(\\)"),grep,features$V2,value=TRUE)
match_names <- c(se_fe[,1],se_fe[,2]) ## combined vector of column names
match_names <- gsub("\\(\\)","",match_names) ## removing "()" from feature names
match_names <- gsub("mean","Mean",match_names) ## converting "mean" to CamelCase
match_names <- gsub("std","Std",match_names) ## converting "std" to CamelCase
## asigning descriptive names to data frame columns
names(dataSet) <- c("subject","activity",match_names)
dataSet$activity <- as.factor(dataSet$activity) ## converting activity atributes to factor
## asigning descriptive names to activities; they get sorted 1,2,3..6 in the process
dataSet$activity <- factor(dataSet$activity,labels = c("WALKING","WALKING_UPSTAIRS",
                                                        "WALKING_DOWNSTAIRS","SITTING",
                                                        "STANDING","LAYING"))
## data frame is melted such that all features become measured variables
dataSetMelt <- melt(dataSet,id=c("subject","activity"),measure.vars=match_names)
selCast <- data.frame() ## initialize data frame
for(i in 1:30){
        ## computes means of various "mean()" and "std()" measurements
        ## for each activity for each subject
        ## Subjects are called from 1to30 therefore data set gets sorted in this process
        selCast <- rbind(selCast,dcast(filter(dataSetMelt,subject==i),
                                       activity~variable,mean))
}
subject <- c() ## initialize vector
for(i in 1:30){
        ## computes vector with subject ids
        subject <- c(subject,rep(i,6))
}
## the required tidy data set contains subject ids in first column, 
## activites performed in second column
## and means of 66 measurements
## note: only measurements with "mean()" or "std()" where included
ResultRequired <- cbind(subject,selCast)