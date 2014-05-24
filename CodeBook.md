### Original data:

- [Data Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


### Cleaning Data Steps

Following data transformations are carried out by the `run_analysis.R` script.

1. For each of the training and test datasets, merge the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set.
4. Label the data set with descriptive activity names.
5. Creates an independent tidy data set with the average of each variable for each activity and each subject.
6. Save the result in re-casted dataset as `clean_and_tidy.txt`

### Variable Descriptions

The data for this data set was derived from sources mentioned in the "Original data" section of this document. The description below was taken from the original data description.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:
- mean: Mean value
- std: Standard deviation

#### Cleaned Columns

1.	subject 	: ID indicating the subject from whom data was collected
2.	activity 	: Activity being performed
3.	tbodyacc-mean-x	
4.	tbodyacc-mean-y	
5.	tbodyacc-mean-z	
6.	tbodyacc-std-x	
7.	tbodyacc-std-y	
8.	tbodyacc-std-z	
9.	tgravityacc-mean-x	
10.	tgravityacc-mean-y	
11.	tgravityacc-mean-z	
12.	tgravityacc-std-x	
13.	tgravityacc-std-y	
14.	tgravityacc-std-z	
15.	tbodyaccjerk-mean-x	
16.	tbodyaccjerk-mean-y	
17.	tbodyaccjerk-mean-z	
18.	tbodyaccjerk-std-x	
19.	tbodyaccjerk-std-y	
20.	tbodyaccjerk-std-z	
21.	tbodygyro-mean-x	
22.	tbodygyro-mean-y	
23.	tbodygyro-mean-z	
24.	tbodygyro-std-x	
25.	tbodygyro-std-y	
26.	tbodygyro-std-z	
27.	tbodygyrojerk-mean-x	
28.	tbodygyrojerk-mean-y	
29.	tbodygyrojerk-mean-z	
30.	tbodygyrojerk-std-x	
31.	tbodygyrojerk-std-y	
32.	tbodygyrojerk-std-z	
33.	tbodyaccmag-mean 	
34.	tbodyaccmag-std	
35.	tgravityaccmag-mean 	
36.	tgravityaccmag-std 	
37.	tbodyaccjerkmag-mean 	
38.	tbodyaccjerkmag-std 	
39.	tbodygyromag-mean 	
40.	tbodygyromag-std 	
41.	tbodygyrojerkmag-mean 	
42.	tbodygyrojerkmag-std 	
43.	fbodyacc-mean-x 	
44.	fbodyacc-mean-y 	
45.	fbodyacc-mean-z 	
46.	fbodyacc-std-x 	
47.	fbodyacc-std-y 	
48.	fbodyacc-std-z 	
49.	fbodyaccjerk-mean-x 	
50.	fbodyaccjerk-mean-y 	
51.	fbodyaccjerk-mean-z 	
52.	fbodyaccjerk-std-x 	
53.	fbodyaccjerk-std-y 	
54.	fbodyaccjerk-std-z 	
55.	fbodygyro-mean-x 	
56.	fbodygyro-mean-y	
57.	fbodygyro-mean-z	
58.	fbodygyro-std-x 	
59.	fbodygyro-std-y	
60.	fbodygyro-std-z	
61.	fbodyaccmag-mean	
62.	fbodyaccmag-std	
63.	fbodybodyaccjerkmag-mean	
64.	fbodybodyaccjerkmag-std	
65.	fbodybodygyromag-mean	
66.	fbodybodygyromag-std	
67.	fbodybodygyrojerkmag-mean	
68.	fbodybodygyrojerkmag-std	
