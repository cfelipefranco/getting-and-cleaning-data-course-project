run_analysis <- function(){
  
  # Verifying if the UCI HAR Dataset is in the working directory 
  if(sum(grepl("UCI HAR Dataset",dir()))==0){
    stop("Please set working directory to folder 
          containing the UCI HAR Dataset unzipped 
          folder")
  }
  
  # Read the X_test data set and complement it with label, subject and a type flag to 
  # indicate if the observation is part of the test or train dataset
  testSet <- fread("UCI HAR Dataset/test/X_test.txt")  
  testLabels <- fread("UCI HAR Dataset/test/y_test.txt")
  testSubjects <- fread("UCI HAR Dataset/test/subject_test.txt") 
  testSet <- cbind(testSet,label=testLabels$V1,subject=testSubjects$V1,type="test")
  
  # Read the X_train data set and complement it with label, subject and a type flag to 
  # indicate if the observation is part of the test or train dataset
  trainSet<-fread("UCI HAR Dataset/train/X_train.txt")
  trainLabels<-fread("UCI HAR Dataset/train/y_train.txt")
  trainSubjects <- fread("UCI HAR Dataset/train/subject_train.txt") 
  trainSet <- cbind(trainSet,label=trainLabels$V1,subject=trainSubjects$V1, type="train")
  
  # Complete task 1 by combining the test and train sets into one dataset
  mergedSet <- rbind(testSet,trainSet)
  
  # Complete task 2 by reading the features file containing 561 columns names of the test 
  # and train sets and filtering only its mean and standard deviation informations 
  # (whilst keeping label, subject and type)
  features <- fread("UCI HAR Dataset/features.txt")
  meanAndStdFilter <- (grepl("mean",features$V2)|grepl("std",features$V2)) & !grepl(
    "mean[Ff]req",features$V2)
  meanAndStdColumns <- features[meanAndStdFilter,]
  filteredSet <- select(mergedSet, meanAndStdColumns$V1,label, subject,type)
  
  # Complete task 3 by setting appropriate names to the activities in the data set instead 
  # of numeric label
  activities <- fread("UCI HAR Dataset/activity_labels.txt")
  activityNamedSet <- mutate(filteredSet, label = factor(activities$V2[label]))
  
  # Complete task 4 by setting column labels that are descriptive, lowercased, unique and 
  # lacking special characters and spaces 
  colLabels <- meanAndStdColumns$V2 %>% tolower() %>% {gsub("['('')'-]","",.)} %>%
    {gsub("(body){2}","body", .)}
  colnames(activityNamedSet) <- c(colLabels, "activity", "subject", "type")
  
  # Complete task 5 by creating an independent data set with averages of each variable for
  # each activity and each subject
  resultingMeansSet <- aggregate(activityNamedSet[,1:66],list(activityNamedSet$activity
                                                              , activityNamedSet$subject),mean)
  resultingMeansSet <- rename(resultingMeansSet, activity=Group.1, subject=Group.2)
  
  # Write output file containing resulting data set (content will be available both in 
  # resultingMeansSet.txt file and run_analysis function return)
  write.table(resultingMeansSet,file = "resultingMeansSet.txt",row.names = F)
  
  # Free used variables
  remove("testSet")
  remove("testLabels")
  remove("testSubjects")
  remove("trainSet")
  remove("trainLabels")
  remove("trainSubjects")
  remove("mergedSet")
  remove("features")
  remove("meanAndStdFilter")
  remove("meanAndStdColumns")
  remove("filteredSet")
  remove("activities")
  remove("activityNamedSet")
  remove("colLabels")
  
  # Return resulting set
  resultingMeansSet
}