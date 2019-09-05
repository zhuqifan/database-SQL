-- COMP23111 Fundamentals of Databases
-- 2014-2015
-- AAAF: Tue 13 Aug 2013 09:53:06 BST
-- Edited by: Klitos on Tue 16 Sep 2014 18:42:12 GMT

-- create all the tables

CREATE TABLE Manager(
	manager_ID	INTEGER,
	name		VARCHAR2(50) NOT NULL,
	CONSTRAINT 	m_id_pk PRIMARY KEY(manager_ID));

CREATE TABLE ManPhone(
	manager_ID	INTEGER,
	telephone	VARCHAR2(40),
	CONSTRAINT 	mp_id_pk PRIMARY KEY(manager_ID, telephone),
	CONSTRAINT 	mp_id_fk FOREIGN KEY(manager_ID) REFERENCES Manager(manager_ID));

CREATE TABLE Artist(
	artistic_name   VARCHAR2(40),
	genre		VARCHAR2(20) NOT NULL,
	managedBy	INTEGER NOT NULL,
	CONSTRAINT 	a_artistic_name_pk PRIMARY KEY(artistic_name),
	CONSTRAINT 	a_managedBy_fk FOREIGN KEY(managedBy) REFERENCES Manager(manager_ID));

CREATE TABLE ContractInfo(
	hasContract	VARCHAR2(40),
	date_from	DATE NOT NULL,
	date_to		DATE NOT NULL,
	duration	INTEGER,
	CONSTRAINT 	ci_contract_id_pk PRIMARY KEY(hasContract, date_from, date_to),
	CONSTRAINT 	ci_hasContract_fk FOREIGN KEY(hasContract) REFERENCES Artist(artistic_name));
	
 CREATE TABLE Album (
	album_ID	VARCHAR2(5),
	title		VARCHAR2(80),
	createdBy	VARCHAR2(40),
	CONSTRAINT 	a_album_id_pk PRIMARY KEY(album_ID),
	CONSTRAINT 	a_createdBy_fk FOREIGN KEY(createdBy) REFERENCES Artist(artistic_name));

CREATE TABLE SoundEngineer(
	sound_eng_ID	INTEGER,
	name	VARCHAR2(50) NOT NULL,
	CONSTRAINT 	se_sound_eng_id_pk PRIMARY KEY(sound_eng_ID));

CREATE TABLE MasterTrack (
	track_ID	INTEGER,
	working_title	VARCHAR2(40),
	working_length	VARCHAR2(40),
	recordedBy	VARCHAR2(40),
	editedBy	INTEGER,
	CONSTRAINT 	mt_track_id_pk PRIMARY KEY(track_ID),
	CONSTRAINT 	mt_recordedBy_fk FOREIGN KEY(recordedBy) REFERENCES Artist(artistic_name),
	CONSTRAINT 	mt_editedBy_fk FOREIGN KEY(editedBy) REFERENCES SoundEngineer(sound_eng_ID));

CREATE TABLE FinishedTrack (
	originatesFrom   INTEGER,
	version  INTEGER,
	released_title	VARCHAR2(40),
	final_length	VARCHAR2(40),
	CONSTRAINT 	ft_id_pk PRIMARY KEY(originatesFrom, version),
	CONSTRAINT 	ft_originatesFrom_fk FOREIGN KEY(originatesFrom) REFERENCES MasterTrack(track_ID));
	
-- create appropriate indices

CREATE INDEX m_idx on Manager(name);
CREATE INDEX mp_idx on ManPhone(telephone);
CREATE INDEX se_idx on SoundEngineer(name);
CREATE INDEX a_idx on Artist(genre);
CREATE INDEX mt_idx on MasterTrack(working_title);
CREATE INDEX ft_idx on FinishedTrack(released_title);

-- end of script