PROGRAM AnalysePhrase;
VAR
    nbmots, nbcar, nbvoy, j, i : INTEGER;
    car, v : CHAR;
    phrase : STRING;
    voy : STRING;

BEGIN
    nbmots := 0;
    nbcar := 0;
    nbvoy := 0;
    j := 1;
    i := 0;
    voy := 'aieuoAEUIO';

    Write('entrer une phrase: ');
    ReadLn(phrase);

    REPEAT
        car := phrase[j];
        j := j + 1;
    UNTIL (car = '.');

    FOR i := 1 TO j-1 DO
    BEGIN
        IF phrase[i] = ' ' THEN
            nbmots := nbmots + 1;
    END;

    FOR i := 1 TO j-1 DO
    BEGIN
        v := phrase[i];
        FOR j := 1 TO 10 DO
        BEGIN
            IF voy[j] = v THEN
                nbvoy := nbvoy + 1;
        END;
    END;

    WriteLn('Nombre de mots: ', nbmots + 1);  // +1 pour le dernier mot après le dernier espace
    WriteLn('Nombre de voyelles: ', nbvoy);
    WriteLn('la longueur de la phrase est de : ', nbvoy,'caratère');
END.
END.
