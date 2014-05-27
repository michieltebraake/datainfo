--write1(y): 
UPDATE boek SET titel = titel || ' deel 1' WHERE isbn = '0321228383';
--write2(x): 
UPDATE boek SET titel = titel || ' deel 2' WHERE isbn = '0136067018';
--read1(y):  
SELECT titel FROM boek WHERE isbn = '0321228383';
--read2(x):  
SELECT titel FROM boek WHERE isbn = '0136067018';
--read1(x):  
SELECT titel FROM boek WHERE isbn = '0136067018';
--write1(x): 
UPDATE boek SET titel = titel || ' deel 1' WHERE isbn = '0136067018';