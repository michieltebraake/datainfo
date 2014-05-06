SELECT p.name FROM Person p
WHERE 'p is a writer that wrote a movie without a director'

SELECT p.name FROM Person p
WHERE EXISTS (
    SELECT * FROM Writes w -- p is a writer
    WHERE p.pid  = w.pid
    AND 'p wrote a move without a director'
)

SELECT p.name FROM Person p
WHERE EXISTS (
    SELECT * FROM Writes w
    WHERE p.pid = w.pid
    AND EXISTS (
        SELECT * FROM Movie m -- p wrote a movie
        WHERE w.mid = m.mid
        AND 'm does not have a director'
     )
);

SELECT p.name FROM Person p
WHERE EXISTS (
    SELECT * FROM Writes w
    WHERE p.pid = w.pid
    AND EXISTS (
        SELECT * FROM Movie m
        WHERE w.mid = m.mid
        AND NOT EXISTS (
            SELECT * FROM Directs d -- movie does not have a director
            WHERE m.mid = d.mid
        )
     )
);

SELECT p.name FROM Person p
WHERE EXISTS (
    SELECT * FROM Writes w, Movie m
    WHERE p.pid = w.pid
    AND w.mid = m.mid
    AND NOT EXISTS (
        SELECT * FROM Directs d
        WHERE m.mid = d.mid       
    )
);

SELECT p.name FROM Person p, Writes w, Movie m
WHERE p.pid = w.pid
AND w.mid = m.mid
AND NOT EXISTS (
    SELECT * FROM Directs d
    WHERE m.mid = d.mid       
);