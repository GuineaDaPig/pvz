
##Sunflower
#Scores
execute at @e[type=armor_stand,tag=Sunflower] as @e[type=armor_stand,tag=Sunflower,distance=..1] run scoreboard players add @s AbilityCD 1
execute at @e[type=armor_stand,tag=Sunflower,scores={AbilityCD=300..}] as @e[type=armor_stand,tag=Sunflower,distance=..1] run summon item ~ ~1 ~ {Motion:[0.0,0.3,0.0],PickupDelay:32767,Tags:[Sun,sun_item],Age:5800,Item:{id:"minecraft:iron_hoe",Count:1,Damage:1,tag:{Unbreakable:1,Damage:1,display:{Name:"{\"text\":\"Sun\"}",}}}}
execute at @e[type=item,tag=Sun] run effect give @e[type=armor_stand,tag=Sunflower,distance=..1] glowing 1 0
execute at @e[type=armor_stand,tag=Sunflower,scores={AbilityCD=300..}] as @e[type=armor_stand,tag=Sunflower,distance=..1] run scoreboard players set @s AbilityCD 0
# Death 
execute at @e[type=armor_stand,tag=Sunflower,scores={PlantHealth=60..}] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
kill @e[type=armor_stand,tag=Sunflower,scores={PlantHealth=60..}]