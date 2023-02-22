t=($(curl https://www.gstatic.com/ipranges/goog.txt -s))
str=""
for i in "${t[@]}"; do
     if [[ $i =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+\/[0-9]+$ ]]; then
     	if [[ $i == *8.8.* ]]; then
     		continue
     	fi
        ip r replace $i via $1
        str+="$i,"
    fi
done
echo $str