
indent=0
indentString=''
indent_step=2


reset="\033[0m"

blue="\033[38;5;75m"
grey="\033[38;5;241m"



function _increase_indent {
    indent=$((indent+1))
    _update_indent_string
}
function _decrease_indent {
    indent=$((indent-1))
    if [[ $indent < 0 ]]; then
        indent=0
    fi
    _update_indent_string
}
function _update_indent_string {
    n=$(($indent*$indent_step))
    indentString=$(printf '%0.1s' " "{1..$n})
}


function TASK {
    echo -e "$blue$1$reset"
    _increase_indent
}


function ENDTASK {
    _decrease_indent
}


function DO {
    echo -n "${indentString}"
    $@ | sed "s/^/  /g"
}

