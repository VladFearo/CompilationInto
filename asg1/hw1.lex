%%
[a-z] printf("char %c",yytext[0]-32);
[A-Z] printf("char %c", yytext[0]+32);
[+]?[0-9]+ printf("Positive integer");
[-][0-9]+ printf("negative integer");
[+]?[0-9]+[.][0-9]+ printf("positive float");
[-][0-9]+[.][0-9]+ printf("negative  float");
[+]?[0-9]+[.][0-9]+[eE][+-][0-9]+ printf("positive  expo");
[-][0-9]+[.][0-9]+[eE][+-][0-9]+ printf("negative  expo");
[A-Z]?[a-z]+ printf("Word %s %d", yytext, yyleng);
([A-Za-z]+[0-9]+[A-Za-z0-9]*|[0-9]+[A-Za-z]+[A-Za-z0-9]*) printf("string");
%%
