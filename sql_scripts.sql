CREATE table Questions(
	questionID int AUTO_INCREMENT,
	question_text varchar(500),
 	number_of_questions int,
	PRIMARY KEY(questionID)
);

create table Answers(
	answerID int AUTO_INCREMENT,
	answer_text varchar(64),
	questionID int,
	PRIMARY KEY (answerID),
	FOREIGN KEY (questionID) REFERENCES Questions(questionID)
);

create table answer_key_bridge(
	questionID int,
	correct_answerID int,
	FOREIGN KEY (questionID) REFERENCES Questions(questionID),
	FOREIGN KEY (correct_answerID) REFERENCES Answers(answerID)

);