execute at @e[tag=Plant,tag=!Ice,tag=!frozen,limit=1] as @e[tag=Plant,limit=3,distance=..1] run tag @s add strike
execute at @e[tag=Zombie,tag=!Ice,tag=!weatherman_boss,limit=2] as @e[tag=Zombie,tag=!weatherman_boss,limit=1,distance=..1] run tag @s add strike
execute as @e[tag=strike] at @s run particle end_rod ~ ~ ~ 0 10 0 0 100 force @a
execute as @e[tag=strike] at @s run particle minecraft:lava ~ ~ ~ 0.5 0.7 0.5 0 10 force
execute as @e[tag=strike] at @s run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..16]
execute as @e[tag=strike] at @s run kill @e[tag=strike,distance=..1]