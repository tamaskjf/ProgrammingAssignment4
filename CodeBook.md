## This is a code book file

**Code Book - Human Activity Recognition Using Smartphones**

The data sets, which shows collected datas from the experiments can be available from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After unzipping the files to the working directory, you can see the values of the experiments, like the sensor signals from accelerometers and gyroscopes, as well as the further information about the datas.

The experiments were made by Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

For each sensor record, it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.

- Triaxial Angular velocity from the gyroscope. 

- A 561-feature vector with time and frequency domain variables. 

- Its activity label. 

- An identifier of the subject who carried out the experiment.

After downloading and unzipping the file, the *run_analysis.R* script performs data cleaning and perforations in the data sets like using descriptive names for the columns (like Acc => Accelerometer, Freq => Frequency and so on). The merged test and train data sets - *with cbind() and rbind() functions* - contains 10299 rows and 563 columns.

By extracting only the measurements on the mean and standard deviation for each measurement - *with select() and contains() functions* - the merged data set is consist of 10299 rows and 88 columns.

The columns names are:
 [1] "Subject_Id": int                                             
 [2] "Activity": chr                                               
 [3] "TimeBodyAccelerometer-mean()-X": num                         
 [4] "TimeBodyAccelerometer-mean()-Y": num                         
 [5] "TimeBodyAccelerometer-mean()-Z": num                         
 [6] "TimeGravityAccelerometer-mean()-X": num                      
 [7] "TimeGravityAccelerometer-mean()-Y": num                      
 [8] "TimeGravityAccelerometer-mean()-Z": num                      
 [9] "TimeBodyAccelerometerJerk-mean()-X": num                     
[10] "TimeBodyAccelerometerJerk-mean()-Y": num                
[11] "TimeBodyAccelerometerJerk-mean()-Z": num                
[12] "TimeBodyGyroscope-mean()-X": num                             
[13] "TimeBodyGyroscope-mean()-Y": num                             
[14] "TimeBodyGyroscope-mean()-Z": num                             
[15] "TimeBodyGyroscopeJerk-mean()-X": num                         
[16] "TimeBodyGyroscopeJerk-mean()-Y": num                         
[17] "TimeBodyGyroscopeJerk-mean()-Z": num                         
[18] "TimeBodyAccelerometerMagnitude-mean()": num                  
[19] "TimeGravityAccelerometerMagnitude-mean()": num               
[20] "TimeBodyAccelerometerJerkMagnitude-mean()": num              
[21] "TimeBodyGyroscopeMagnitude-mean()": num                      
[22] "TimeBodyGyroscopeJerkMagnitude-mean()": num                  
[23] "FrequencyBodyAccelerometer-mean()-X": num                    
[24] "FrequencyBodyAccelerometer-mean()-Y": num                    
[25] "FrequencyBodyAccelerometer-mean()-Z": num                    
[26] "FrequencyBodyAccelerometer-meanFrequency()-X": num           
[27] "FrequencyBodyAccelerometer-meanFrequency()-Y": num           
[28] "FrequencyBodyAccelerometer-meanFrequency()-Z": num           
[29] "FrequencyBodyAccelerometerJerk-mean()-X": num                
[30] "FrequencyBodyAccelerometerJerk-mean()-Y": num                
[31] "FrequencyBodyAccelerometerJerk-mean()-Z": num                
[32] "FrequencyBodyAccelerometerJerk-meanFrequency()-X": num       
[33] "FrequencyBodyAccelerometerJerk-meanFrequency()-Y": num       
[34] "FrequencyBodyAccelerometerJerk-meanFrequency()-Z": num       
[35] "FrequencyBodyGyroscope-mean()-X": num                        
[36] "FrequencyBodyGyroscope-mean()-Y": num                        
[37] "FrequencyBodyGyroscope-mean()-Z": num                        
[38] "FrequencyBodyGyroscope-meanFrequency()-X": num               
[39] "FrequencyBodyGyroscope-meanFrequency()-Y": num               
[40] "FrequencyBodyGyroscope-meanFrequency()-Z": num               
[41] "FrequencyBodyAccelerometerMagnitude-mean()": num             
[42] "FrequencyBodyAccelerometerMagnitude-meanFrequency()": num    
[43] "FrequencyBodyAccelerometerJerkMagnitude-mean()": num         
[44] "FrequencyBodyAccelerometerJerkMagnitude-meanFrequency()": num
[45] "FrequencyBodyGyroscopeMagnitude-mean()": num                 
[46] "FrequencyBodyGyroscopeMagnitude-meanFrequency()": num        
[47] "FrequencyBodyGyroscopeJerkMagnitude-mean()": num             
[48] "FrequencyBodyGyroscopeJerkMagnitude-meanFrequency()": num    
[49] "Angle(TimeBodyAccelerometerMean,gravity)": num               
[50] "Angle(TimeBodyAccelerometerJerkMean),gravityMean)": num      
[51] "Angle(TimeBodyGyroscopeMean,gravityMean)": num               
[52] "Angle(TimeBodyGyroscopeJerkMean,gravityMean)": num           
[53] "Angle(X,gravityMean)": num                                   
[54] "Angle(Y,gravityMean)": num                                   
[55] "Angle(Z,gravityMean)": num                                   
[56] "TimeBodyAccelerometer-std()-X": num                          
[57] "TimeBodyAccelerometer-std()-Y": num                          
[58] "TimeBodyAccelerometer-std()-Z": num                          
[59] "TimeGravityAccelerometer-std()-X": num                       
[60] "TimeGravityAccelerometer-std()-Y": num                       
[61] "TimeGravityAccelerometer-std()-Z": num                       
[62] "TimeBodyAccelerometerJerk-std()-X": num                      
[63] "TimeBodyAccelerometerJerk-std()-Y": num                      
[64] "TimeBodyAccelerometerJerk-std()-Z": num                      
[65] "TimeBodyGyroscope-std()-X": num                              
[66] "TimeBodyGyroscope-std()-Y": num                              
[67] "TimeBodyGyroscope-std()-Z": num                              
[68] "TimeBodyGyroscopeJerk-std()-X": num                          
[69] "TimeBodyGyroscopeJerk-std()-Y": num                          
[70] "TimeBodyGyroscopeJerk-std()-Z": num                          
[71] "TimeBodyAccelerometerMagnitude-std()": num                   
[72] "TimeGravityAccelerometerMagnitude-std()": num                
[73] "TimeBodyAccelerometerJerkMagnitude-std()": num               
[74] "TimeBodyGyroscopeMagnitude-std()": num                      
[75] "TimeBodyGyroscopeJerkMagnitude-std()": num                   
[76] "FrequencyBodyAccelerometer-std()-X": num                     
[77] "FrequencyBodyAccelerometer-std()-Y": num                     
[78] "FrequencyBodyAccelerometer-std()-Z": num                     
[79] "FrequencyBodyAccelerometerJerk-std()-X": num                 
[80] "FrequencyBodyAccelerometerJerk-std()-Y": num                 
[81] "FrequencyBodyAccelerometerJerk-std()-Z": num                 
[82] "FrequencyBodyGyroscope-std()-X": num                         
[83] "FrequencyBodyGyroscope-std()-Y": num                         
[84] "FrequencyBodyGyroscope-std()-Z": num                         
[85] "FrequencyBodyAccelerometerMagnitude-std()": num              
[86] "FrequencyBodyAccelerometerJerkMagnitude-std()": num          
[87] "FrequencyBodyGyroscopeMagnitude-std()": num                  
[88] "FrequencyBodyGyroscopeJerkMagnitude-std()": num

The *run_analysis.R* also makes an independent tidy data set with the average of each variable for each activity and each subject after groupped by "Subject_Id" and "Activity", called *avg_activity_mean_std_dat.txt*, and it is consist of the same dimensions: 10299 rows and 88 columns.


