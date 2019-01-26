##Mageshroom
#Scores
execute at @e[type=armor_stand,tag=Mageshroom] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @e[type=armor_stand,tag=Mageshroom,sort=nearest,distance=..1] run scoreboard players add @s AbilityCD 1
#Shoot
execute at @e[type=armor_stand,tag=Mageshroom,scores={AbilityCD=100..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] at @s run playsound minecraft:pvz.plants.peashooter_fire master @a[distance=..16] ~ ~ ~ 1 1.5
#Summon Pea
execute at @e[type=armor_stand,tag=Mageshroom,scores={AbilityCD=100..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @s run summon armor_stand ~ ~0.1 ~ {Team:"mushroomGlow",Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Shroom\"}",Tags:[Shroom,Projectile],NoGravity:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:21s}}]}
#Reset
execute at @e[type=armor_stand,tag=Mageshroom] unless entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @e[type=armor_stand,tag=Mageshroom,distance=..1] run scoreboard players set @s AbilityCD 0
execute as @e[type=armor_stand,tag=Mageshroom,scores={AbilityCD=100..}] at @s run scoreboard players set @s AbilityCD 0
# Death
execute at @e[type=armor_stand,tag=Mageshroom,scores={PlantHealth=60..}] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
kill @e[type=armor_stand,tag=Mageshroom,scores={PlantHealth=60..}]