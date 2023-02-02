LUA=lua
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
TESTS="$SCRIPT_DIR/fsmtest_*"

export LUA_PATH="$LUA_PATH;/home/lbro/build/rFSM/?.lua"
export LUA_CPATH="$LUA_CPATH;/usr/lib/x86_64-linux-gnu/graphviz/lua/?.so"

rm -f *.png

for t in $TESTS; do
    echo -e "\n\n*********************************** $t ********************************************"
    echo $t
    $LUA $t
    exit
done
