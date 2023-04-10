
 int lower(char* yytext);
%%
[6-9][0-9] printf("%d", lower(yytext));
. ;
%%
int lower(char* yytext){
 int ascii = ((int)yytext[0]-48)*10+(int)yytext[1]-48;

 return ascii + 32;
}

