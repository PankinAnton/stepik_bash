while true; do 
read x act y
operators='+ - * / % **'
if [[ -z $x ]]; then
echo "error"
break
elif [[ $x == "exit" ]]; then
echo "bye"
break
elif [[ $operators =~ "$b" ]]
    then
    let "res = $a $b $c"
    echo "$res"
else
echo "error"; break
fi
done
