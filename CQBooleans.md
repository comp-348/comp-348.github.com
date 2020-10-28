
# Question:

Why can we use numbers as a conditional statement in C?

In C, there are no boolean data types. The way everything is represented is at a very low-level, so in order to determine whether to execute a code block in an if statement, for example, C will try to evaluate if the statement evaluates to 0. If the statement evaluates to 0, then it won’t evaluate the code block (like false in most programming languages). If the statement evaluates to anything other than 0, then it will evaluate the code block (much like true in most other programming languages).

Since C99, this has changed somewhat. Starting from this version, you can import a part of the standard library called stdbool.h. This library allows users to declare boolean data types and use true and false in C programs. However, the underlying data is still stored as 0 for false, and 1 for true, so the underlying data has not actually been changed. The main contribution for this library was that before it was introduced, many developers used different workarounds, and there was no consensus in the community on how booleans should be represented. Therefore, it provided a central way for how they can be represented. 


The following is a code example showing how conditional statements work in C.
```
#include <stdio.h>

// necessary to use true and false keywords
#include <stdbool.h>

int main()
{
    printf("%d\n", 10 < 20); // output: 1
    printf("%d\n", 10 > 20); // output: 0
    
    // true and false actually get replaced with 1 and 0, respectively
    printf("%d\n", true); // output: 1
    printf("%d\n", false); // output: 0
    
    if(1) printf("I get printed\n");
    if(0) printf("I don't get printed!\n");
    if(-76478) printf("-76478 is actually true\n");
    if(734) printf("734 is also true\n");
    if('a') printf("Characters are also true, such as \'a\'.\n");
    
    return 0;
}
```

The output of the above code:

```
1
0
1
0
I get printed
-76478 is actually true
734 is also true
Characters are also true, such as 'a'.
```

