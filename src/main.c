#include <stdio.h>

#include "func.h"

int main(int argc, char *argv[])
{

  int a, b, c;

  if (argc < 2)
    return 1; //need two argument

  a = atoi(argv[1]);
  b = atoi(argv[2]);

  c = func(a, b);

  if (c == (a+b))
    return 0;
  else
    return 1;
}