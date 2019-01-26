## Give Sun Score to Player ##
execute at @e[type=item,tag=Sun] run scoreboard players add @p[distance=..1] Sun 50
## Play Effects ##
execute at @e[type=item,tag=Sun] if entity @a[distance=..1] run particle block gold_block ~ ~ ~ 0.5 0.5 0.5 0 10 force @a
execute at @e[type=item,tag=Sun] if entity @a[distance=..1] run playsound minecraft:pvz.plants.sun master @a[distance=..16] ~ ~ ~ 1 1
## Kill Sun ##
execute as @a at @s run kill @e[tag=Sun,distance=..1]
## Give Half-Sun Score to Player ##
execute at @e[type=item,tag=MiniSun] run scoreboard players add @p[distance=..1] Sun 25
## Play Effects ##
execute at @e[type=item,tag=MiniSun] if entity @a[distance=..1] run particle block gold_block ~ ~ ~ 0.5 0.5 0.5 0 10 force @a
execute at @e[type=item,tag=MiniSun] if entity @a[distance=..1] run playsound minecraft:pvz.plants.sun master @a[distance=..16] ~ ~ ~ 1 2
## Kill Half-Sun ##
execute as @a at @s run kill @e[tag=MiniSun,distance=..1]

