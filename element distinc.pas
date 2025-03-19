PROGRAM element distincts;
VAR
    j, i, sum, count: INTEGER;
    tab, tab1: ARRAY[1..5] OF INTEGER;

BEGIN
    // Initialisation des tableaux
    tab[1] := 2; tab[2] := 7; tab[3] := 9; tab[4] := 4; tab[5] := 10;
    tab1[1] := 5; tab1[2] := 1; tab1[3] := 8; tab1[4] := 4; tab1[5] := 2;

    sum := 0;

    // Parcours du tableau tab
    FOR i := 1 TO 5 DO
    BEGIN
        count := 0;
        // Comparaison avec les éléments de tab1
        FOR j := 1 TO 5 DO
        BEGIN
            IF tab[i] = tab1[j] THEN
                count := count + 1;
        END;
        // Si aucun élément correspondant n'est trouvé, ajouter à la somme
        IF count = 0 THEN
            sum := sum + tab[i];
    END;

    // Affichage du résultat
    WRITELN('La somme des éléments de tab qui ne sont pas dans tab1 est : ', sum);
END.