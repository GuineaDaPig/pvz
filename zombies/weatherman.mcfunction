scoreboard players add @s AbilityCD 1
execute at @s[scores={AbilityCD=300..}] as @s run function pvz:random/run
execute at @s[scores={AbilityCD=300..}] as @s run function pvz:zombies/weatherman_strike
execute as @s[scores={AbilityCD=300..}] run scoreboard players set @s AbilityCD 0
effect give @s minecraft:invisibility 1 0 true

## Damage Varients and Eating

execute as @e[tag=weatherman] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:29s}}]}
execute at @e[type=armor_stand,tag=Plant] as @e[tag=weatherman,distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:31s}}]}
execute as @e[tag=weatherman,scores={ZombieHealth=15..}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:30s}}]}
execute at @e[type=armor_stand,tag=Plant] as @e[tag=weatherman,scores={ZombieHealth=15..},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:32s}}]}
kill @e[type=zombie,tag=weatherman,scores={ZombieHealth=30..}]
