calc ()
{
case $act in
        "+"|"-"|"*"|"/"|"%"|"**")
        let "k = $x $act $y"   # !!!значения переменных!!!
        ;;
        *)
        echo "error"
        exit
        ;;
esac
echo "$k"
}
while true; do 
read x act y
if [[ -z $x ]]; then
echo "error"
break
elif [[ $x == "exit" ]]; then
echo "bye"
break
#elif [[ $# -lt 3 ]]; then echo "error"; break;
else calc x act y
fi
done
