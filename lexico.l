%{
	/*Definition section */
    #include<stdlib.h>
    #include "parser.tab.h" 
	void showError();
%}

/* Rule: whenever space, tab or newline is encountered, remove it*/
nombre_variable ([a-zA-Z0-9])+

%%
"FILE"      {yylval.tipo_dato_archivo = yytext; return (TIPO_DATO_ARCHIVO);}
"fopen"      {yylval.funcion_archivo = yytext; return (FUNCION_ARCHIVO);}
"fputs"      {yylval.funcion_archivo = yytext; return (FUNCION_ARCHIVO);}
"fclose"      {yylval.funcion_archivo = yytext; return (FUNCION_ARCHIVO);}

"("             {return (LEFTP);}
")"             {return (RIGHTP);}
";"         {return(PUNTOCOMA);}
"="              {return (EQUALS);}
"*"         {return (PUNTERO);}
[ \t\r]     {}
.                 {showError(); return (OTHER);}

%%

int yywrap(){}

// driver code
void showError(char* other){
    printf("\n <<ErrorLexico: \"%s\" >>",other);
}
