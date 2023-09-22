#!/bin/bash
#
# @author mozcelikors
#
ifs_backup=$IFS
IFS=$(echo -en "\n\b")
STEAMAPPSDIR=/home/deck/.local/share/Steam/steamapps/
SCREENSHOTSDIR=/home/deck/.local/share/Steam/userdata/68460212/760/remote
ids=($(ls $STEAMAPPSDIR/*.acf | cut -d "_" -f 2 | cut -d "." -f 1)) # -> IDS
names=($(ls $STEAMAPPSDIR/*.acf | xargs cat | grep "name" | cut -d '"' -f 4)) # -> Names

#for ((i=0; i < ${#names[@]}; i++))
#do
#    echo "${names[$i]}"
#done

get_name_from_id () {
    idx=0
    for str in ${ids[@]}; do
        if [ $1 == $str ]; then
            break
        fi
        idx=$((idx+1))
    done
    echo ${names[$idx]}
}

get_id_from_name () {
    idx=0
    for str in ${names[@]}; do
        if [ $1 == $str ]; then
            break
        fi
        idx=$((idx+1))
    done
    echo ${ids[$idx]}
}

list_screenshots_per_gameid(){
    ls $SCREENSHOTSDIR/$1/screenshots/*jpg
}

list_screenshots_per_gamename(){
    id=`get_id_from_name $1`
    ls $SCREENSHOTSDIR/$id/screenshots/*jpg
}

#Usage examples
#myvar=`get_name_from_id 236430`
#echo $myvar

#get_name_from_id 374320

#get_id_from_name "DARK SOULS™ II"

#list_screenshots_per_gameid `get_id_from_name "DARK SOULS™ II"`
#list_screenshots_per_gamename "DARK SOULS™ II"

IFS=$ifs_backup
