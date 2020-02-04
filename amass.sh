amass enum --passive -d $1 -json $1.json jq .name $1.json | sed "s/\"//g" | httprobe -c 60 | tee -a $1-domains.txt
