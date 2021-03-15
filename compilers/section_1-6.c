int w, x, y, z;
int i = 4; int j = 5;
{   int j = 7;
    i = 6;
    w = i + j; // w = 13
}
x = i + j; // x = 11
{ int i = 8;
    y = i + j; // y = 13
}
z = i + j; // z = 11

int w, x, y, z;
int i = 3; int j = 4;
{   int i = 5;
    w = i + j; // w = 9
}
x = i + j; // x = 7
{   int j = 6;
    i = 7;
    y = i + j; // y = 13
}
z = i + j; // z = 11

// Figure 1.13


{   int w, x, y, z; // W = B1, B3, B4
                    // X = B1, B2, B4
                    // Y = B1, B5
                    // Z = B1, B2, B5
    {   int x, z; // X = B2, B3
                  // Z = B2
        {   int w, x; // W = B3
                      // X = B3
    }
    {   int w, x; // W = B4
                  // X = B4
        {   int y, z; // Y = B5
                      // Z = B5
    }
}

// Figure 1.14


#define a (x + 1)
int x = 2;
void b() { x = a; printf("%d\n", x); }
void b() { int x = 1; printf("%d\n", a); }
void main() { b(); c(); }

// Output:
// 3
// 2

// Figure 1.15
