# CodeBook.md

#### Experimental design and background:
30 subjects performed 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing Samsung Galaxy S II phone on their waist. Using the in-built sensors of phone i.e. the accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured. Various calculations were performed and 561 features were obtained for each (subject,activity) pair. Features are normalized and bounded within [-1,1] with unit 'g' the acceleration due to gravity.

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
###### 3. tBodyAccMeanX: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body acceleration signal in X axis in time domain.
###### 4. tBodyAccMeanY: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body acceleration signal in Y axis in time domain.
###### 5. tBodyAccMeanZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body acceleration signal in Z axis in time domain.
###### 6. tGravityAccMeanX: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of gravity acceleration signal in X axis in time domain.
###### 7. tGravityAccMeanY: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of gravity acceleration signal in Y axis in time domain.
###### 8. tGravityAccMeanZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of gravity acceleration signal in Z axis in time domain.
###### 9. tBodyAccJerkMeanX: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body jerk acceleration signal in X axis in time domain.
###### 10. tBodyAccJerkMeanY: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body jerk acceleration signal in Y axis in time domain.
###### 11. tBodyAccJerkMeanZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body jerk acceleration signal in Z axis in time domain.
###### 12. tBodyGyroMeanX: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope signal in X axis in time domain.
###### 13. tBodyGyroMeanY: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope signal in Y axis in time domain.
###### 14. tBodyGyroMeanZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope signal in Z axis in time domain.
###### 15. tBodyGyroJerkMeanX: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope jerk signal in X axis in time domain.
###### 16. tBodyGyroJerkMeanY: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope jerk signal in Y axis in time domain.
###### 17. tBodyGyroJerkMeanZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope jerk signal in Z axis in time domain.
###### 18. tBodyAccMagMean: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body acceleration magnitude signal in time domain.
###### 19. tGravityAccMagMean: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of gravity acceleration magnitude signal in time domain.
###### 20. tBodyAccJerkMagMean: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body acceleration jerk magnitude signal in time domain.
###### 21. tBodyGyroMagMean: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope magnitude signal in time domain.
###### 22. tBodyGyroJerkMagMean: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope jerk magnitude signal in time domain.
###### 23. fBodyAccMeanX: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body acceleration signal in X axis in frequency domain.
###### 24. fBodyAccMeanY: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body acceleration signal in Y axis in frequency domain.
###### 25. fBodyAccMeanZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body acceleration signal in Z axis in frequency domain.
###### 26. fBodyAccJerkMeanX: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body jerk acceleration signal in X axis in frequency domain.
###### 27. fBodyAccJerkMeanY: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body jerk acceleration signal in Y axis in frequency domain.
###### 28. fBodyAccJerkMeanZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body jerk acceleration signal in Z axis in frequency domain.
###### 29. fBodyGyroMeanX: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope signal in X axis in frequency domain.
###### 30. fBodyGyroMeanY: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope signal in Y axis in frequency domain.
###### 31. fBodyGyroMeanZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope signal in Z axis in frequency domain.
###### 32. fBodyAccMagMean: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body acceleration magnitude signal in frequency domain.
###### 33. fBodyBodyAccJerkMagMean: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body acceleration jerk magnitude signal in frequency domain.
###### 34. fBodyBodyGyroMagMean: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope magnitude signal in frequency domain.
###### 35. fBodyBodyGyroJerkMagMean: [-1,1] normalized values unit: g (accel. due to gravity)
    The mean of body gyroscope magnitude signal in frequency domain.
###### 36. tBodyAccStdX: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body acceleration signal in X axis in time domain.
###### 37. tBodyAccStdY: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body acceleration signal in Y axis in time domain.
###### 38. tBodyAccStdZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body acceleration signal in Z axis in time domain.
###### 39. tGravityAccStdX: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of gravity acceleration signal in X axis in time domain.
###### 40. tGravityAccStdY: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of gravity acceleration signal in Y axis in time domain.
###### 41. tGravityAccStdZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of gravity acceleration signal in Z axis in time domain.
###### 42. tBodyAccJerkStdX: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body jerk acceleration signal in X axis in time domain.
###### 43. tBodyAccJerkStdY: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body jerk acceleration signal in Y axis in time domain.
###### 44. tBodyAccJerkStdZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body jerk acceleration signal in Z axis in time domain.
###### 45. tBodyGyroStdX: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope signal in X axis in time domain.
###### 46. tBodyGyroStdY: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope signal in Y axis in time domain.
###### 47. tBodyGyroStdZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope signal in Z axis in time domain.
###### 48. tBodyGyroJerkStdX: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope jerk signal in X axis in time domain.
###### 49. tBodyGyroJerkStdY: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope jerk signal in Y axis in time domain.
###### 50. tBodyGyroJerkStdZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope jerk signal in Z axis in time domain.
###### 51. tBodyAccMagStd: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body acceleration magnitude signal in time domain.
###### 52. tGravityAccMagStd: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of gravity acceleration magnitude signal in time domain.
###### 53. tBodyAccJerkMagStd: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body acceleration jerk magnitude signal in time domain.
###### 54. tBodyGyroMagStd: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope magnitude signal in time domain.
###### 55. tBodyGyroJerkMagStd: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope jerk magnitude signal in time domain.
###### 56. fBodyAccStdX: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body acceleration signal in X axis in frequency domain.
###### 57. fBodyAccStdY: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body acceleration signal in Y axis in frequency domain.
###### 58. fBodyAccStdZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body acceleration signal in Z axis in frequency domain.
###### 59. fBodyAccJerkStdX: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body jerk acceleration signal in X axis in frequency domain.
###### 60. fBodyAccJerkStdY: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body jerk acceleration signal in Y axis in frequency domain.
###### 61. fBodyAccJerkStdZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body jerk acceleration signal in Z axis in frequency domain.
###### 62. fBodyGyroStdX: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope signal in X axis in frequency domain.
###### 663. fBodyGyroStdY: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope signal in Y axis in frequency domain.
###### 64. fBodyGyroStdZ: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope signal in Z axis in frequency domain.
###### 65. fBodyAccMagStd: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body acceleration magnitude signal in frequency domain.
###### 66. fBodyBodyAccJerkMagStd: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body acceleration jerk magnitude signal in frequency domain.
###### 67. fBodyBodyGyroMagStd: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope magnitude signal in frequency domain.
###### 68. fBodyBodyGyroJerkMagStd: [-1,1] normalized values unit: g (accel. due to gravity)
    The standard deviation of body gyroscope jerk magnitude signal in frequency domain.

