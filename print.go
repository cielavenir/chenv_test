package main
import "fmt"
import "os"
import "time"
func main() {
  fmt.Println(os.Getpid())
  for i:=0;i<1000;i++ {time.Sleep(time.Millisecond * 10)}
  fmt.Println(os.Getenv("PATH"))
}
