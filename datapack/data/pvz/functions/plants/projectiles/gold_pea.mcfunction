execute as @e[type=armor_stand,tag=Gold_Pea] at @s run tp @s ~ ~ ~-0.2
execute at @e[type=armor_stand,tag=Gold_Pea] run scoreboard players add @e[tag=Zombie,tag=!weatherman_boss,limit=1,distance=..1] ZombieHealth 4
execute at @e[type=armor_stand,tag=Gold_Pea] run scoreboard players remove @e[tag=weatherman_boss,limit=1,distance=..1] ZombieHealth 4
execute at @e[tag=Zombie] as @e[type=armor_stand,tag=Gold_Pea,distance=..1] run particle block gold_block ~ ~0.6 ~ 0.1 0.1 0.1 0.1 10 force @a
execute at @e[tag=Zombie] as @s run kill @e[type=armor_stand,tag=Gold_Pea,distance=..1]