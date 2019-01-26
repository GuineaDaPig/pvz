##Muncher

#Scores
execute at @e[type=armor_stand,tag=Muncher,tag=Ready] if entity @e[type=zombie,distance=..1,limit=1] as @e[type=armor_stand,tag=Muncher,tag=Ready,distance=..1] run tag @s add trapping
execute at @e[type=armor_stand,tag=Muncher,tag=Ready] if entity @e[type=zombie,distance=..1,limit=1] as @e[type=armor_stand,tag=Muncher,tag=Ready,distance=..1] run playsound minecraft:pvz.plants.muncher_bite master @a[distance=..15] ~ ~ ~ 5
execute at @e[type=armor_stand,tag=Muncher,tag=Ready] if entity @e[type=zombie,distance=..1,limit=1] as @e[type=armor_stand,tag=Muncher,tag=Ready,distance=..1] run scoreboard players add @e[tag=Zombie,distance=..1,limit=1,sort=nearest] ZombieHealth 5
execute at @e[type=armor_stand,tag=Muncher,tag=Ready] if entity @e[type=zombie,distance=..1,limit=1] as @e[type=armor_stand,tag=Muncher,tag=Ready,distance=..1] run scoreboard players add @s PlantHealth 100
execute at @e[type=armor_stand,tag=Muncher,tag=trapping] if entity @e[type=zombie,distance=..1] as @e[type=armor_stand,tag=Muncher,tag=trapping,distance=..1] run teleport @e[tag=Zombie,sort=nearest,limit=1,distance=..1] @s 
execute at @e[type=armor_stand,tag=Muncher,tag=trapping] if entity @e[type=zombie,distance=..1] as @e[type=armor_stand,tag=Muncher,tag=trapping,distance=..1] run data merge entity @s {Rotation:[0.0f,0.0f],CustomName:"{\"text\":\"Muncher\"}",Tags:[Muncher,Plant,Eater,AbilityCD,trapping],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:17}}]}
execute at @e[type=armor_stand,tag=Muncher,tag=trapping] if entity @e[type=zombie,distance=..1] as @e[type=armor_stand,tag=Muncher,tag=trapping,distance=..1] run tag @e[tag=Zombie,limit=1,sort=nearest,distance=..1] add chomped


execute at @e[type=armor_stand,tag=Muncher,tag=trapping] unless entity @e[type=zombie,distance=..1] as @e[type=armor_stand,tag=Muncher,tag=trapping,distance=..1] run data merge entity @s {Rotation:[0.0f,0.0f],CustomName:"{\"text\":\"Muncher\"}",Tags:[Muncher,Plant,Eater,AbilityCD,Ready],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:18}}]}


#Traping a zombie

kill @e[tag=Muncher,scores={PlantHealth=400..}]