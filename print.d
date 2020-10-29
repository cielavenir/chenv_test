import std.stdio;
import std.process;
import core.time;
import core.thread.osthread;
void main(){
  writefln("%d",getpid());
  for(int i=0;i<1000;i++)Thread.sleep( dur!("msecs")(10) );
  auto var = environment.get("PATH");
  if(!(var is null)){
    writeln(var);
  }
}
