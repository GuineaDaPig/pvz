
##Brussel Scout
#Going Up
execute at @e[type=armor_stand,tag=Brussel_Down,tag=!Brussel_Up] as @e[type=armor_stand,tag=Brussel_Down,tag=!Brussel_Up,distance=..1] run scoreboard players add @s AbilityCD 1
execute at @e[type=armor_stand,tag=Brussel_Down,tag=!Brussel_Up,scores={AbilityCD=..200}] as @e[type=armor_stand,tag=Brussel_Down,tag=!Brussel_Up] run particle block green_wool ~ ~ ~ 0.5 0.1 0.5 0 1 force @a
execute at @e[type=armor_stand,tag=Brussel_Down,tag=!Brussel_Up,scores={AbilityCD=200..}] as @e[type=armor_stand,tag=Brussel_Down,tag=!Brussel_Up] run playsound minecraft:pvz.plants.brussel_scout_pop master @a[distance=..16] ~ ~ ~ 1 0.5
execute at @e[type=armor_stand,tag=Brussel_Down,tag=!Brussel_Up,scores={AbilityCD=200..}] as @e[type=armor_stand,tag=Brussel_Down,tag=!Brussel_Up,distance=..1] run data merge entity @s {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Brussel Scout\"}",Tags:[brussel_scout,Brussel_Up,AbilityCD,Plant,PeaPlant,strikeable],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:9}}]}
execute at @e[type=armor_stand,tag=Brussel_Down,tag=!Brussel_Up,scores={AbilityCD=200..}] as @e[type=armor_stand,tag=Brussel_Down,tag=!Brussel_Up,distance=..1] run scoreboard players set @s AbilityCD 0
#Scores
execute at @e[type=armor_stand,tag=Brussel_Up] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @e[type=armor_stand,tag=Brussel_Up,sort=nearest,distance=..1] run scoreboard players add @s AbilityCD 1
#Shoot
execute at @e[type=armor_stand,tag=Brussel_Up,scores={AbilityCD=100..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] at @s run playsound minecraft:pvz.plants.brussel_fire master @a[distance=..16] ~ ~ ~ 10 1.5
#Summon Sprout
execute at @e[type=armor_stand,tag=Brussel_Up,scores={AbilityCD=100..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Sprout\"}",Tags:[Sprout,Projectile],NoGravity:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:11}}]}
#Reset
execute at @e[type=armor_stand,tag=Brussel_Up] unless entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @e[type=armor_stand,tag=Brussel_Up,distance=..1] run scoreboard players set @s AbilityCD 0
execute as @e[type=armor_stand,tag=Brussel_Up,scores={AbilityCD=100..}] at @s run scoreboard players set @s AbilityCD 0
# Death
execute at @e[type=armor_stand,tag=Brussel_Up,scores={PlantHealth=60..}] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
execute at @e[type=armor_stand,tag=Brussel_Down,scores={PlantHealth=60..}] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
kill @e[type=armor_stand,tag=Brussel_Up,scores={PlantHealth=60..}]
kill @e[type=armor_stand,tag=Brussel_Down,scores={PlantHealth=60..}]