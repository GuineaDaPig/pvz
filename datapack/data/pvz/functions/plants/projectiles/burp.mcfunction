execute at @e[tag=burp] as @e[tag=burp,limit=1,distance=0] run teleport @s ^ ^ ^0.25
execute at @e[tag=Square9,type=area_effect_cloud] as @e[tag=Square9,type=area_effect_cloud] positioned ~ ~ ~2 run kill @e[tag=burp,distance=..1]
execute at @e[tag=burp,type=armor_stand] run particle minecraft:falling_dust emerald_block ~ ~0.7 ~ 0 0 0 0 1 normal
execute at @e[tag=burp,type=armor_stand] run particle minecraft:block lime_concrete ~ ~0.7 ~ 0 0 0 0 5 normal
execute at @e[type=armor_stand,tag=burp] run scoreboard players add @e[tag=Plant,limit=1,distance=..1] PlantHealth 10
execute at @e[tag=Plant] as @e[type=armor_stand,tag=burp,distance=..1] run particle block lime_concrete ~ ~0.6 ~ 0.1 0.1 0.1 0.1 10 force @a
execute at @e[tag=Plant] as @s run kill @e[type=armor_stand,tag=burp,distance=..1]
