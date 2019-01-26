execute as @e[tag=Square,tag=!Square1] run scoreboard players set @s random 0
execute as @e[tag=Square,tag=!Square1] run function pvz:random/run
execute at @e[tag=Square,tag=!Square1,scores={random=7..14}] as @e[tag=Square,tag=!Square1,scores={random=12..14},distance=..1] run summon item ~ ~5 ~ {Motion:[0.0,0.3,0.0],PickupDelay:32767,Tags:[Sun,sun_item],Age:5800,Item:{id:"minecraft:iron_hoe",Count:1,Damage:1,tag:{Unbreakable:1,Damage:1,display:{Name:"{\"text\":\"Sun\"}",}}}}
