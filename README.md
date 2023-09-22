# get-steam-id
A script you can use to get steam ID from name and steam name from ID for your games and applications on your Steam Deck

## Edit Following Variables
```
STEAMAPPSDIR=/home/deck/.local/share/Steam/steamapps/
SCREENSHOTSDIR=/home/deck/.local/share/Steam/userdata/68460212/760/remote
```

## Usage Examples
```
myvar=`get_name_from_id 236430`
echo $myvar

get_name_from_id 374320

get_id_from_name "DARK SOULS™ II"

list_screenshots_per_gameid `get_id_from_name "DARK SOULS™ II"`
list_screenshots_per_gamename "DARK SOULS™ II"
```
