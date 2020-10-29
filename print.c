#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(){
  printf("%d\n",getpid());
  for(int i=0;i<1000;i++)usleep(10*1000);
  puts(getenv("PATH"));
}
