X1 <- data.frame(clean_data_set_1_)
print(X1)

str(X1)
X2 <-X1[-c(3)]
X2 <- X1[-C(1)]
X2 <- X1[-c(2)]
str(X2)

#ind <- sample(2, nrow(X2), replace=TRUE, prob = c(0.7,0.3))
#train.data <- X2[ind==1,]
#test.data <- X2[ind==2,]

trainingset <- X2[1:903,2:19]
testingset <- X2[904:1296, 2:19]

train_outcome_data <- X1[1:903, 3]
test_outcome_data<-X1[904:1296,3]

#Apply knn algorithm to  training and testing dataset

library(class)

# take the square root of total rows in training set which is 903 = 30.04

classifier_knn <- knn(train = trainingset,
                      test = testingset,
                      cl = train_outcome_data,
                      k = 30)
classifier_knn

#model evaluation (comparing the actual result vs predicted result)
#confusion matrix
confusion_matrix <- table(test_outcome_data, classifier_knn)
confusion_matrix

#Accuracy
misClassError <- mean(classifier_knn != test_outcome_data)
print(paste('Accuracy =', 1-misClassError))

