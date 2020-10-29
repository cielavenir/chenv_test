const std = @import("std");

extern fn getpid() i32;
pub fn main()!void{
  const stdout = std.io.getStdOut().outStream();
  try stdout.print("{}\n", .{getpid()});
  var i:i32=0;
  while(i<1000){std.os.nanosleep(0,10*1000*1000);i+=1;}
  try stdout.print("{}\n", .{std.os.getenv("PATH")});
}
