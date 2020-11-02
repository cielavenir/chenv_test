int main(int argc, array(string) argv){
  Stdio.stdout.write(sprintf("%d\n",getpid()));
  for(int i=0;i<1000;i++)sleep(0.01);
  Stdio.stdout.write(getenv("PATH",1));
  Stdio.stdout.write("\n");
}
