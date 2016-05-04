---
title: "Getting and Cleaning Data - Final Work"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Loading the Files

It was used a single R script called "run_analysis.R".

First, the files were loaded into either dataframes or vectors in order to ease the work to be done.

## Tidying names of columns

Then, the activity label was attached to each record of the y variable file.

Features were treated in various ways so to get them tidier and then they got attributed to the names of both datasets.

Activities were appended to the datasets by using cbind and column names corrected.

Same thing was then done with subject.

Then both datasets were binded together by using rbind.

Duplicity of names eliminated by attributing the dataframe to itself with [,].

## Merging data sets

A new datafreame, meansdframe, with only subject, activity and mean and standard deviations fields.

Finally, a meangroupbyframe dataframe was created that grouped the average by subject and activity, it was printed and exported as a csv file.

## The final set
The final set had the following fields:

"subject"

"activity"

"bodytimeacceleratormeanx"

"bodytimeacceleratormeany"

"bodytimeacceleratormeanz"

"tgravityaccmeanx"

"tgravityaccmeany"

"tgravityaccmeanz"

"bodytimeacceleratorjerkmeanx"

"bodytimeacceleratorjerkmeany"

"bodytimeacceleratorjerkmeanz"

"bodytimegyroscopemeanx"

"bodytimegyroscopemeany"

"bodytimegyroscopemeanz"

"bodytimegyroscopejerkmeanx"

"bodytimegyroscopejerkmeany"

"bodytimegyroscopejerkmeanz"

"bodytimeacceleratormagnitudemean"

"tgravityaccmagnitudemean"

"bodytimeacceleratorjerkmagnitudemean"

"bodytimegyroscopemagnitudemean"

"bodytimegyroscopejerkmagnitudemean"

"bodyfrequencyacceleratormeanx"

"bodyfrequencyacceleratormeany"

"bodyfrequencyacceleratormeanz"

"bodyfrequencyacceleratormeanfrequencyx"

"bodyfrequencyacceleratormeanfrequencyy"

"bodyfrequencyacceleratormeanfrequencyz"

"bodyfrequencyacceleratorjerkmeanx"

"bodyfrequencyacceleratorjerkmeany"

"bodyfrequencyacceleratorjerkmeanz"

"bodyfrequencyacceleratorjerkmeanfrequencyx"

"bodyfrequencyacceleratorjerkmeanfrequencyy"

"bodyfrequencyacceleratorjerkmeanfrequencyz"

"bodyfrequencygyroscopemeanx"

"bodyfrequencygyroscopemeany"

"bodyfrequencygyroscopemeanz"

"bodyfrequencygyroscopemeanfrequencyx"

"bodyfrequencygyroscopemeanfrequencyy"

"bodyfrequencygyroscopemeanfrequencyz"

"bodyfrequencyacceleratormagnitudemean"

"bodyfrequencyacceleratormagnitudemeanfrequency"

"bodyfrequencybodyacceleratorjerkmagnitudemean"

"bodyfrequencybodyacceleratorjerkmagnitudemeanfrequency"

"bodyfrequencybodygyroscopemagnitudemean"

"bodyfrequencybodygyroscopemagnitudemeanfrequency"

"bodyfrequencybodygyroscopejerkmagnitudemean"

"bodyfrequencybodygyroscopejerkmagnitudemeanfrequency"

"anglebodytimeacceleratormeangravity"

"anglebodytimeacceleratorjerkmeangravitymean"

"anglebodytimegyroscopemeangravitymean"

"anglebodytimegyroscopejerkmeangravitymean"

"anglexgravitymean"

"angleygravitymean"

"anglezgravitymean"

"bodytimeacceleratorstandarddeviationx"

"bodytimeacceleratorstandarddeviationy"

"bodytimeacceleratorstandarddeviationz"

"tgravityaccstandarddeviationx"

"tgravityaccstandarddeviationy"

"tgravityaccstandarddeviationz"

"bodytimeacceleratorjerkstandarddeviationx"

"bodytimeacceleratorjerkstandarddeviationy"

"bodytimeacceleratorjerkstandarddeviationz"

"bodytimegyroscopestandarddeviationx"

"bodytimegyroscopestandarddeviationy"

"bodytimegyroscopestandarddeviationz"

"bodytimegyroscopejerkstandarddeviationx"

"bodytimegyroscopejerkstandarddeviationy"

"bodytimegyroscopejerkstandarddeviationz"

"bodytimeacceleratormagnitudestandarddeviation"

"tgravityaccmagnitudestandarddeviation"

"bodytimeacceleratorjerkmagnitudestandarddeviation"

"bodytimegyroscopemagnitudestandarddeviation"

"bodytimegyroscopejerkmagnitudestandarddeviation"

"bodyfrequencyacceleratorstandarddeviationx"

"bodyfrequencyacceleratorstandarddeviationy"

"bodyfrequencyacceleratorstandarddeviationz"

"bodyfrequencyacceleratorjerkstandarddeviationx"

"bodyfrequencyacceleratorjerkstandarddeviationy"

"bodyfrequencyacceleratorjerkstandarddeviationz"

"bodyfrequencygyroscopestandarddeviationx"

"bodyfrequencygyroscopestandarddeviationy"

"bodyfrequencygyroscopestandarddeviationz"

"bodyfrequencyacceleratormagnitudestandarddeviation"

"bodyfrequencybodyacceleratorjerkmagnitudestandarddeviation"

"bodyfrequencybodygyroscopemagnitudestandarddeviation"

"bodyfrequencybodygyroscopejerkmagnitudestandarddeviation"


## Definitions:
* "subject" - The person whose data were extracted by the mobile phone.

* "activity" - One of 6 actions: walking, walking_upstairs, walking_downstairs, sitting, standing or laying, performed by the person.
The remaining fields were all extracted and treated in the course of the experiment by two applications, gyroscope and accelerator, new, derived measures were then calculated, generating new fields. The name of the fields were tidied up in this exercise to produce more readable names, in the following way:

*	tBodyAcc-mean()-X	BECAME	bodytimeacceleratormeanx

*	tBodyAcc-mean()-Y	BECAME	bodytimeacceleratormeany

*	tBodyAcc-mean()-Z	BECAME	bodytimeacceleratormeanz

*	tGravityAcc-mean()-X	BECAME	tgravityaccmeanx

*	tGravityAcc-mean()-Y	BECAME	tgravityaccmeany

*	tGravityAcc-mean()-Z	BECAME	tgravityaccmeanz

*	tBodyAccJerk-mean()-X	BECAME	bodytimeacceleratorjerkmeanx

*	tBodyAccJerk-mean()-Y	BECAME	bodytimeacceleratorjerkmeany

*	tBodyAccJerk-mean()-Z	BECAME	bodytimeacceleratorjerkmeanz

*	tBodyGyro-mean()-X	BECAME	bodytimegyroscopemeanx

*	tBodyGyro-mean()-Y	BECAME	bodytimegyroscopemeany

*	tBodyGyro-mean()-Z	BECAME	bodytimegyroscopemeanz

*	tBodyGyroJerk-mean()-X	BECAME	bodytimegyroscopejerkmeanx

*	tBodyGyroJerk-mean()-Y	BECAME	bodytimegyroscopejerkmeany

*	tBodyGyroJerk-mean()-Z	BECAME	bodytimegyroscopejerkmeanz

*	tBodyAccMag-mean()	BECAME	bodytimeacceleratormagnitudemean

*	tGravityAccMag-mean()	BECAME	tgravityaccmagnitudemean

*	tBodyAccJerkMag-mean()	BECAME	bodytimeacceleratorjerkmagnitudemean

*	tBodyGyroMag-mean()	BECAME	bodytimegyroscopemagnitudemean

*	tBodyGyroJerkMag-mean()	BECAME	bodytimegyroscopejerkmagnitudemean

*	fBodyAcc-mean()-X	BECAME	bodyfrequencyacceleratormeanx

*	fBodyAcc-mean()-Y	BECAME	bodyfrequencyacceleratormeany

*	fBodyAcc-mean()-Z	BECAME	bodyfrequencyacceleratormeanz

*	fBodyAcc-meanFreq()-X	BECAME	bodyfrequencyacceleratormeanfrequencyx

*	fBodyAcc-meanFreq()-Y	BECAME	bodyfrequencyacceleratormeanfrequencyy

*	fBodyAcc-meanFreq()-Z	BECAME	bodyfrequencyacceleratormeanfrequencyz

*	fBodyAccJerk-mean()-X	BECAME	bodyfrequencyacceleratorjerkmeanx

*	fBodyAccJerk-mean()-Y	BECAME	bodyfrequencyacceleratorjerkmeany

*	fBodyAccJerk-mean()-Z	BECAME	bodyfrequencyacceleratorjerkmeanz

*	fBodyAccJerk-meanFreq()-X	BECAME	bodyfrequencyacceleratorjerkmeanfrequencyx

*	fBodyAccJerk-meanFreq()-Y	BECAME	bodyfrequencyacceleratorjerkmeanfrequencyy

*	fBodyAccJerk-meanFreq()-Z	BECAME	bodyfrequencyacceleratorjerkmeanfrequencyz

*	fBodyGyro-mean()-X	BECAME	bodyfrequencygyroscopemeanx

*	fBodyGyro-mean()-Y	BECAME	bodyfrequencygyroscopemeany

*	fBodyGyro-mean()-Z	BECAME	bodyfrequencygyroscopemeanz

*	fBodyGyro-meanFreq()-X	BECAME	bodyfrequencygyroscopemeanfrequencyx

*	fBodyGyro-meanFreq()-Y	BECAME	bodyfrequencygyroscopemeanfrequencyy

*	fBodyGyro-meanFreq()-Z	BECAME	bodyfrequencygyroscopemeanfrequencyz

*	fBodyAccMag-mean()	BECAME	bodyfrequencyacceleratormagnitudemean

*	fBodyAccMag-meanFreq()	BECAME	bodyfrequencyacceleratormagnitudemeanfrequency

*	fBodyBodyAccJerkMag-mean()	BECAME	bodyfrequencybodyacceleratorjerkmagnitudemean

*	fBodyBodyAccJerkMag-meanFreq()	BECAME	
bodyfrequencybodyacceleratorjerkmagnitudemeanfrequency

*	fBodyBodyGyroMag-mean()	BECAME	bodyfrequencybodygyroscopemagnitudemean

*	fBodyBodyGyroMag-meanFreq()	BECAME	bodyfrequencybodygyroscopemagnitudemeanfrequency

*	fBodyBodyGyroJerkMag-mean()	BECAME	bodyfrequencybodygyroscopejerkmagnitudemean

*	fBodyBodyGyroJerkMag-meanFreq()	BECAME	
bodyfrequencybodygyroscopejerkmagnitudemeanfrequency

*	angle(tBodyAccMean,gravity)	BECAME	anglebodytimeacceleratormeangravity

*	angle(tBodyAccJerkMean),gravityMean)	BECAME	
anglebodytimeacceleratorjerkmeangravitymean

*	angle(tBodyGyroMean,gravityMean)	BECAME	anglebodytimegyroscopemeangravitymean

*	angle(tBodyGyroJerkMean,gravityMean)	BECAME	anglebodytimegyroscopejerkmeangravitymean

*	angle(X,gravityMean)	BECAME	anglexgravitymean

*	angle(Y,gravityMean)	BECAME	angleygravitymean

*	angle(Z,gravityMean)	BECAME	anglezgravitymean

*	tBodyAcc-std()-X	BECAME	bodytimeacceleratorstandarddeviationx

*	tBodyAcc-std()-Y	BECAME	bodytimeacceleratorstandarddeviationy

*	tBodyAcc-std()-Z	BECAME	bodytimeacceleratorstandarddeviationz

*	tGravityAcc-std()-X	BECAME	tgravityaccstandarddeviationx

*	tGravityAcc-std()-Y	BECAME	tgravityaccstandarddeviationy

*	tGravityAcc-std()-Z	BECAME	tgravityaccstandarddeviationz

*	tBodyAccJerk-std()-X	BECAME	bodytimeacceleratorjerkstandarddeviationx

*	tBodyAccJerk-std()-Y	BECAME	bodytimeacceleratorjerkstandarddeviationy

*	tBodyAccJerk-std()-Z	BECAME	bodytimeacceleratorjerkstandarddeviationz

*	tBodyGyro-std()-X	BECAME	bodytimegyroscopestandarddeviationx

*	tBodyGyro-std()-Y	BECAME	bodytimegyroscopestandarddeviationy

*	tBodyGyro-std()-Z	BECAME	bodytimegyroscopestandarddeviationz

*	tBodyGyroJerk-std()-X	BECAME	bodytimegyroscopejerkstandarddeviationx

*	tBodyGyroJerk-std()-Y	BECAME	bodytimegyroscopejerkstandarddeviationy

*	tBodyGyroJerk-std()-Z	BECAME	bodytimegyroscopejerkstandarddeviationz

*	tBodyAccMag-std()	BECAME	bodytimeacceleratormagnitudestandarddeviation

*	tGravityAccMag-std()	BECAME	tgravityaccmagnitudestandarddeviation

*	tBodyAccJerkMag-std()	BECAME	bodytimeacceleratorjerkmagnitudestandarddeviation

*	tBodyGyroMag-std()	BECAME	bodytimegyroscopemagnitudestandarddeviation

*	tBodyGyroJerkMag-std()	BECAME	bodytimegyroscopejerkmagnitudestandarddeviation

*	fBodyAcc-std()-X	BECAME	bodyfrequencyacceleratorstandarddeviationx

*	fBodyAcc-std()-Y	BECAME	bodyfrequencyacceleratorstandarddeviationy

*	fBodyAcc-std()-Z	BECAME	bodyfrequencyacceleratorstandarddeviationz

*	fBodyAccJerk-std()-X	BECAME	bodyfrequencyacceleratorjerkstandarddeviationx

*	fBodyAccJerk-std()-Y	BECAME	bodyfrequencyacceleratorjerkstandarddeviationy

*	fBodyAccJerk-std()-Z	BECAME	bodyfrequencyacceleratorjerkstandarddeviationz

*	fBodyGyro-std()-X	BECAME	bodyfrequencygyroscopestandarddeviationx

*	fBodyGyro-std()-Y	BECAME	bodyfrequencygyroscopestandarddeviationy

*	fBodyGyro-std()-Z	BECAME	bodyfrequencygyroscopestandarddeviationz

*	fBodyAccMag-std()	BECAME	bodyfrequencyacceleratormagnitudestandarddeviation

*	fBodyBodyAccJerkMag-std()	BECAME	
bodyfrequencybodyacceleratorjerkmagnitudestandarddeviation

*	fBodyBodyGyroMag-std()	BECAME	bodyfrequencybodygyroscopemagnitudestandarddeviation

*	fBodyBodyGyroJerkMag-std()	BECAME	
bodyfrequencybodygyroscopejerkmagnitudestandarddeviation
