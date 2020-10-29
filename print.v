import os
import time
fn main(){
  println(os.getpid())
  for i:=0;i<1000;i++ {time.sleep_ms(10)}
  println(os.getenv("PATH"))
}
