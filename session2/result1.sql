CREATE�TABLE�Problem1�(
	task�CHAR(1),
    result�BOOLEAN,
    motivation�VARCHAR(200), 
    PRIMARY KEY (task);
}

INSERT INTO Problem1 VALUES ('a', false, 'Voertuigen kunnen dezelfde capaciteit hebben (3)');
INSERT INTO Problem1 VALUES ('b', true, 'Een voertuig heeft maar één capaciteit (3)');
INSERT INTO Problem1 VALUES ('c', false, 'Op een factuur kunnen meerdere pakjes staan (8)');
INSERT INTO Problem1 VALUES ('d', true, 'Een pakje staat maar op één factuur en een factuur is voor één adres (8, c)');
INSERT INTO Problem1 values ('e', true, 'Een pakje staat op één factuur en deze is voor één ontvanger (8, c) en een pakje heeft één geldbedrag (5)');
INSERT INTO Problem1 VALUES ('f', false, 'Een bezorger kan in verschillende voertuigen rijden (2)');
INSERT INTO Problem1 VALUES ('g', false, 'Een voertuig kan bij verschillende bezorgers horen (2)');

-- Dubbele afhankelijkheden zijn we niet uit gekomen
 