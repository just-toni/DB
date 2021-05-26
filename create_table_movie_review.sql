
CREATE TABLE REVIEWERS(
rev_id				Integer(11)				NOT NULL			AUTO_INCREMENT,
first_name			CHAR(100)				NULL,
last_name			CHAR(100)				NULL,
CONSTRAINT			Reviwers_PK				PRIMARY KEY(rev_id)
);

CREATE TABLE MOVIES(
mov_id				Integer(11)				NOT NULL			AUTO_INCREMENT,
title				CHAR(100)				NULL,
release_year		YEAR(4)					NULL,
genre				CHAR(100)				NULL,
collection_in_mil	DECIMAL(4,1)			NULL,
CONSTRAINT			Movies_PK				PRIMARY KEY(mov_id)
);

CREATE TABLE RATINGS(
rev_id				Integer(11)				NOT NULL			,
mov_id				Integer(11)				NOT NULL			,
rating				DECIMAL(2,1)			NULL,
CONSTRAINT			Ratings_Reviewers_FK	FOREIGN KEY(rev_id)
							REFERENCES Reviewers(rev_id),
CONSTRAINT			Ratings_Movies_FK		FOREIGN KEY(mov_id)
							REFERENCES Movies(mov_id)
);