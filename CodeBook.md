# CodeBook.md

#### Experimental design and background:
30 subjects performed 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing Samsung Galaxy S II phone on their waist. Using the in-built sensors of phone the accelerometer and gyroscope 3-axial linear acceleration and 3-axial angular velocity were captured. Various calculations were performed 561 features were obtained for each (subject,activity) pair. Features are normalized and bounded within [-1,1].

#### Raw data:
The raw data cosists of two sets (training and test datasets). Vectors named 'y_train.txt' and 'y_test.txt' contain values which identify various activities. Activities were identified using numbers [1 to 6] and key is given below.
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

Subjects were identifies using numbers [1 to 30] and the names of subjects was withheld. Subjects were listed in 'subject_train.txt' and 'subject_test.txt' files.

Each (subject,activity) pair had 561 values called features associated with them. The feature values were contained in 'X_train.txt' and 'X_test.txt' files.

#### Tidy dataset:

The file 'run_analysis.R' manipulates the given dataset to produce a tidy dataset. First of all training and test data sets were combined row wise in order to produce a taller datasets. Then subject identifiers, activity identifies, and features were combined column wise in order to create a wider dataset. Only features which had either "mean()" or "std()" in their names were subsetted in order to get a dataset with 66 features. The resulting dataset had subject as the first column, the activity as the second column and the 66 features as columns 3 to 68. Column names were given appropriate descriptive names and activities were given appropriate descriptive names. Ultimately, the means of various features were computed for each (subject,activity) pairs. There were 30 subjects and each of them performed 6 activities and therefore we get 180 observations. The description of each column name is provided in the following table.

#### Column keys:
###### 1. subject: 1,2,3,...,30.
    The subject who performed the activity.
###### 2. activity: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
    The activity which the subject performed.
###### 3. tBodyAccMeanX:
    The mean of body acceleration signal in X axis in time domain.
###### 4. tBodyAccMeanY:
    The mean of body acceleration signal in Y axis in time domain.
###### 5. tBodyAccMeanZ:
    The mean of body acceleration signal in Z axis in time domain.
###### 6. tGravityAccMeanX:
    The mean of gravity acceleration signal in X axis in time domain.
###### 7. tGravityAccMeanY:
    The mean of gravity acceleration signal in Y axis in time domain.
###### 8. tGravityAccMeanZ:
    The mean of gravity acceleration signal in Z axis in time domain.
###### 9. tBodyAccJerkMeanX:
    The mean of body jerk acceleration signal in X axis in time domain.
###### 10. tBodyAccJerkMeanX:
    The mean of body jerk acceleration signal in Y axis in time domain.
###### 11. tBodyAccJerkMeanX:
    The mean of body jerk acceleration signal in Z axis in time domain.
