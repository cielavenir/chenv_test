import os
import posix
writeLine(stdout,getpid())
for i in 1..1000:sleep(10)
writeLine(stdout,getEnv("PATH"))
