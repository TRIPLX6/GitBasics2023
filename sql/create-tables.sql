--table chanteur (Oracle DB format)

CREATE TABLE chanteur (
	id INTEGER
		GENERATED ALWAYS AS IDENTITY
		CONSTRAINT pk_chanteur PRIMARY KEY,
	nom VARCHAR2(50) NOT NULL,
	birthdate DATE
);

CREATE TABLE chanson (
	id INTEGER
		GENERATED ALWAYS AS IDENTITY
		CONSTRAINT pk_chanson PRIMARY KEY,
	title VARCHAR2(150) NOT NULL,
	id_chanteur INTEGER
);

ALTER TABLE chanson add CONSTRAINT FOREIGN KEY fk_chanteur_chanteur
		FOREIGN KEY (id_chanteur)
	REFERENCES chanteur(id);