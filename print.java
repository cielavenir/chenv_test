import java.lang.management.ManagementFactory;

class A{
  static final String PID = java.lang.management.ManagementFactory.getRuntimeMXBean().getName().split("@")[0];
  public static void main(String[]a){
    System.out.println(PID);
    for(int i=0;i<1000;i++)try{Thread.sleep(10);}catch(InterruptedException e){}
    System.out.println(System.getenv("PATH"));
  }
}
