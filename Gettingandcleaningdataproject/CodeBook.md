#CodeBook
==============================================================================================

The file describes the data, the variables, and the work that has been performed to clean up the data.

##Data set Description:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activates (Walking, walking_upstairs, walking_downstairs, sitting, standing, laying)wearing a smartphone (Samsung galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axil Linear acceleration and 3-axil angular velocity at constant rate of 50HZ. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding window of 2.56 sec and 50% overlap(128 reading/window). The sensor acceleration signal, which has gravitational and body motion components was separated using a Bluetooth Low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components; therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##For each record it is provided
•	Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.

•	Triaxial Angular velocity from the gyroscope.

•	A 561-feature vector with time and frequency domain variables.

•	Its activity label.

•	An identifier of the subject who carried out the experiment.

##The Data set includes the following files.

•	‘Features_info.txt’: Shows information about the variables used on the feature vector.

•	‘Features.txt’: List of all features.

•	‘activity_labels.txt’: Links the class labels with their activity name.

•	‘train/X_train.txt’: Training set.

•	‘train/y_train.txt’ : Training labels.

•	‘test/X_test.txt’ : Test set.

•	‘test/y_test.txt’: Test labels.

•	'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

•	'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

•	'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

•	'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

##Transformation Details

1.	Merges the training and the test sets to create one data set.

2.	Extracts only the measurements on the mean and standard deviation for each measurement.

3.	Uses descriptive activity names to name the activates in the data set.

4.	Appropriately labels the data set with the descriptive activity names.

5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##The Description of variables used in run_analysis.R:

•	Load the train and test data sets of x and y and store them in “X_train”, “x_test”, “y_train” and “y_test” respectively.

•	Load the features dataset from “fetures.txt” and store it in the “features” variable. 

•	The variable “activity_labels” contain the dataset of activity labels loaded from activity_labels.txt.

•	The variable “X_Dataset” contain the merged data set of x_train and x_test.

•	The variable “Y_Dataset” contain the merged data set of y_train and x_test.

•	The variable “subject” contain the merged data set of subject_train and subject_test.

•	Section 2. Here we create a Logical vector “indices_of_mean_and_stats” which contain indices of the measurements on mean and standard deviation and then we create a data frame “mean_and_std” which only contain the extracted measurements values.

•	“Total_activity_labels” contain the number of rows in activity_labels dataset.

•	Load the activity type labels and replace the activity id indices with activity names in “Y_Dataset.

•	X_with_labels” contains the column merged data of “Y_Dataset” and “X_Dataset”.

•	“mean_and_std_with_labels” contains the column merged data of “Y_Dataset” and “X_Dataset” and “mean_and_std”. and change the column names to proper column names. This fulfills the requirement 4.

•	“Average” contain the an independent tidy dataset with the average of each variable for each activity and each subject. 


