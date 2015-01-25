Run_Analysis.R file README
Created by Z.Everton Jan.24.2015

This script will pull the specific file used in the week 3 project assigned as part of the getting and cleaning data course on Coursera.
After pulling the data the code process the data and reformats and summarizes the data in a way that it can be deemed "clean" or "tidy".

This is not a function, it is just a script, meaning you do not source it. 

To run the script follow these steps:
1. Open RStudio and ensure your working directory is set to a folder where the proper inputs are being housed in the "UCI HAR Dataset" folder
2. Open the Run_analysis.R file in RStudio
3. Highlight the entire script
4. click "Run" at the top of the script window.

The output has 4 columns of data:
1. Activity (ie Laying, Walking, etc.)
2. Subject (designated by number)
3. FeaturesDescription (description of the features data collected and represented in the table)
4. Mean (summarized data ouputted by the run_analysis script)

DATA DICTIONARY ("Code Book") for run_analysis output

ACTIVITY
	Activity Type
	   LAYING
	   SITTING
	   STANDING
	   WALKING
	   WALKING_DOWNSTAIRS
	   WALKING_UPSTAIRS

SUBJECT
	Subject number
	   1-30

FEATURESDESC
	Descriptive names of Features
 	   [1] timeBodyAcc-mean()-Y                         
	   [2]timeBodyAcc-mean()-Z                         
	   [3]timeGravityAcc-mean()-X                     
	   [4] timeGravityAcc-mean()-Y                      
	   [5] timeGravityAcc-mean()-Z                      
	   [6]timeBodyAccJerk-mean()-X                    
	   [7] timeBodyAccJerk-mean()-Y                     
	   [8] timeBodyAccJerk-mean()-Z                     
	   [9] timeBodyGyro-mean()-X                       
	  [10] timeBodyGyro-mean()-Y                        
	  [11] timeBodyGyro-mean()-Z                        
	  [12] timeBodyGyroJerk-mean()-X                   
	  [13] timeBodyGyroJerk-mean()-Y                    
	  [14] timeBodyGyroJerk-mean()-Z                    
	  [15] timeBodyAccMag-mean()                       
	  [16] timeGravityAccMag-mean()                     
	  [17] timeBodyAccJerkMag-mean()                    
	  [18] timeBodyGyroMag-mean()                      
	  [19] timeBodyGyroJerkMag-mean()                   
	  [20] frequencyDomainSignalsBodyAcc-mean()-X       
	  [21] frequencyDomainSignalsBodyAcc-mean()-Y      
	  [22] frequencyDomainSignalsBodyAcc-mean()-Z       
	  [23] frequencyDomainSignalsBodyAccJerk-mean()-X   
	  [24] frequencyDomainSignalsBodyAccJerk-mean()-Y  
	  [25] frequencyDomainSignalsBodyAccJerk-mean()-Z   
	  [26] frequencyDomainSignalsBodyGyro-mean()-X      
	  [27] frequencyDomainSignalsBodyGyro-mean()-Y     
	  [28] frequencyDomainSignalsBodyGyro-mean()-Z      
	  [29] frequencyDomainSignalsBodyAccMag-mean()      
	  [30] frequencyDomainSignalsBodyAccJerkMag-mean() 
	  [31] frequencyDomainSignalsBodyGyroMag-mean()     
	  [32] frequencyDomainSignalsBodyGyroJerkMag-mean() 
	  [33] timeBodyAcc-std()-X                         
	  [34] timeBodyAcc-std()-Y                          
	  [35] timeBodyAcc-std()-Z                          
	  [36] timeGravityAcc-std()-X                      
	  [37] timeGravityAcc-std()-Y                       
  	  [38] timeGravityAcc-std()-Z                       
	  [39] timeBodyAccJerk-std()-X                     
	  [40] timeBodyAccJerk-std()-Y                      
	  [41] timeBodyAccJerk-std()-Z                      
	  [42] timeBodyGyro-std()-X                        
	  [43] timeBodyGyro-std()-Y                         
	  [44] timeBodyGyro-std()-Z                         
	  [45] timeBodyGyroJerk-std()-X                    
	  [46] timeBodyGyroJerk-std()-Y                     
	  [47] timeBodyGyroJerk-std()-Z                     
	  [48] timeBodyAccMag-std()                        
	  [49] timeGravityAccMag-std()                      
	  [50] timeBodyAccJerkMag-std()                     
	  [51] timeBodyGyroMag-std()                       
	  [52] timeBodyGyroJerkMag-std()                    
	  [53] frequencyDomainSignalsBodyAcc-std()-X        
	  [54] frequencyDomainSignalsBodyAcc-std()-Y       
	  [55] frequencyDomainSignalsBodyAcc-std()-Z        
	  [56] frequencyDomainSignalsBodyAccJerk-std()-X    
	  [57] frequencyDomainSignalsBodyAccJerk-std()-Y   
	  [58] frequencyDomainSignalsBodyAccJerk-std()-Z    
	  [59] frequencyDomainSignalsBodyGyro-std()-X       
	  [60] frequencyDomainSignalsBodyGyro-std()-Y      
	  [61] frequencyDomainSignalsBodyGyro-std()-Z       
	  [62] frequencyDomainSignalsBodyAccMag-std()

MEAN
	Mean of each feature by SUBJECT and ACTIVITY	   