 void is_valid(char *str);
%%
[0]*[2]*[3]*[1]* is_valid(yytext);
.* ;
%% 
void is_valid(char *str){
	int count0 = 0;
	int count2 = 0;
	int count3 = 0;
	int count1 = 0;
	
	for(int i = 0; i < yyleng; i++){
		if(str[i] == '0'){
			count0++;
		}
		if(str[i] == '2'){
			count2++;
		}
		if(str[i] == '3'){
			count3++;
		}
		if(str[i] == '1'){
			count1++;
		}
	}
	if(count2 == 2*count0 && count3 == 1.5*count1 && count1 % 2 == 0 && count3 % 3 == 0)
		printf("Yes");
		
	}
