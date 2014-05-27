CREATE TABLE boek (isbn VARCHAR(20), titel VARCHAR(50), auteur VARCHAR(50), PRIMARY KEY (isbn));
CREATE TABLE exemplaar (isbn VARCHAR(20), volgnummer INTEGER, gewicht INTEGER, kast INTEGER, PRIMARY KEY(isbn, volgnummer), FOREIGN KEY (isbn) REFERENCES boek(isbn));

CREATE OR REPLACE FUNCTION delete_exemplaar() RETURNS trigger AS $check_delete$
    BEGIN
        DELETE FROM exemplaar
        WHERE exemplaar.isbn = OLD.isbn;
        RETURN OLD;
    END;
$check_delete$ LANGUAGE plpgsql;


CREATE TRIGGER check_delete
    BEFORE DELETE ON boek
    FOR EACH ROW
    EXECUTE PROCEDURE delete_exemplaar();