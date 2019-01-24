execute if entity @e[type=zombie,distance=..1] run tag @s add LawnmowerMove
tp @s[tag=LawnmowerMove] ~ ~ ~-0.2 
execute as @s[tag=LawnmowerMove] run particle smoke ~ ~1 ~2 0 0 0 0 1 force @a 
execute as @s[type=armor_stand,tag=LawnmowerMove] run kill @e[tag=Zombie,tag=!weatherman_boss,tag=!Ice,limit=1,distance=..1]
execute if entity @e[tag=LaneEnd,distance=..1] run kill @s
