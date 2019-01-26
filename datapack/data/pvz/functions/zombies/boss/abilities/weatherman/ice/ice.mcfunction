## Ice

execute as @e[tag=Square,tag=!Square1] run scoreboard players set @s random 0
execute as @e[tag=Square,tag=!Square1] run function pvz:random/run
execute at @e[tag=Square,tag=!Square1,scores={random=12..13}] as @e[tag=Square,tag=!Square1,scores={random=12..13},distance=..1] run summon minecraft:armor_stand ~ ~13 ~ {Invisible:1b,Tags:["Ice","Zombie","Plant"]}
## Particle for Ice
#Falling
execute at @e[tag=Ice] as @e[tag=Ice] unless block ~ ~-1 ~ #pvz:lawn run particle block ice ~ ~ ~ 0 0 0 0 1 force

