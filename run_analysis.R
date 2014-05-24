trainX 	<- read.table("train/X_train.txt");
trainY 	<- read.table("train/y_train.txt")
trainS 	<- read.table("train/subject_train.txt");

testX 	<- read.table("test/X_test.txt");
testY 	<- read.table("test/y_test.txt");
testS 	<- read.table("test/subject_test.txt");

X 		<- rbind(trainX, testX);
Y 		<- rbind(trainY, testY);
S 		<- rbind(trainS, testS);

features 		<- read.table("features.txt");
mean_sd_index 	<- grep("-mean\\(\\)|-std\\(\\)", features[, 2]);
X 				<- X[, mean_sd_index];
names(X) 		<- features[mean_sd_index, 2];
names(X) 		<- gsub("\\(|\\)", "", names(X));
names(X) 		<- tolower(names(X));

activities 		<- read.table("activity_labels.txt");
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])));
Y[,1] 			= activities[Y[,1], 2];
names(Y) 		<- "activity";

names(S) 		<- "subject";
cleaned 		<- cbind(S, Y, X);

subjects 	= unique(S)[,1];
totalA 		= length(activities[,1]);
totalC 		= dim(cleaned)[2];
totalS 		= length(unique(S)[,1]);
result 		= cleaned[1:(totalS*totalA), ];
row 		= 1;

for (s in 1:totalS) {
	for (a in 1:totalA) {
		result[row, 1] 			= subjects[s];
		result[row, 2] 			= activities[a, 2];
		tmp 					<- cleaned[cleaned$subject==s & cleaned$activity==activities[a, 2], ];
		result[row, 3:totalC] 	<- colMeans(tmp[, 3:totalC]);
		row 					= row+1;
	}
}
write.table(result, "clean_and_tidy.txt");