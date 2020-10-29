using System;
using System.IO;
using System.Diagnostics;
using System.Threading;

class A{
  static void Main(){
    Console.WriteLine(Process.GetCurrentProcess().Id);
    for(int i=0;i<1000;i++)Thread.Sleep(10);
    Console.WriteLine(Environment.GetEnvironmentVariable("PATH"));
  }
}
