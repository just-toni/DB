CREATE TABLE Movie(
mov_id			Integer				NOT NULL,
mov_title		CHAR(50)			NULL,
mov_year		Integer				 NULL,
mov_time		Integer				 NULL,
mov_lang		CHAR(50)			 NULL,
mov_dt_rel		DATE				 NULL,
mov_rel_country CHAR(5)				NULL,
CONSTRAINT		Movie_PK			PRIMARY KEY(mov_id)
);

CREATE TABLE Actor(
act_id			Integer				not null,
act_fname		char(20)			 null,
act_lname		char(20)			null,
act_gender		char(1)				null,
CONSTRAINT		Actor_PK			PRIMARY KEY(act_id)
);

CREATE TABLE Director(
dir_id			integer				not null,
dir_fname		char(20)			null,
dir_lname 		char(20)			null,
CONSTRAINT		Director_PK			PRIMARY KEY(dir_id)
);

CREATE TABLE MovieDirection(
dir_id			integer				not null,
mov_id			integer				not null,
CONSTRAINT		MovieDirection_Movie_FK			FOREIGN KEY(mov_id)
									REFERENCES MOVIE(mov_id),
CONSTRAINT		MovieDirection_Direction_FK			FOREIGN KEY(dir_id)
									REFERENCES DIRECTOR(dir_id)
);

CREATE TABLE MovieCast(
act_id			integer				not null,
mov_id			integer				not null,
role 			char(30)			null,
CONSTRAINT		MovieCast_Movie_FK	FOREIGN KEY(mov_id)
									REFERENCES MOVIE(mov_id),
CONSTRAINT		MovieCast_Actor_FK	FOREIGN KEY(act_id)
									REFERENCES ACTOR(act_id)
);

CREATE TABLE Reviewer(
rev_id			integer				not null,
rev_name		char(30)			null,
CONSTRAINT		Reviwer_PK			PRIMARY KEY(rev_id)
);

CREATE TABLE Genre(
gen_id			integer				not null,
gen_title		char(20)			null,
CONSTRAINT		Genre_PK			PRIMARY KEY(gen_id)
);

CREATE TABLE MovieGenre(
mov_id			integer				not null,
gen_id			integer				not null,
CONSTRAINT		MovieGenre_Movie_FK	FOREIGN KEY(mov_id)
									REFERENCES MOVIE(mov_id),
CONSTRAINT		MovieGenre_Genre_FK	FOREIGN KEY(gen_id)
									REFERENCES GENRE(gen_id)
                                    );
                                    
CREATE TABLE Rating(
mov_id			integer				not null,
rev_id			integer				not null,
rev_stars		integer				null,
num_o_ratings	integer				 null,
CONSTRAINT		Rating_Movie_FK		FOREIGN KEY (mov_id)
									REFERENCES MOVIE(mov_id),
CONSTRAINT		Rating_Reviewer_FK	FOREIGN KEY (rev_id)
									REFERENCES REVIEWER(rev_id)
                                    );

                                    