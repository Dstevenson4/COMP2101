#!/bin/bash
# Example of associative arrays

declare -A foo           #create an empty associative array

foo=([key1]="data1" [key2]="data2")     #add basic data to the array

echo "The value for key 'key1' is '${foo[key1]}'"
echo "The value for key 'key2' is '${foo[key2]}'"
echo "The values for all elements are: ${foo[@]}"
echo "There are ${#foo[@]} key-value pairs in the hash"
