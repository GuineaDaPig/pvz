execute as @e[type=armor_stand,tag=LemonSeed] at @s run tp @s ~ ~ ~-0.1
execute at @e[type=armor_stand,tag=LemonSeed] run scoreboard players add @e[tag=Zombie,tag=!weatherman_boss,limit=1,distance=..1] ZombieHealth 3
execute at @e[type=armor_stand,tag=LemonSeed] run scoreboard players remove @e[tag=weatherman_boss,limit=1,distance=..1] ZombieHealth 3
execute at @e[type=armor_stand,tag=LemonSeed] as @s run particle block yellow_concrete_powder ~ ~0.6 ~ 0 0 0 0 5 force @a
execute at @e[tag=Zombie] as @e[type=armor_stand,tag=LemonSeed,distance=..1] run particle block yellow_concrete_powder ~ ~0.6 ~ 0.1 0.1 0.1 0.1 10 force @a
execute at @e[tag=Zombie] as @s run kill @e[type=armor_stand,tag=LemonSeed,distance=..1]