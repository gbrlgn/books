int w, x, y, z;
int i = 4; int j = 5;
{   int j = 7;
    i = 6;
    w = i + j;
}
x = i + j;
{ int i = 8;
    y = i + j;
}
z = i + j;

int w, x, y, z;
int i = 3; int j = 4;
{   int i = 5;
    w = i + j;
}
x = i + j;
{ int j = 6;
    i = 7;
    y = i + j;
}
z = i + j;

//Figure 1.13


{   int w, x, y, z;
    {   int x, z;
        {   int w, x;
    }
    {   int w, x;
        {   int y, z;
    }
}

//Figure 1.14


#define a (x+1)
int x = 2;
void b() { x = a; printf("%d\n"); }
void b() { int x = 1; printf("%d\n"), a; }
void main() { b(); c(); }

//Figure 1.15
