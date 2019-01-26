execute at @s[scores={random=0..2}] unless entity @e[tag=strike] as @e[tag=strikeable,type=zombie,tag=!weatherman,limit=1] run tag @s add strike
execute at @s[scores={random=3..10}] unless entity @e[tag=strike] as @e[tag=strikeable,tag=Plant,limit=1] run tag @s add strike
execute at @e[tag=strike] run particle minecraft:block yellow_wool ~ ~ ~ 0 10 0 0 200 force
execute at @e[tag=strike] run particle minecraft:lava ~ ~ ~ 1 1 1 0 50 force
execute at @e[tag=strike,tag=Plant] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
execute as @e[tag=strike,tag=Plant] run kill @s
execute as @e[tag=strike,tag=Zombie] run kill @s
playsound minecraft:entity.lightning.impact master @a ~ ~ ~ 1 0
playsound minecraft:entity.lightning.thunder master @a ~ ~ ~ 1 1