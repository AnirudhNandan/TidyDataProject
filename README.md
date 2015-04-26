# Read Me
#### Contents of this repository named TidyDataProject
* README.md: This document
* run_analysis.R: File which tidies the given data set. In order for this file to run that data base must be in your working directory. That is the folder "UCI HAR Dataset" must be placed in your working directory.
* CodeBook.md: This gives you the details about various variables and attributes. Also explains how the resulting data frame was obtained.

#### Resulting dataset:
The resulting dataset was uploaded to coursera portal.

#### Procedure to read the resulting data set:
The data set was written using write.table(ResultRequired,row.names=FALSE) therefore to properly read the file into R you have to use data <- read.table(ResultRequired,header=TRUE). 
Refer: https://class.coursera.org/getdata-013/forum/thread?thread_id=30

#### Tidyness:
* It is a good practice to assign each measurement as a variable/column. In this project the mean and std measurements were made into columns.
* Subject and activities were made field in the data set.
* Therefore each subject has 6 observations in the dataframe and each observation has 66 measurements.
* There are 30 subjects therefore we have 180 observations.
* It can be said that my result falls in the "wide" dataframe category.
* Refer: http://vita.had.co.nz/papers/tidy-data.pdf
* Decomposing activity column will make the dataframe untidy. Refer: https://class.coursera.org/getdata-013/forum/thread?thread_id=30

#### Output:
* The relevant output is called 'ResultRequired' it is a data frame.
