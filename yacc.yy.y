%{
	#include "compiler.hpp"
	int yylex(); 
	void yyerror(const char *s);
%}

%%

program:
;

%%

void yyerror(const char *s){
}

int main(int argc,char* argv[]){
    if(argc > 2){
        cout << "PJ1 need a parameter to select input file.\n";
        return -1;
    }
    else if (argc == 2)
        freopen(argv[1],"r",stdin);
    yyparse();
    return 0;
}