#1. Merge the training and the test sets to create one data set.

library(dplyr)

train_X <- read.csv("./X_train.txt", sep = "", header = FALSE)
train_y <- read.csv("./y_train.txt", sep = "", header = FALSE)
train_data <- cbind(train_X, train_y)
train_X <- train_y <- NULL


test_X <- read.csv("./X_test.txt", sep = "", header = FALSE)
test_y <- read.csv("./y_test.txt", sep = "", header = FALSE)
test_data <- cbind(train_X, train_y)
test_X <- test_y <- NULL


all_data <- rbind(train_data, test_data)
train_data <- test_data <- NULL


#2. Extract only the measurements on the mean and standard deviation
# for each measurement.
feature_names <- read.csv("./features.txt", sep="", header = FALSE, colClasses = c("character"))[,2]

cols <- grep("mean\\(\\)|std\\(\\)", feature_names)
feature_names <- feature_names[cols]

cols <- c(cols, 562)
all_data <- all_data[,cols]


# 3. Use descriptive activity names to name the activities in the data set
activity_names <- read.csv("./activity_labels.txt", sep = " ", header = FALSE, colClasses = c("character"))[,2]
all_data <- cbind(all_data, activity_names[all_data[,ncol(all_data)]] )

# Using descriptive feature names
names(all_data) <- c(feature_names, "ActivityId", "ActivityName")

names(all_data) <- gsub("-mean\\(\\)(-?)", "Mean", names(all_data))
names(all_data) <- gsub("-std\\(\\)(-?)", "StandardDeviation", names(all_data))
names(all_data) <- gsub("Acc","Acceleration", names(all_data))
names(all_data) <- gsub("Gyro","Gyroscope",names(all_data))
names(all_data) <- gsub('Mag',"Magnitude",names(all_data))
names(all_data) <- gsub('^t',"TimeDomain", names(all_data))
names(all_data) <- gsub('^f',"FrequencyDomain", names(all_data))

# 5. Making Tidy Data Set

tidy_data <- select(all_data, -(ActivityId))
Activities <- group_by(tidy_data, ActivityName)
tidy_data <- summarise_each(Activities, funs(mean(.)))

write.table(tidy_data, file = "./tidy_data.txt", row.names = FALSE)
