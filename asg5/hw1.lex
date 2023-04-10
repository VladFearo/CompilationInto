 int a_count = 0;
 int b_count = 0;

%%
a { a_count++; }
b { b_count++; }
aaab { if (a_count == 3 && b_count == 1) printf("yes\n"); }
aab { if (a_count == 2 && b_count == 1) printf("yes\n"); }
ab { if (a_count == 1 && b_count == 1) printf("yes\n"); }
b { if (b_count == 1) printf("yes\n"); }
. { printf("no\n"); }
%%
