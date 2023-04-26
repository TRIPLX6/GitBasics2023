--table chanteur (Oracle DB format)

create table chanteur (
			id INTEGER
				GENERATED ALWAYS AS IDENTITY
				CONSTRAINT pk_chanteur PRIMARY KEY,
		nom VARCHAR2(50) NOT NULL,
		birthdate DATE
)