
execute as @e[type=armor_stand,tag=LimeSeed] at @s run tp @s ~ ~ ~-0.2
execute at @e[type=armor_stand,tag=LimeSeed] run scoreboard players add @e[tag=Zombie,tag=!weatherman_boss,limit=1,distance=..1] ZombieHealth 1
execute at @e[type=armor_stand,tag=LimeSeed] as @s run particle block lime_concrete_powder ~ ~0.6 ~ 0 0 0 0 5 force @a
execute at @e[tag=Zombie] as @e[type=armor_stand,tag=LimeSeed,distance=..1] run particle block lime_concrete_powder ~ ~0.6 ~ 0.1 0.1 0.1 0.1 10 force @a
execute at @e[tag=Zombie] as @s run kill @e[type=armor_stand,tag=LimeSeed,distance=..1]