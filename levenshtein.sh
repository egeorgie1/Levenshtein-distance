tr -cs "[:alpha:]" "\n" < text.txt|tr "[:upper:]" "[:lower:]">temp.txt
list=`sort -u temp.txt`
i=0
for word in $list
  do
     while test $i -lt 9
       do if agrep -w -$i -s $word dic.txt
            then [ $i -gt 0 ] && echo -n $word && echo -n ':' && echo -n $i && echo -n ':' && agrep -w -$i $word dic.txt|head -1l && break 1 || break 1
          fi
          i=`expr $i + 1`
       done
     i=0
  done
