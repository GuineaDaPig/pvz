##Golden Peashooter
#Scores
execute at @e[type=armor_stand,tag=Golden_Peashooter] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @e[type=armor_stand,tag=Golden_Peashooter,sort=nearest,distance=..1] run scoreboard players add @s AbilityCD 1
#Shoot
execute at @e[type=armor_stand,tag=Golden_Peashooter,scores={AbilityCD=25..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] at @s run playsound minecraft:pvz.plants.golden_fire master @a[distance=..16] ~ ~ ~ 1 1.5
#Summon Pea
execute at @e[type=armor_stand,tag=Golden_Peashooter,scores={AbilityCD=25..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Gold Pea\"}",Tags:[Gold_Pea,Projectile],NoGravity:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:26s}}]}
#Reset
execute at @e[type=armor_stand,tag=Golden_Peashooter] unless entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @e[type=armor_stand,tag=Golden_Peashooter,distance=..1] run scoreboard players set @s AbilityCD 0
execute as @e[type=armor_stand,tag=Golden_Peashooter,scores={AbilityCD=25..}] at @s run scoreboard players set @s AbilityCD 0
# Death
kill @e[type=armor_stand,tag=Golden_Peashooter,scores={PlantHealth=60..}]