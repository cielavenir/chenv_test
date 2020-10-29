use std::env;
use std::process;
use std::thread;
use std::time;

fn main() {
  println!("{}",process::id());
  for _i in 0..1000 {thread::sleep(time::Duration::from_millis(10));}
  match env::var("PATH") {
    Ok(val) => println!("{}",val),
    Err(_) => (),
  }
}
