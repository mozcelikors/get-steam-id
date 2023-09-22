# get-steam-id
A script you can use to get steam ID from name and steam name from ID for your games and applications on your Steam Deck

## Usage Examples
```
myvar=`get_name_from_id 236430`
echo $myvar

get_name_from_id 374320

get_id_from_name "DARK SOULS™ II"

list_screenshots_per_gameid `get_id_from_name "DARK SOULS™ II"`
list_screenshots_per_gamename "DARK SOULS™ II"
```
