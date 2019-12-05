# esx_itembytime
This script is made it for fivem. basically this give an item to all connected players an a certain amount of time configurable in the files.

# LICENSE
Please don't sell or reupload this resource

# INSTALLATION
Drag and drop. You also need to have es_extended.
add to server.cfg
config the item, time and message in the files

```lua
Config = {}

local second = 1000
local minute = 60 * second

Config.ItemByTimeInterval     = 60 * minute

Config.Item                   = "ticket"

Config.ItemMessage            = '~g~Has recibido un ticket para ~r~Navidad'

Config.ConsoleNotification    = 'Item by time gived'
```
