
#### Main Counsule

### Misc

## Night Vision
effect give @a night_vision 100000 0 true

## Projectile
execute at @e[tag=LaneEnd] run kill @e[tag=Projectile,distance=..1]

### Run Functions
## pvz:misc/
execute as @a run function pvz:misc/lawnmower
## pvz:plants/
execute as @a run function pvz:plants/plant_inv_replace_constant
execute as @a run function pvz:plants/items
execute as @a run function pvz:plants/abillitycooldowns
execute as @a run function pvz:plants/plant_cooldown 
execute as @a run function pvz:plants/action_bar 
execute as @a if entity @e[type=armor_stand,tag=Projectile] run function pvz:plants/projectiles
## pvz:zombies/
execute at @a run execute if entity @e[type=zombie] run function pvz:zombies/main
## pvz:level/
execute as @a run execute if entity @e[tag=MapStart] as @e[tag=MapStart] run function pvz:levels/level



### Clocks
##Plants
execute as @a[scores={sunfPt=1..}] run scoreboard players remove @s sunfPt 1
execute as @a[scores={peaPt=1..}] run scoreboard players remove @s peaPt 1
execute as @a[scores={wallPt=1..}] run scoreboard players remove @s wallPt 1
execute as @a[scores={pomePt=1..}] run scoreboard players remove @s pomePt 1
execute as @a[scores={munchPt=1..}] run scoreboard players remove @s munchPt 1






