number=1288
#oneWay
case ${#number} in 
    1)
    echo "unit";;
    2)
    echo "tens";;
    3)
    echo "hundreds";;
    4)
    echo "thousand";;
    *)
    echo "no";;
esac

#secondWay
number=128;
count=0;
while [ $number -gt 0 ]
do
 number=`expr $number / 10`
 $((count++))
done
echo $count
case $count in 
    1)
    echo "unit";;
    2)
    echo "tens";;
    3)
    echo "hundreds";;
    4)
    echo "thousand";;
    *)
    echo "no";;
esac
