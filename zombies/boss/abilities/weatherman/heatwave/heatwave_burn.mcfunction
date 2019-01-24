## Fire
# Reset Random
execute as @e[tag=Square,tag=!Square1] run scoreboard players set @s random 0
# Run Function
execute as @e[tag=Square,tag=!Square1] run function pvz:random/run
# Add Burn
execute at @e[tag=Square,tag=!Square1,scores={random=5..7}] as @e[tag=Square,tag=!Square1,scores={random=5..7},distance=..1] run tag @e[tag=Square,tag=!Square1,scores={random=5..7},distance=..1] add burn
# Fire
execute as @e[tag=burn] at @e[tag=burn] run fill ~ ~ ~ ~-1 ~ ~-1 fire replace air
execute as @e[tag=burn] at @e[tag=burn] run kill @e[tag=Plant,distance=..1]