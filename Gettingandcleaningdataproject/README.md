#Gettingandcleaningdataproject
=============================
=============================

##The Raw Data;
The raw data contain two separate files, one is testing and one is training. Both the dataset contain the features (561 of them) are unlabeled and can be found in x_test.txt and X_training.txt. The activity labels are in y_test.txt and y_training.txt file. The subjects are in the subject_test.txt and subject_training.txt file. 
##About the Script: 

*Run_analysis.R* contains a script which will perform the following operations. This prerequisite of the script is that the data should be extracted and you have to set the working directory according to your computer local drive.

*Step 1: Load the data and merge the dataset.*

  •Load the feature vector label data from “features.txt”
  
  •	After that we load the training and testing data set from “x_test.txt” and “y_test.txt”. and names the unlabeled         dataset using the dataset we loaded from “features.txt”.
  
  •	Then we load the subject data set from “subject_train.txt” and “subject_test.txt” and name the columns of both dataset.
  
  •	Load the activity labels from “activity_labels.txt” and names the columns of the activity_labels dataset.
  
  •	After than we merge the X_dataset, Y_dataset and subject dataset.

*Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.*

  •	First it create a vector which contain the indices number of the mean and standard deviation measurements, using that      vector we load only that columns from the merged X_Dataset. 

*Step 3:* In this step we replace the activity indices by their activity names in merged Y_Dataset.

*Step 4:* In this step we merge the column of the replaces activity names(Step3) with the merged X_Dataset and extracted          mean and standard deviation dataset.

*Step 5:* In this step we create a tidy dataset which aggregate the average of data by their activity names and subject.          and then create a tabbed text file named as “tidy.txt” which contain the tidy aggregated data.


