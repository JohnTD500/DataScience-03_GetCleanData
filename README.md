DataScience-03_GetCleanData
===========================

Created for the Coursera course "Getting and Cleaning Data" which is part of the Johns Hopkins University Data Science Specialization.

File Manifest
-------------

| Filename            | Purpose                                                      |
|---------------------|--------------------------------------------------------------|
| Codebook.md         | Codebook for the tidy data set submitted for peer assessment |
| Project.Rmd         | R Markdown file for Rstudio session                          |
| README.md           | Markdown README file                                         |
| README.txt          | Original README text file                                    |
| run_analysis.R      | R source code file for running the project analysis          |
| submission_file.txt | Tidy data set submitted for peer assessment                  |

Running the Analysis Script
---------------------------

1. Open R session in the directory where the **"UCI HAR Dataset"** directory is present.
2. At the R command prompt: *source("./run_analysis.R)*

How the Analysis Script Works
-----------------------------

1. Filenames created for loading the testing & training data sets, subject information, and classification.
2. Create a Structured Query Language (SQL) command based on the fixed widths of the test/train data sets.
3. Read the various data files into the R session.
    3.1 Use the "sqldf" package.  (I had difficulty using 'read.fwf'.  After a lot of looking I decided this was my best option.)
    3.2 Use 'read.table' to read in the subject & classification files.
4. Column bind subject & classification data to the test & training data sets.
5. Row bind the set is step 4 together.
6. Name the new columns.
8. In the 'activity' column, replace code number with descriptive names.
7. Extract columns for mean and standard deviation from combined data sets and put into a new data frame.
9. Rename the columns of extracted data set replacing '-' with '.'.
10. Take the extracted data set and make it "tidy":

  10.1 Using the "reshape2" package, melt the extracted data set using "subject" & "activity" as the identification variables.
  10.2 Cast the melted data frame using the formula "subject + activity ~ variable".
  10.3 Melt this data set again to get the following columns: "subject", "activity", "variable", "value"

Further details can be found in the *run_analysis.R* file.  I developed the program in RStudio.  The analysis program, including debugging statements and other code that didn't make the final program, can be found in the *Project.Rmd* file.

Problem Statement
-----------------

Getting and Cleaning Data
by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Good luck!
