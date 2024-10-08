%{
#include <stdio.h>
#include "parser-bison.tab.h"

int cont = 1;
%}


%option noyywrap

%%

"int" {return INT; }

"cata_esse" { return SCAN; }
"pega_visao" { return PRINT; }

"da_um_confere" { return IF; }
"si_nao" { return ELSE; }

"faz_umas_vez" { return WHILE; }
"repete_um_tanto" { return FOR; }

"mais_maior" { return MAIOR; }
"mais_menor" { return MENOR; }
"mais_maior_ou_ingual" { return MAIORIGUAL; }
"mais_menor_ou_ingual" { return MENORIGUAL; }
"nada_ingual" { return DIFERENTE; }
"ingual" { return IGUAL; }

"*" { return MULT; }
"/" { return DIV; }
"+" { return MAIS; }
"-" { return MENOS; }
"%" { return RESTO; }
"!" { return NAO; }
"++" { return MAISMAIS; }
"--" { return MENOSMENOS; }

"(" { return LPAR; }
")" { return RPAR; }
"[" { return LCOL; }
"]" { return RCOL; }
"{" { return LCHAV; }
"}" { return RCHAV; }

"=" { return ATRIB; }
"&" { return AND; }
"|" { return OR; }

"," { return VIRGULA; }

"zeh" { return PEV; }


"$$".*"\n"                      /*comentario em uma linha*/


\"[^"]*\"   { yylval.texto = strdup(yytext); return TEXTO; }


[0-9]+      { yylval.valor_int = atoi(yytext); return NUM; }
                 

[a-zA-Z][a-zA-Z0-9_]*   { yylval.id_nome = strdup(yytext); return ID; }
                                                   
"\n" { cont++; }
"\r" { }
"\t" { }
" "  { }


.       { printf("Lexical Error in line %d: %s\n", cont, yytext); }



%%