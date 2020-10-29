<?php
echo getmypid().PHP_EOL;
for($i=0;$i<1000;$i++){usleep(10*1000);}
#echo $_ENV["PATH"].PHP_EOL;
echo getenv("PATH").PHP_EOL;
