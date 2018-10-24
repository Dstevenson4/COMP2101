#!/bin/bash
#this script will create a memory report for your system

total=$(/usr/bin/free --mega | awk 'NR==2{print $2}')
used=$(/usr/bin/free --mega | awk 'NR==2{print $3}')
free=$(/usr/bin/free --mega | awk 'NR==2{print $4}')
cached=$(/usr/bin/free --mega | awk 'NR==2{print $6}')
available=$(/usr/bin/free --mega | awk 'NR==2{print $7}')
one=$(/usr/bin/free --mega | awk 'NR==2{print 100*($5/$3)}')
two=$(/usr/bin/free --mega | awk 'NR==2{print 100*($3/$2)}')
three=$(/usr/bin/free --mega | awk 'NR==2{print 100*($6/$2)}')

echo "Memory Report."
echo "Total RAM installed:  $total"
echo "RAM free:  $free"
echo "Sum of used and chached RAM: $(($used + $cached))"
echo "Difference between available and free RAM:  $(($available - $free))"
echo "Shared RAM as a percentage of RAM used:  $one %"
echo "Used RAM as a percentage of total RAM:  $two %"
echo "Cached RAM as a percentage of total RAM:  $three %"
