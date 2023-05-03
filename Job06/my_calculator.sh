if [ $2 = "+" ]; then
res=$(($1 + $3))
elif [ $2 = "-" ]; then
res=$(($1 - $3))
elif [ $2 = "*" ]; then
res=$(($1 * $3))
elif [ $2 = "/" ]; then
res=$(($1 / $3))
fi
echo $res

