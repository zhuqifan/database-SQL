-- COMP23111 Fundamentals of Databases
-- 2014-2015
-- AAAF: Tue 13 Aug 2013 09:53:06 BST
-- Edited by: Klitos on Tue 16 Sep 2014 18:42:12 GMT

-- populate all the tables

INSERT INTO Manager VALUES (1, 'Freddy Glitter');
INSERT INTO Manager VALUES (2, 'Perry Soft');
INSERT INTO Manager VALUES (3, 'Axel Management Inc');
INSERT INTO Manager VALUES (4, 'New Talent Corp Inc');
INSERT INTO Manager VALUES (5, 'Manchester Events');

INSERT INTO ManPhone VALUES (1, '01612750987');
INSERT INTO ManPhone VALUES (1, '07865058978');
INSERT INTO ManPhone VALUES (2, '01615679876');
INSERT INTO ManPhone VALUES (2, '07789039894');
INSERT INTO ManPhone VALUES (3, '01623728473');
INSERT INTO ManPhone VALUES (3, '07837287492');
INSERT INTO ManPhone VALUES (4, '01789403940');
INSERT INTO ManPhone VALUES (5, '01616374847');
INSERT INTO ManPhone VALUES (5, '01563828248');
INSERT INTO ManPhone VALUES (5, '09495849869');

INSERT INTO Artist VALUES ('Goldfrat', 'Indie', 1);
INSERT INTO Artist VALUES ('Simon Palm', 'RB', 1);
INSERT INTO Artist VALUES ('Flut', 'Soul', 2);
INSERT INTO Artist VALUES ('John Cliff', 'CW', 3);
INSERT INTO Artist VALUES ('Jay Blancard', 'Soul', 3);
INSERT INTO Artist VALUES ('Palmer John', 'Indie', 4);
INSERT INTO Artist VALUES ('Zero7', 'Techno', 4);
INSERT INTO Artist VALUES ('JZ', 'Techno', 4);
INSERT INTO Artist VALUES ('Scandal', 'Dance', 5);
INSERT INTO Artist VALUES ('JK Rowl', 'Dance', 5);
INSERT INTO Artist VALUES ('PJ Blox', 'Dance', 5);

INSERT INTO ContractInfo VALUES ('Goldfrat', '10-oct-2010', '09-oct-2014', 0);
INSERT INTO ContractInfo VALUES ('Simon Palm', '20-aug-2005', '19-aug-2007', 0);
INSERT INTO ContractInfo VALUES ('Simon Palm', '20-sep-2012', '19-aug-2014', 0);
INSERT INTO ContractInfo VALUES ('Flut', '10-aug-2009', '09-sep-2014', 0);
INSERT INTO ContractInfo VALUES ('John Cliff', '10-mar-2006', '10-apr-2012', 0);
INSERT INTO ContractInfo VALUES ('Jay Blancard', '01-jan-2004', '20-jun-2014', 0);
INSERT INTO ContractInfo VALUES ('Palmer John', '12-feb-2006', '01-jun-2008', 0);
INSERT INTO ContractInfo VALUES ('Zero7', '31-dec-2011', '26-feb-2016', 0);
INSERT INTO ContractInfo VALUES ('JZ', '24-mar-2005', '30-dec-2007', 0);
INSERT INTO ContractInfo VALUES ('Scandal', '22-oct-2012', '19-nov-2016', 0);
INSERT INTO ContractInfo VALUES ('JK Rowl', '19-apr-2003', '06-jan-2009', 0);
INSERT INTO ContractInfo VALUES ('PJ Blox', '21-jun-2008', '16-jul-2013', 0);

INSERT INTO Album VALUES ('1c', '20 People in a Field', 'Goldfrat');
INSERT INTO Album VALUES ('1v', '20 People in a Field', 'Goldfrat');
INSERT INTO Album VALUES ('1t', '20 People in a Field', 'Goldfrat');
INSERT INTO Album VALUES ('2c', 'My Feet', 'Flut');
INSERT INTO Album VALUES ('2v', 'My Feet', 'Flut');
INSERT INTO Album VALUES ('3c', 'Debut', 'Jay Blancard');

INSERT INTO SoundEngineer VALUES (1, 'Max Spring');
INSERT INTO SoundEngineer VALUES (2, 'Jay Verbal');
INSERT INTO SoundEngineer VALUES (3, 'Carole Hart');
INSERT INTO SoundEngineer VALUES (4, 'Brix Musta');
INSERT INTO SoundEngineer VALUES (5, 'Karen Croft');

INSERT INTO MasterTrack VALUES (103, 'Hello', '3 mins', 'Goldfrat', 1);
INSERT INTO MasterTrack VALUES (104, 'Me', '3 mins 10 secs', 'Goldfrat', 1);
INSERT INTO MasterTrack VALUES (105, 'You', '3 mins 40 secs', 'Goldfrat', 1);
INSERT INTO MasterTrack VALUES (106, 'Them', '2 mins', 'Goldfrat', 2);
INSERT INTO MasterTrack VALUES (107, 'Us', '50 secs', 'Goldfrat', 1);
INSERT INTO MasterTrack VALUES (108, 'How', '7 mins', 'Goldfrat', 4);
INSERT INTO MasterTrack VALUES (109, 'Be', '8 mins', 'Goldfrat', 1);
INSERT INTO MasterTrack VALUES (110, 'Peace', '4 mins', 'Goldfrat', 1);
INSERT INTO MasterTrack VALUES (111, 'Smile', '2 mins', 'Goldfrat', 1);
INSERT INTO MasterTrack VALUES (203, 'Wow', '3 mins', 'Flut', 3);
INSERT INTO MasterTrack VALUES (204, 'Whizzy', '3 mins 15 secs', 'Flut', 3);
INSERT INTO MasterTrack VALUES (205, 'Who Are You?', '3 mins 30 secs', 'Flut', 3);
INSERT INTO MasterTrack VALUES (206, 'Place and Time', '5 mins', 'Flut', 4);
INSERT INTO MasterTrack VALUES (207, 'Milko', '58 secs', 'Flut', 1);
INSERT INTO MasterTrack VALUES (208, 'Mad', '1 min', 'Flut', 2);
INSERT INTO MasterTrack VALUES (209, 'Bling', '59 secs', 'Flut', 3);
INSERT INTO MasterTrack VALUES (210, 'J', '2 mins 10 secs', 'Flut', 1);
INSERT INTO MasterTrack VALUES (211, 'Jan', '100 secs', 'Flut', 1);
INSERT INTO MasterTrack VALUES (301, 'Power', '2 mins', 'Jay Blancard', 3);
INSERT INTO MasterTrack VALUES (302, 'What is your name?', '4 mins 15 secs', 'Jay Blancard', 3);
INSERT INTO MasterTrack VALUES (303, 'Mix', '3 mins 12 secs', 'Jay Blancard', 3);
INSERT INTO MasterTrack VALUES (304, 'Manic', '2 mins', 'Jay Blancard', 2);
INSERT INTO MasterTrack VALUES (305, 'Streets', '30 secs', 'Jay Blancard', 2);
INSERT INTO MasterTrack VALUES (306, 'Road', '1 min 40 secs', 'Jay Blancard', 5);
INSERT INTO MasterTrack VALUES (307, 'Forest', '60 secs', 'Jay Blancard', 5);
INSERT INTO MasterTrack VALUES (308, 'Deep', '2 mins 40 secs', 'Jay Blancard', 5);
INSERT INTO MasterTrack VALUES (309, 'Danger', '110 secs', 'Jay Blancard', 5);

INSERT INTO FinishedTrack VALUES (103, 2, 'Hello', '3 mins');
INSERT INTO FinishedTrack VALUES (103, 3, 'Extended Hello', '6 mins');
INSERT INTO FinishedTrack VALUES (104, 2, 'Me', '3 mins 10 secs');
INSERT INTO FinishedTrack VALUES (105, 2, 'You', '3 mins 40 secs');
INSERT INTO FinishedTrack VALUES (106, 2, 'Them', '2 mins');
INSERT INTO FinishedTrack VALUES (107, 2, 'Us', '50 secs');
INSERT INTO FinishedTrack VALUES (108, 2, 'How', '7 mins');
INSERT INTO FinishedTrack VALUES (109, 2, 'Be', '8 mins');
INSERT INTO FinishedTrack VALUES (110, 2, 'Peace', '4 mins');
INSERT INTO FinishedTrack VALUES (111, 2, 'Smile', '2 mins');
INSERT INTO FinishedTrack VALUES (203, 2, 'Wow', '3 mins');
INSERT INTO FinishedTrack VALUES (204, 2, 'Whizzy', '3 mins 15 secs');
INSERT INTO FinishedTrack VALUES (205, 2, 'Who Are You?', '3 mins 30 secs');
INSERT INTO FinishedTrack VALUES (206, 2, 'Place and Time', '5 mins');
INSERT INTO FinishedTrack VALUES (207, 2, 'Milko', '58 secs');
INSERT INTO FinishedTrack VALUES (208, 2, 'Mad', '1 min');
INSERT INTO FinishedTrack VALUES (209, 2, 'Bling', '59 secs');
INSERT INTO FinishedTrack VALUES (210, 2, 'J', '2 mins 10 secs');
INSERT INTO FinishedTrack VALUES (211, 2, 'Jan', '100 secs');
INSERT INTO FinishedTrack VALUES (301, 2, 'Power', '2 mins');
INSERT INTO FinishedTrack VALUES (302, 2, 'What is your name?', '4 mins 15 secs');
INSERT INTO FinishedTrack VALUES (303, 2, 'Mix', '3 mins 12 secs');
INSERT INTO FinishedTrack VALUES (304, 2, 'Manic', '2 mins');
INSERT INTO FinishedTrack VALUES (305, 2, 'Streets', '30 secs');
INSERT INTO FinishedTrack VALUES (306, 2, 'Road', '1 min 40 secs');
INSERT INTO FinishedTrack VALUES (307, 2, 'Forest', '60 secs');
INSERT INTO FinishedTrack VALUES (308, 2, 'Deep', '2 mins 40 secs');
INSERT INTO FinishedTrack VALUES (309, 2, 'Danger', '110 secs');
INSERT INTO FinishedTrack VALUES (309, 3, 'Danger Remix', '210 secs');

-- end of script