DS Getting and Cleaning Data
============================

### Running the script
- Clone this repository
- Download the [data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extract it.
- The extraction will result in a folder called `UCI HAR Dataset` containing all the files needed for this project.
- Switch ti the extracted folder `UCI HAR Dataset`.
- Dowload and put `run_analysis.R` in this folder.
- Go to your R environment and set your working directory to where you extracted the zip file.
- Run the script with source("run_analysis.R")
- This will generate a file called `clean_and_tidy.txt`

### Note
- The R script has no assumptions in the number of records, however, the structure of files and folders should not be change.