
execute as @e[type=armor_stand,tag=Shroom] at @s run tp @s ~ ~ ~-0.1
execute as @e[type=armor_stand,tag=Shroom] at @s run effect give @s glowing 1 0 true
execute as @e[type=armor_stand,tag=Shroom] at @s run particle minecraft:item magenta_concrete_powder ~ ~0.25 ~ 0.1 0.1 0.1 0.1 5 force
execute at @e[type=armor_stand,tag=Shroom] as @s run tag @e[tag=Zombie,tag=!piecred,distance=1..2] add piecred
execute at @e[type=armor_stand,tag=Shroom] as @s run team join mushroomGlow @e[tag=Zombie,distance=..1]
execute at @e[type=armor_stand,tag=Shroom] as @s run effect give @e[tag=piecred,distance=..1] glowing 1 0 true
execute at @e[type=armor_stand,tag=Shroom] as @s run scoreboard players add @e[tag=Zombie,tag=piecred,limit=1,distance=..1] ZombieHealth 1
execute at @e[type=armor_stand,tag=Shroom] as @s run scoreboard players remove @e[tag=weatherman_boss,limit=1,distance=..1] ZombieHealth 1
execute at @e[type=armor_stand,tag=Shroom] as @s run team leave @e[tag=Zombie,tag=piecred] 
execute at @e[type=armor_stand,tag=Shroom] as @s run tag @e[tag=Zombie,tag=piecred,distance=..1] remove piecred