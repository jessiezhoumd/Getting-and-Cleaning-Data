# CodeBook

## Data fields 

-Subject - ID of subject

-Activity - name of the activity performed by subject when measurements taken

-Measurements

"TimeBodyAcceleratorMeanX"                    
"TimeBodyAcceleratorMeanY"                     
"TimeBodyAcceleratorMeanZ"                      
"TimeBodyAcceleratorStdX"                      
"TimeBodyAcceleratorStdY"                       
"TimeBodyAcceleratorStdZ"                      
"TimeGravityAcceleratorMeanX"                   "TimeGravityAcceleratorMeanY"                  
"TimeGravityAcceleratorMeanZ"                   
"TimeGravityAcceleratorStdX"                   
"TimeGravityAcceleratorStdY"                    
"TimeGravityAcceleratorStdZ"                   
"TimeBodyAcceleratorJerkMeanX"                  "TimeBodyAcceleratorJerkMeanY"                 
"TimeBodyAcceleratorJerkMeanZ"                  "TimeBodyAcceleratorJerkStdX"                  
"TimeBodyAcceleratorJerkStdY"                   "TimeBodyAcceleratorJerkStdZ"                  
"TimeBodyGyroscopeMeanX"                        
"TimeBodyGyroscopeMeanY"                       
"TimeBodyGyroscopeMeanZ"                        
"TimeBodyGyroscopeStdX"                        
"TimeBodyGyroscopeStdY"                         
"TimeBodyGyroscopeStdZ"                        
"TimeBodyGyroscopeJerkMeanX"                    "TimeBodyGyroscopeJerkMeanY"                   
"TimeBodyGyroscopeJerkMeanZ"                    "TimeBodyGyroscopeJerkStdX"                    
"TimeBodyGyroscopeJerkStdY"                     "TimeBodyGyroscopeJerkStdZ"                    
"TimeBodyAcceleratorMagnitudeMean"              "TimeBodyAcceleratorMagnitudeStd"              
"TimeGravityAcceleratorMagnitudeMean"           "TimeGravityAcceleratorMagnitudeStd"           
"TimeBodyAcceleratorJerkMagnitudeMean"          "TimeBodyAcceleratorJerkMagnitudeStd"          
"TimeBodyGyroscopeMagnitudeMean"                "TimeBodyGyroscopeMagnitudeStd"                
"TimeBodyGyroscopeJerkMagnitudeMean"            "TimeBodyGyroscopeJerkMagnitudeStd"            
"FrequencyBodyAcceleratorMeanX"                 "FrequencyBodyAcceleratorMeanY"                
"FrequencyBodyAcceleratorMeanZ"                 "FrequencyBodyAcceleratorStdX"                 
"FrequencyBodyAcceleratorStdY"                  "FrequencyBodyAcceleratorStdZ"                 
"FrequencyBodyAcceleratorJerkMeanX"             "FrequencyBodyAcceleratorJerkMeanY"            
"FrequencyBodyAcceleratorJerkMeanZ"             "FrequencyBodyAcceleratorJerkStdX"             
"FrequencyBodyAcceleratorJerkStdY"              "FrequencyBodyAcceleratorJerkStdZ"             
"FrequencyBodyGyroscopeMeanX"                   "FrequencyBodyGyroscopeMeanY"                  
"FrequencyBodyGyroscopeMeanZ"                   "FrequencyBodyGyroscopeStdX"                   
"FrequencyBodyGyroscopeStdY"                    "FrequencyBodyGyroscopeStdZ"                   
"FrequencyBodyAcceleratorMagnitudeMean"         "FrequencyBodyAcceleratorMagnitudeStd"         
"FrequencyBodyBodyAcceleratorJerkMagnitudeMean" "FrequencyBodyBodyAcceleratorJerkMagnitudeStd" 
"FrequencyBodyBodyGyroscopeMagnitudeMean"       "FrequencyBodyBodyGyroscopeMagnitudeStd"       
"FrequencyBodyBodyGyroscopeJerkMagnitudeMean"   "FrequencyBodyBodyGyroscopeJerkMagnitudeStd"  

-Activity:
1. Walking
2. Walking upstairs
3. Walking downstairs
4. Sitting
5. Standing


## Variables
Data from the downloaded files:
  x_train, y_train, subject_train, 
  x _test, y_test, subject_test

Data merged from the above data sets

## r Script
File with R code "run_analysis.R" perform steps (in accordance assignment instructions listed in README.md file)
