X <- data.frame(Universities_data_set)
print(X)
summary(X)
X

sum(is.na(X$College.Name))



#change the name of columns

colnames(X) <- c("CollegeName", "State","ispublicorprivate" ,"applicationRecieved", "applicationAccepted", "newStudentEnrolled",
                 "top10%NewStudents",
                 "top25%NewStudents", "fullTimeUndergrad", "parttimeUndergrad", "instateTutionFees",
                 "outstateTutionFees", "roomcost", "board", "additionalFees", "estimatedBookcost",
                 "estimatedPersonalCost", "%teachwithPhd","studentFacultyRatio","graduationRate" )
#X

#create a table to see the number of na values in each column
Columnnames <- c("CollegeName", "State","ispublicorprivate" ,"applicationRecieved", "applicationAccepted", "newStudentEnrolled",
                 "top10%NewStudents",
                 "top25%NewStudents", "fullTimeUndergrad", "parttimeUndergrad", "instateTutionFees",
                 "outstateTutionFees", "roomcost", "board", "additionalFees", "estimatedBookcost",
                 "estimatedPersonalCost", "percentteachwithPhd","studentFacultyRatio","graduationRate" )
Navalues <- c(sum(is.na(X$College.Name)), sum(is.na(X$State)),sum(is.na(X$ispublicorprivate)),sum(is.na(X$applicationRecieved)),
              sum(is.na(X$applicationAccepted)), sum(is.na(X$newStudentEnrolled)),sum(is.na(X$`top10%NewStudents`)),
              sum(is.na(X$`top25%NewStudents`)),sum(is.na(X$fullTimeUndergrad)),sum(is.na(X$parttimeUndergrad)),
              sum(is.na(X$instateTutionFees)),sum(is.na(X$outstateTutionFees)),sum(is.na(X$roomcost)),
              sum(is.na(X$board)),sum(is.na(X$additionalFees)),sum(is.na(X$estimatedBookcost)),
              sum(is.na(X$estimatedPersonalCost)),sum(is.na(X$percentteachwithPhd)),sum(is.na(X$studentFacultyRatio)),
              sum(is.na(X$graduationRate)))

NumberofNA <- data.frame(Columnnames,Navalues)

#bar plot of top 10 na values
library(ggplot2)
ggplot(NumberofNA, aes(x=Columnnames, y=Navalues)) + geom_bar(stat="identity") + 
  labs(x="columnnames", y="Navalues")
library(dplyr)
top_n(NumberofNA, n=10, Navalues) %>%
  ggplot(., aes(x=Columnnames, y=Navalues))+
  geom_bar(stat='identity')

NumberofNA[nrow(NumberofNA) + 1,] = c("Total Na",sum(NumberofNA$Navalues))


#can calculate total fees or ration of fulltime/parttuime
sum(!complete.cases(X))

col <- c("Totalnumberofcompletecases", "totalNumberincompletecases")
val <- c(sum(complete.cases(X)),sum(!complete.cases(X)))

datasummary <- data.frame(col,val)

#there is too much noise in the data due to lot of NA values
X
descriptivedata <- data.frame(summary(X))

boxplot(X$instateTutionFees)
boxplot(X$outstateTutionFees)
boxplot.(x.a)

plot(X$instateTutionFees, X$outstateTutionFees)
X$outlier= (X$instateTutionFees >20000 & X$outstateTutionFees >25000)
X


clean_data_set<-X[!(X$Outlier=="True']
(newData1)















