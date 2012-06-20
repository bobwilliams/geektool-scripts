myCPU=`top -l 1 | awk '/CPU usage/ {print $3}' | sed s/%//`
myCPU=`echo "tmp=$myCPU; tmp /= 1; tmp" | bc`

typeset -i b=5
echo "CPU Usage     \c"
while [ $b -lt $myCPU ]
do
     echo "\033[1;37m*\033[0m\c"
     b=`expr $b + 5`
done
echo "\033[1;30m*\033[0m\c"
while [ $b -lt 100 ]
do
     echo "\033[1;30m*\033[0m\c"
     b=`expr $b + 5`
done
echo "\r"
unset myCPU
unset b


myUsedMem=`top -l 1 | awk '/PhysMem/ {print $8}' | sed s/M// `
myFreeMem=`top -l 1 | awk '/PhysMem/ {print $10}' | sed s/M// `
myTotalMem=` expr $myUsedMem + $myFreeMem`
myUsedPer=`echo |awk '{print f / t * 100}' f=$myUsedMem t=$myTotalMem`
myUsedPer=`echo "tmp=$myUsedPer; tmp /= 1; tmp" | bc`

typeset -i c=5
echo "Memory Usage  \c"
while [ $c -lt $myUsedPer ]
do
        echo "\033[1;37m*\033[0m\c"
        c=`expr $c + 5`
done
echo "\033[1;30m*\033[0m\c"
while [ $c -lt 100 ]
do
        echo "\033[1;30m*\033[0m\c"
        c=`expr $c + 5`
done

echo "\r"

unset myUsedMem
unset myFreeMem
unset myTotalMem
unset myUsedPer
unset c


myDisk=`df | awk '/dev\/disk0s2/ && NF>1 {print $5}' | sed 's/\%//'`
myDisk =`expr 100 - $myDisk `
typeset -i a=5
echo "Disk Usage    \c"
while [ $a -lt $myDisk ]
do
     echo "\033[1;37m*\033[0m\c"
     a=`expr $a + 5`
done
echo "\033[1;30m*\033[0m\c"
while [ $a -lt 100 ]
do
     echo "\033[1;30m*\033[0m\c"
     a=`expr $a + 5`
done
echo "\r"
unset myDisk
unset a
