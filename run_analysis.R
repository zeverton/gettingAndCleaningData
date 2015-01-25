
#Reading in data tables for use in run anlaysis
testX = read.table("UCI HAR Dataset/test/x_test.txt")
testY = read.table("UCI HAR Dataset/test/y_test.txt")
subTest = read.table("UCI HAR Dataset/test/subject_test.txt")
trainX = read.table("UCI HAR Dataset/train/x_train.txt")
trainY = read.table("UCI HAR Dataset/train/y_train.txt")
subTrain = read.table("UCI HAR Dataset/train/subject_train.txt")
features = read.table("UCI HAR Dataset/features.txt")
actLabels = read.table("UCI HAR Dataset/activity_labels.txt")

#adding detail to variable names and removing redundancy for clarity sake
features$V2 <-gsub("tB","timeB",features$V2)
features$V2 <-gsub("tG","timeG",features$V2)
features$V2 <-gsub("BodyBody","Body",features$V2)
features$V2 <-sub("fB","frequencyDomainSignalsB",features$V2)
features$V2 <-sub("fG","frequencyDomainSignalsG",features$V2)

#assembling train data by applying columns headers and merging activity labels to provide descriptions for each type of activity
colnames(trainX) <- features$V2
colnames(trainY) <- "ID"
colnames(actLabels) <- c("ID","activity")
colnames(subTrain) <- "subject"
train <- cbind(trainY, subTrain ,trainX)
train <- merge(actLabels, train, by="ID")

#assembling test data much like the train data
colnames(testX) <- features$V2
colnames(testY) <- "ID"
colnames(subTest) <- "subject"
test <- cbind(testY, subTest, testX)
test <- merge(actLabels, test, by="ID")

#combining train and test datasets
both <- rbind(train, test)

#isolating  the "mean" data columns
x <- names(both)
mean <- grepl("mean",x)
onlymean <- both[mean]
y <- names(onlymean)
onlymean <- onlymean[,!grepl("meanFreq()",y)]

#isolating standard deviation(std) columns
std <- grepl("std",x)
onlystd <- both[std]

#combining mean and std columns into one dataset
newBoth <- cbind(both[,1:3],onlymean, onlystd)

#isolating context and data
context <- newBoth[,1:3]
data <- newBoth[,4:66]

#the loop below takes each column of data and stacks it, taking the name out of the column header and applying it to a new column.
#this new "stacked" data is cbinded with the context and then rbinded with the previously stacked data and context columns to create the final dataset.
temp <- data
for(i in 1:ncol(data)-1){
  z <- data.frame(temp[,1])
  colnames(z) <- colnames(temp)[1]
  z <- stack(z)
  z <- cbind(context,z)
  if(i == 1) final <- z
  if(i > 1) final <- rbind(final,z)
  temp[,1] = NULL
}

#finally we take the data and calculate the mean of each variable by subject and activty, which forces us to rename the columns
#just for fun, i sorted the data before exporting the tidy "clean" data to a txt file.
final <- aggregate(final$values, by=list(activity,subject,ind),FUN=mean,na.rm=TRUE)
colnames(final) <- c("activity","subject","variableDescription","meanOfValues")
final <- final[order(Group.2,Group.1,Group.3),]
write.table(final,file= "cleanData.txt", row.name=FALSE)