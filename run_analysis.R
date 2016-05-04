##Load the test set
testset<-read.table("X_test.txt")

##Load the train set
trainset<-read.table("X_train.txt")

##Load the activities without description
ytest<-read.table("y_test.txt")
ytrain<-read.table("y_train.txt")

##Load the subject files
subjecttest<-read.table("subject_test.txt")
subjecttrain<-read.table("subject_train.txt")

##Create two factors for activities by joing Load the activity for each record:
ytestact<-cut(ytest[[1]],6,labels=c("WALKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
ytrainact<-cut(ytrain[[1]],6,labels=c("WALKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

##Load features
features<-read.table("features.txt")

##Start the cleanup of the features names by replacing unwanted characters and lowering capital letters by creating vector tidyfeatures
tidyfeatures<-tolower(gsub("\\,","",gsub("\\-","",gsub("\\)","",gsub("\\(","",features$V2)))))

##Continue with tidying up of features names by replacing various acronyms with the whole expression, for clarity
tidyfeatures<-gsub("tbodyacc","bodytimeaccelerator",tidyfeatures)
tidyfeatures<-gsub("fbodyacc","bodyfrequencyaccelerator",tidyfeatures)
tidyfeatures<-gsub("fbodygyro","bodyfrequencygyroscope",tidyfeatures)
tidyfeatures<-gsub("tbodygyro","bodytimegyroscope",tidyfeatures)
tidyfeatures<-gsub("mag","magnitude",tidyfeatures)
tidyfeatures<-gsub("iqr","interquartilerange",tidyfeatures)
tidyfeatures<-gsub("std","standarddeviation",tidyfeatures)
tidyfeatures<-gsub("arcoeff","autorregressioncoefficient",tidyfeatures)
tidyfeatures<-gsub("sma","signalmagnitudearea",tidyfeatures)
tidyfeatures<-gsub("magnitudemad","magnitudemedianabsolutedeviation",tidyfeatures)
tidyfeatures<-gsub("maxinds","maxindex",tidyfeatures)
tidyfeatures<-gsub("fbodybodyacc","bodyfrequencybodyaccelerator",tidyfeatures)
tidyfeatures<-gsub("fbodybodygyro","bodyfrequencybodygyroscope",tidyfeatures)
tidyfeatures<-gsub("mad","magnitudemedianabsolutedeviation",tidyfeatures)
tidyfeatures<-gsub("meanfreq","meanfrequency",tidyfeatures)

##Replaces the names of the datasets' columns with the members in tidyfeatures vector
names(testset)<-tidyfeatures
names(trainset)<-tidyfeatures

##Replaces the names of the datasets' columns with the members in tidyfeatures vector
##colnames(testset)<- features[,2]
##colnames(trainset)<- features[,2]

##Add factor with activity to the dataset
testset<-cbind(testset,ytestact)
trainset<-cbind(trainset,ytrainact)

##Change the name of the activity factor column to "activity"
names(testset)[names(testset) == 'ytestact'] <- 'activity'
names(trainset)[names(trainset) == 'ytrainact'] <- 'activity'

##Add the column with the subject to the dataset
testset<-cbind(testset,subjecttest)
trainset<-cbind(trainset,subjecttrain)

##Gives the subject column a better name
names(testset)[names(testset) == 'V1'] <- 'subject'
names(trainset)[names(trainset) == 'V1'] <- 'subject'

##Bind both datasets to a final set
finalset<-rbind(trainset,testset)

##Eliminate the duplicity in names
finalset<-finalset[,]

##Create the dataset with only the columns of interest
meansdframe<-select(finalset,contains("subject"), contains("activity"), contains("mean"), contains("standarddeviation"))

##Create the frame with the mean grouped by subject and activity
meangroupbyframe<- (meansdframe%>% group_by(subject,activity) %>% summarise_each(funs( mean)))

##Show the frame
print(meangroupbyframe)
