function chenv () {
  if [ $# -lt 3 ]; then
    echo chenv PID Name Value >&2
  else
    sudo gdb -batch -ex "attach $1" -ex "call setenv(\"$2\",\"$3\",1)" -ex "detach"
  fi
}

function chenvpy () {
  if [ $# -lt 3 ]; then
    echo chenvpy PID Name Value >&2
  else
    # Python os.environ only putenv; override must be done via Python code.
    sudo gdb -batch -ex "attach $1" -ex "call PyGILState_Ensure()" -ex "call PyRun_SimpleString(\"import os;os.environ['$2']='$3'\")" -ex "call PyGILState_Release(\$1)" -ex "detach"
  fi
}

function chenvrb () {
  if [ $# -lt 3 ]; then
    echo chenvrb PID Name Value >&2
  else
    # Ruby ENV always uses getenv directly, so chenv should be enough actually.
    sudo gdb -batch -ex "attach $1" -ex "call rb_eval_string(\"ENV['$2']='$3'\")" -ex "detach"
  fi
}

function chenvpl () {
  if [ $# -lt 3 ]; then
    echo chenvpl PID Name Value >&2
  else
    sudo gdb -batch -ex "attach $1" -ex "call Perl_eval_pv(((void*(*)())Perl_get_context)(),\"\$ENV{'$2'}='$3';\",1)" -ex "detach"
  fi
}

function chenvphp () {
  if [ $# -lt 3 ]; then
    echo chenvphp PID Name Value >&2
  else
    sudo gdb -batch -ex "attach $1" -ex "call zend_eval_string(\"\$_ENV['$2']='$3';putenv('$2=$3');\",0,\"\")" -ex "detach"
  fi
}

function chenvjl () {
  if [ $# -lt 3 ]; then
    echo chenvjl PID Name Value >&2
  else
    sudo gdb -batch -ex "attach $1" -ex "call jl_eval_string(\"ENV[\\\"$2\\\"]=\\\"$3\\\"\")" -ex "detach"
  fi
}
