function print() {
  echo -e "\e[1A\e[1K[$1"
  echo -e "\e[1A\e[${full}C] $2"
}
echo
multi=${1:-10}
full=$((100 / $multi + 1))
prog="="
myprog=""
perc=0
for ((i=1;i<=full;i++)); do
  print "\e[92;1m$myprog\e[0m" "\e[94;1m$perc%\e[0m"
  perc=$(($perc + $multi))
  myprog="$myprog$prog"
  sleep 1
done
