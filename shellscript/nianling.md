cut -d "=" -f2 nianling.txt
cut -d "=" -f2 nianling.txt | tr '\n' +
127
cut -d "=" -f2 nianling.txt | tr '\n' + | grep -Eo ".*[0-9]" | bc
grep -Eo "[0-9]+" nianling.txt | tr '\n' + | grep -Eo ".*[0-9]" | bc
set // all VAR
env // env var
test -v n // n is exist or not, empty is a vaule so means exist, " " can set null
echo $? 
test -R  VAR // VAR was set vaule or not
[ -v n] // is the same as test -v n, but neet space btw [ -v n]
test -z // true if string is empty
test -n  // true if string is not empty
= and !=  [[ ]]  // compare strings
[ -n $title1] [ $title1]  //  true if title1 is not empty
[ $title1 = $title2 ] // need space, otherwise it is set vaule $title=$title2
> <  //compare ascii
In [[ regex]] ==

wildcard 

┌──(kali㉿kali)-[~/bash]
└─$ FILE=test.log

┌──(kali㉿kali)-[~/bash]
└─$ [[ "$FILE" == *.log ]]

┌──(kali㉿kali)-[~/bash]
└─$ echo $?
0

┌──(kali㉿kali)-[~/bash]
└─$ 

regex
[[ ==  ]]  == escape char
[[ =~ ]]   =~ regex


