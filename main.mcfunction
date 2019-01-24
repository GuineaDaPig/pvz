

## Night Vision
effect give @a night_vision 100000 0 true

## Projectile
execute at @e[tag=LaneEnd] positioned ~ ~ ~-4 run kill @e[tag=Projectile,tag=!Wind,distance=..1]
execute at @e[tag=LaneEnd] positioned ~ ~ ~-3 run kill @e[tag=Lawnmower,distance=..1]

### Run Functions
## pvz:misc/
execute as @e[tag=Lawnmower] at @s run function pvz:misc/lawnmower
## pvz:plants/
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_shovel"},OnGround:1b}] at @s run function pvz:plants/remove
execute as @a run function pvz:plants/plant_inv_replace_constant
execute as @e[tag=PlacePlant] at @s run function pvz:plants/place/main
execute as @a[limit=1] run function pvz:plants/abillitycooldowns
execute as @a[limit=1] run function pvz:plants/plant_cooldown 
execute as @a[limit=1] run function pvz:plants/action_bar 
execute at @e[tag=Plant,tag=!Ice] unless block ~ ~-1 ~ #pvz:lawn as @e[tag=Plant,distance=..1] run kill @e[tag=Plant,distance=..1]
execute as @a[limit=1] if entity @e[type=armor_stand,tag=Projectile] run function pvz:plants/projectiles
## pvz:zombies/
execute at @a[limit=1] run execute if entity @e[type=zombie] run function pvz:zombies/main
## pvz:level/
execute as @a[limit=1] run execute if entity @e[tag=MapStart] as @e[tag=MapStart] run function pvz:levels/level
## pvz:items/
execute as @a[limit=1] run function pvz:plants/items/item_disposed
execute as @a[limit=1] run function pvz:plants/items/items_in_inventory



### Clocks
##Plants
execute as @a[scores={SUse=1..}] run scoreboard players remove @s SUse 1
execute as @a[scores={PSUse=1..}] run scoreboard players remove @s PSUse 1
execute as @a[scores={WNUse=1..}] run scoreboard players remove @s WNUse 1
execute as @a[scores={PGUse=1..}] run scoreboard players remove @s PGUse 1
execute as @a[scores={MUse=1..}] run scoreboard players remove @s MUse 1
execute as @a[scores={MSUse=1..}] run scoreboard players remove @s MSUse 1
execute as @a[scores={BSUse=1..}] run scoreboard players remove @s BSUse 1
execute as @a[scores={MAUse=1..}] run scoreboard players remove @s MAUse 1
execute as @a[scores={LUse=1..}] run scoreboard players remove @s LUse 1
execute as @a[scores={LLUse=1..}] run scoreboard players remove @s LLUse 1
execute as @a[scores={PMUse=1..}] run scoreboard players remove @s PMUse 1
execute as @a[scores={GPSUse=1..}] run scoreboard players remove @s GPSUse 1
execute as @a[scores={PIUse=1..}] run scoreboard players remove @s PIUse 1 
execute as @a[scores={DUse=1..}] run scoreboard players remove @s DUse 1 