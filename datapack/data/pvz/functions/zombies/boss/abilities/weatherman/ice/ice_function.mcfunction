## Creating Ice Block
#Fill
execute as @e[tag=Ice] at @e[tag=Ice] if block ~ ~-1 ~ #pvz:lawn run setblock ~ ~ ~ ice
execute as @e[tag=Ice] at @e[tag=Ice] if block ~ ~-1 ~ #pvz:lawn run setblock ~-1 ~ ~-1 snow_block
execute as @e[tag=Ice] at @e[tag=Ice] if block ~ ~-1 ~ #pvz:lawn run setblock ~ ~1 ~ snow_block	
execute as @e[tag=Ice] at @e[tag=Ice] if block ~ ~-1 ~ #pvz:lawn run setblock ~-1 ~1 ~-1 ice
execute as @e[tag=Ice] at @e[tag=Ice] if block ~ ~-1 ~ #pvz:lawn run setblock ~-1 ~ ~ packed_ice
execute as @e[tag=Ice] at @e[tag=Ice] if block ~ ~-1 ~ #pvz:lawn run setblock ~ ~1 ~-1 packed_ice
execute as @e[tag=Ice] at @e[tag=Ice] if block ~ ~-1 ~ #pvz:lawn run setblock ~-1 ~1 ~ blue_ice
execute as @e[tag=Ice] at @e[tag=Ice] if block ~ ~-1 ~ #pvz:lawn run setblock ~ ~ ~-1 blue_ice


#Freeze Plant
execute at @e[tag=Ice] as @e[tag=Ice] run tag @e[tag=Plant,distance=..1] add frozen 
execute as @e[tag=frozen] unless entity @e[tag=Ice,distance=..1] run tag @e[tag=Plant,distance=..1] remove frozen 
execute at @e[tag=Ice] as @e[tag=Ice] run scoreboard players set @e[tag=Plant,tag=!Ice,distance=..1] AbilityCD 0

## Kill Ice Block
# Natural Thaw
scoreboard players add @e[tag=Ice,distance=..1] AbilityCD 1
execute at @e[tag=Ice,scores={AbilityCD=800..}] as @e[tag=Ice,distance=..1] run fill ~ ~ ~ ~-1 ~1 ~-1 air
execute at @e[tag=Ice,scores={AbilityCD=800..}] as @e[tag=Ice,distance=..1] run particle block ice ~ ~ ~ 1 1 1 0 10 force
execute at @e[tag=Ice,scores={AbilityCD=800..}] as @e[tag=Ice,distance=..1] run kill @s 
# When attacked by plants
execute at @e[tag=Ice,scores={ZombieHealth=35..}] as @e[tag=Ice,distance=..1] run fill ~ ~ ~ ~-1 ~1 ~-1 air
execute at @e[tag=Ice,scores={ZombieHealth=35..}] as @e[tag=Ice,distance=..1] run particle block ice ~ ~ ~ 1 1 1 0 10 force
execute at @e[tag=Ice,scores={ZombieHealth=35..}] as @e[tag=Ice,distance=..1] run kill @s
# When attacked by Zombies
execute at @e[tag=Ice,scores={PlantHealth=800..}] as @e[tag=Ice,distance=..1] run fill ~ ~ ~ ~-1 ~1 ~-1 air
execute at @e[tag=Ice,scores={PlantHealth=800..}] as @e[tag=Ice,distance=..1] run particle block ice ~ ~ ~ 1 1 1 0 10 force
execute at @e[tag=Ice,scores={PlantHealth=800..}] as @e[tag=Ice,distance=..1] run kill @s 
