PROGRAM produit-scalaire;
FUNCTION dot_product(x, y: ARRAY OF Real): Real;
VAR
    i,n: Integer;
    ps: Real;
    v1, v2: ARRAY[1..3] OF Real;
BEGIN
    ps := 0.0;
    FOR i := Low(x) TO High(x) DO
    BEGIN
        ps := ps + x[i] * y[i];
    END;
    dot_product := ps;
END;
BEGIN
    WRITELN('Entrez le nombre de paire de vecteur :');
    ReadLn(n);
    FOR i := 1 TO n DO
    BEGIN
        WRITELN('Entrez les coordonnées du premier vecteur :');
        FOR j := 1 TO 3 DO
        BEGIN
            ReadLn(v1[j]);
        END;
        WRITELN('Entrez les coordonnées du deuxième vecteur :');
        FOR j := 1 TO 3 DO
        BEGIN
            ReadLn(v2[j]);
        END;
        WRITELN('Le produit scalaire des deux vecteurs est : ', dot_product(v1, v2));
        if dot_product(v1, v2) = 0 then
            WRITELN('Les deux vecteurs sont orthogonaux.');
        else
            WRITELN('Les deux vecteurs ne sont pas orthogonaux.');
    END;
