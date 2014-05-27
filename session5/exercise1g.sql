CREATE TABLE bestelling (
	isbn VARCHAR(20),
	aantal INTEGER,
    PRIMARY KEY (isbn),
	FOREIGN KEY(isbn) REFERENCES boek(isbn)
);

CREATE OR REPLACE FUNCTION add_schrijver() RETURNS TRIGGER AS $check_new_schrijver$
    BEGIN
        IF (SELECT COUNT(*) FROM boek WHERE auteur = NEW.auteur) = 1 THEN
		  INSERT INTO bestelling VALUES(NEW.isbn, 1);
        END IF;
        RETURN NULL;
    END;
$check_new_schrijver$ LANGUAGE plpgsql;

CREATE TRIGGER check_new_schrijver
	AFTER INSERT ON boek
	FOR EACH ROW
    EXECUTE PROCEDURE add_schrijver();