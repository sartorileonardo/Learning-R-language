#Exercise:
# Create an algorithm in R that does:
#
# 1 - Student registration (name, email, etc ..., test notes)
# To know if the student was approved, just create a vector "average grade" that is the calculation of other vectors (notes), so if in this average vector the individual has a grade below 7 (for example) will be "disapproved", case otherwise approved (in this case you need to use if () to make the decision making).
#
# 2 - Shows the data of the registered students also informing the approved and disapproved ones.
#
#With the created vectors, you mount a DataFrame and then show it on the screen.

#Vector with students names
studentsNames<-c("João", "Maria", "José")

#Vector with mails names
studentsMails<-c("joao@gmail.com","maria@gmail.com","jose@gmail.com")

calculateGrade<-function(grades){
  #Input auto of 2 aleatory grades from 1 to 10 of students
  grades_joao<-sample(1:10,2)
  grades_maria<-sample(1:10,2)
  grades_jose<-sample(1:10,2)
  
  #Calculate the average
  avgMaria<-(mean(grades_maria))
  avgJoao<-(mean(grades_joao))
  avgJose<-(mean(grades_jose))
  
  #Vector that received the averages
  grades<-c(avgJoao,avgMaria,avgJose)
  
  #Create one string vector
  situation<-as.character()
  
  #Criate one dataframe to save the school report
  shoolReport<-data.frame(Name=studentsNames, Mail=studentsMails, Grades=grades)
  
  
  #Loop to traverse the vector of notes and passes to the conclusion who is approved and disapproved
  for(i in 1:length(grades)){
    if(grades[i] >= 7.00){
      situation[i]<-"Approved"
    }else{
      situation[i]<-"Disapproved"
    }
  }
  
  #Create a new column in the bulletin that stores an "Approved" or "Disapproved"
  shoolReport$Situation<-situation
  
  #Display the school report
  print(shoolReport)
  
}

#Changes the function that calculates notes by passing them as a parameter
calculateGrade(grades)




