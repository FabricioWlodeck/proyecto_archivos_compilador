----- CONSIGNA -----
archivos:
    -> Abrir, leer como TXT, escribir y cerrar.

-> recocer palabras reservadas de archivos en C
    FILE *fp;
	fp = fopen ( "fichero.in", "r" );        
	if (fp==NULL) {fputs ("File error",stderr); exit (1);}
	fclose ( fp );


    FILE
    *
    fp
    fopen
    fputs
    fclose
    ( )

    

FILE *fp;
    -> TIPO_DATO_ARCHIVO VAR_PUNTERO

fp = fopen ( "fichero.in", "r" );
    -> VAR_PUNTERO EQUALS FUNCION_ARCHIVO LEFTP STRING COMA CHAR RIGHTP PUNTOCOMA

fputs ("File error",stderr);    
    -> FUNCION_ARCHIVO LEFTP STRING COMA ?? RIGHTP PUNTOCOMA

fclose ( fp );  
    -> FUNCION_ARCHIVO LEFTP TIPO_DATO_ARCHIVO RIGHTP PUNTOCOMA

