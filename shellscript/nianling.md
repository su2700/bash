cut -d "=" -f2 nianling.txt
cut -d "=" -f2 nianling.txt | tr '\n' +
127
cut -d "=" -f2 nianling.txt | tr '\n' + | grep -Eo ".*[0-9]" | bc
grep -Eo "[0-9]+" nianling.txt | tr '\n' + | grep -Eo ".*[0-9]" | bc