KNN Model on prepared data set

Imported clean dataset 
KNN Model on prepared data set

Removed a few unnecessary variables like college name , state  and the outcome variable i.e. publicorprivate
Split the output dataset into training and testing data 
 Training (1:903)
  Testing(904:1296)
Build testing and training data for outcome variable i.e. publicorprivate
For the classification applied knn algorithm for predictive modelling
 In which k value has been taken as the square root of training data length i.e 903 . So the square root of 903 is equivalent to 30.04.
K=30 means 30 closest neighbours

Outcome of knn algorithm has been stored in classifier_knn
For evaluating the model we test_outcome_data
In which  we found 294 of the sample are correctly sampled as  are correctly 

Confusion matrix result
Public is 1 and private is 2
Out of 382  (public) 294 is correctly predicted and 88 are predicted as private

Out of 11 (private data) 8 are correctly predicted and 3 are false predicted which is public





After comparing the actual values with the predicted values we achieved 76% accuracy when k = 30.


    







