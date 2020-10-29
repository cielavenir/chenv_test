import os
import time
print(os.getpid())
for _ in range(1000): time.sleep(0.01)
print(os.environ['PATH'])
