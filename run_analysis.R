
# file: run_analysis.R
# path: $HOME/School/Coursera/DataScience_JohnsHopkins/03_GetCleanData/Project
# author: ???? ?. ?????
# purpose: "Coursera: Getting & Cleaning Data" peer-graded project
# log:
#   2014-08-05  First version
#   2014-08-18  Use 'sqldf' package to load data
#   2014-08-19  Complete Problem 2
#   2014-08-23  Finish assignment

# Setup commands this R-session:
# Code to set working directory (disabled):
if (FALSE) {
    working.directory <- paste0(Sys.getenv("HOME"), "/School/Coursera/DataScience_JohnsHopkins/03_GetCleanData/Project")
    setwd(working.directory)
    getwd()
}

# 0) Download data:
# Code to download data (Disabled: assume zip file has been downloaded and unzipped)
if (FALSE) {
    dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

    if (!file.exists("./getdata_projectfiles_Dataset.zip")) {
        download.file(dataURL, "./getdata_projectfiles_Dataset.zip", method="curl")
        dateDownloaded <- date()
        # It is possible to write 'dataDownloaded' to a file, but I used the modification time of the zip file.
    } else {
        cat("Data file already exists.\n")
    }
    cat(paste("Zip file last modified: ", file.info(list.files(pattern="getdata_projectfiles_Dataset.zip"))$mtime, "\n"))

    # Reference: http://stackoverflow.com/questions/8986818/automate-zip-file-reading-in-r
    # Command below shows the files in the zip file.
    #zipFileInfo <- unzip("./getdata_projectfiles_Dataset.zip", list=TRUE)
}

# Read these data files into this R-session:
# Reference: https://class.coursera.org/getdata-006/forum/thread?thread_id=43
# Based on the reference above, I did not include the raw data in the Inertial directories.
filename.1 <- "./UCI\ HAR\ Dataset/test/X_test.txt"
filename.2 <- "./UCI\ HAR\ Dataset/test/subject_test.txt"
filename.3 <- "./UCI\ HAR\ Dataset/test/y_test.txt"
filename.4 <- "./UCI\ HAR\ Dataset/train/X_train.txt"
filename.5 <- "./UCI\ HAR\ Dataset/train/subject_train.txt"
filename.6 <- "./UCI\ HAR\ Dataset/train/y_train.txt"

file.columns <- 561  # number of columns in file
column.width <- 16   # fixed width of each column

suppressPackageStartupMessages(library(sqldf))

# Create a SQL command to read in fixed width format file:
sql.1 <- "SELECT "
for (col in 1:(file.columns-1)) { sql.1 <- paste0(sql.1, " SUBSTR(V1,", column.width*(col-1)+1, ",16) AS V", col, ", ") }
sql.1 <- paste0(sql.1, " SUBSTR(V1,", column.width*(file.columns-1)+1, ",16) AS V", file.columns, " FROM f")

# Read in test data:
f <- file(filename.1)
X.test <- sqldf(sql.1,
                dbname=tempfile(),
                file.format=list(header=FALSE, row.names=FALSE))

# Read in the subject data:
subject.test <- read.table(filename.2, header=FALSE)

# Read in classification data:
y.test <- read.table(file=filename.3, header=FALSE)

# Column bind 'X.test' & 'subject.test' and 'y.test' into 'test' data frame:
test <- cbind(X.test, subject.test, y.test)

# Read in training data:
f <- file(filename.4)
X.train <- sqldf(sql.1,
                dbname=tempfile(),
                file.format=list(header=FALSE, row.names=FALSE))

# Read in the subject data:
subject.train <- read.table(filename.5, header=FALSE)

# Read in classification data:
y.train <- read.table(file=filename.6, header=FALSE)

# Column bind 'X.train' & 'subject.train' & 'y.train' into 'train' data frame:
train <- cbind(X.train, subject.train, y.train)

# Problem 1: Merge the training & test sets to create one data set.
# Row bind 'train' & 'test' into 'all.data' data frame:
all.data <- rbind(train, test)

# Column 562 is the subject for which the data was collected and column 563 is
#   the activity.  These columns should probably be converted to a factor type,
#   but I am not doing that now.
# For columns 1:561, convert column classes from 'character' to 'numeric':
for (i in 1:file.columns) { all.data[,i] <- as.numeric(all.data[,i]) }

# Name the columns:
filename.7 <- "./UCI\ HAR\ Dataset/features.txt"
features <- read.table(filename.7, header=FALSE, stringsAsFactors=FALSE)
colnames(all.data) <- c(features[,2], "subject", "activity")

# Problem 2: Extract only the mean and standard deviation for each measurement.
# Determine the columns where '-mean()' & '-std()' appear:
mean.cols <- grep(".+-mean.+", colnames(all.data), perl=TRUE)
std.cols <- grep(".+-std.+", colnames(all.data), perl=TRUE)

# Combine 'mean.cols' & 'std.cols' & sort:
extract.cols <- sort(c(mean.cols, std.cols))
# Get column numbers for 'subject' & 'activity':
subject.col <- match("subject", colnames(all.data))
activity.col <- match("activity", colnames(all.data))
# Add these to columns to extract:
extract.cols <- c(extract.cols, subject.col, activity.col)

# Create new data frame based on 'extract.cols':
extract.df <- all.data[, extract.cols]

# Problem 3: Use descriptive activity names to name the activities in the data set.
# Read the 'activity_labels.txt' file:
filename.8 <- "./UCI\ HAR\ Dataset/activity_labels.txt"
activity <- read.table(filename.8, header=FALSE, stringsAsFactors=FALSE)

# Assign activity names to the code:
for (act in 1:dim(activity)[1]) {
    extract.df$activity[extract.df$activity == activity[act,1]] <- activity[act,2]
}

# Problem 4: Appropriately label the data set with descriptive variable names.
# Repair column names:
extract.df.colnames <- gsub("-", ".", colnames(extract.df), perl=TRUE)

# Rename columns:
colnames(extract.df) <- extract.df.colnames

# Problem 5: Create a second, independent tidy data set with the average of each
#    variable for each activity and each subject.
# Step 1: Melt the data frame:
suppressPackageStartupMessages(library(reshape2))

extract.df.melt <- melt(extract.df, id=c("subject","activity"), measure.vars=colnames(extract.df)[1:(dim(extract.df)[2]-2)])

# Step 2: Cast for each subject & activity:
extract.df.melt.dcast <- dcast(extract.df.melt, subject + activity ~ variable, mean)

# Step 3: Make 'extract.df.melt.dcast' tidy:
final.df <- melt(extract.df.melt.dcast, id=c("subject","activity"), measure.vars=colnames(extract.df.melt.dcast)[3:dim(extract.df.melt.dcast)[2]])

