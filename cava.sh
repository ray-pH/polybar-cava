#! /bin/bash

bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

# creating "dictionary" to replace char with bar
i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

# make sure to clean pipe
pipe="/tmp/cava.fifo"
if [ -f $pipe ]; then
    unlink $pipe
fi
mkfifo $pipe

# run cava in the background
cava -p $HOME/.config/polybar/cava_raw_config &

# reading data from fifo
while read -r cmd; do
    echo $cmd | sed $dict
done <"$pipe"
