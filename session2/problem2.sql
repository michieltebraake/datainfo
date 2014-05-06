CREATE TABLE F (x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));

INSERT INTO F VALUES ('ABC', 'EF', false, 'Je hebt E, vanuit die krijg je D en daardoor A.');
INSERT INTO F VALUES('E', 'D', true, 'E+= EDA');
INSERT INTO F VALUES ('D', 'A', true, 'D+= DA');