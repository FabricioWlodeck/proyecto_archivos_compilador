%{
    /* 1) Bloque: Cabecera codigo C */

    #include <stdio.h>
    int yylex();
    int yyerror(char *s);

    /* 2) Bloque: Tokens */
%}

%token TIPO_DATO_ARCHIVO FUNCION_ARCHIVO LEFTP RIGHTP PUNTOCOMA EQUALS PUNTERO OTHER

%type <tipo_dato_archivo> TIPO_DATO_ARCHIVO
%type <funcion_archivo> FUNCION_ARCHIVO

/*terminales y no terminales*/
%union{
    char *tipo_dato_archivo;
    char *funcion_archivo;
}

%%
/* secuencia de ejecucion*/
/* axioma?? */

prog:
    INSTRUCCIONES
;

INSTRUCCIONES: /* empty */
            |   INSTRUCCION INSTRUCCIONES
;

INSTRUCCION:    DECLARACION
            |   FUNCIONES
;

DECLARACION: TIPOS_DATOS_ARCHIVOS PUNTOCOMA 
;

TIPOS_DATOS_ARCHIVOS:   TIPO_DATO_ARCHIVO {printf("(tipo de dato archivo): \"%s\"\n",$1 );}
;

FUNCIONES: FUNCION LEFTP RIGHTP PUNTOCOMA
;

FUNCION:        FUNCION_ARCHIVO     {printf("(funcion de archivos): \"%s\"\n",$1 );}
            |   OTHER
;
%%

int yyerror(char *s){
	printf(" ->Error Sintactico %s\n",s);
}

int main(int argc,char **argv){
	yyparse();
	return 0;
}