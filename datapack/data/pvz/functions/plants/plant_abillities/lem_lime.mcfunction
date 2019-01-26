##Peashooter
#Scores
execute at @e[type=armor_stand,tag=lemLime] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @e[type=armor_stand,tag=lemLime,sort=nearest,distance=..1] run scoreboard players add @s AbilityCD 1
#Shoot Lemon
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=100..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] at @s run playsound minecraft:block.fire.extinguish master @a[distance=..16] ~ ~ ~ 10 1
#Summon Lemon
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=100..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @s run summon armor_stand ~ ~0.6 ~ {CustomName:"{\"text\":\"Lemon Seed\"}",Tags:[LemonSeed,Projectile],NoGravity:1,Invisible:1,Marker:1}
#Shoot Lime
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=20}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-6,limit=1] at @s run playsound minecraft:block.fire.extinguish master @a[distance=..16] ~ ~ ~ 10 1.7
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=40}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-6,limit=1] at @s run playsound minecraft:block.fire.extinguish master @a[distance=..16] ~ ~ ~ 10 1.7
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=60}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-6,limit=1] at @s run playsound minecraft:block.fire.extinguish master @a[distance=..16] ~ ~ ~ 10 1.7
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=80}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-6,limit=1] at @s run playsound minecraft:block.fire.extinguish master @a[distance=..16] ~ ~ ~ 10 1.7
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=100}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-6,limit=1] at @s run playsound minecraft:block.fire.extinguish master @a[distance=..16] ~ ~ ~ 10 1.7
#Summon Lime
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=20}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-6,limit=1] as @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Lime Seed\"}",Tags:[LimeSeed,Projectile],NoGravity:1,Invisible:1,Marker:1}
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=40}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-6,limit=1] as @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Lime Seed\"}",Tags:[LimeSeed,Projectile],NoGravity:1,Invisible:1,Marker:1}
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=60}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-6,limit=1] as @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Lime Seed\"}",Tags:[LimeSeed,Projectile],NoGravity:1,Invisible:1,Marker:1}
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=80}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-6,limit=1] as @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Lime Seed\"}",Tags:[LimeSeed,Projectile],NoGravity:1,Invisible:1,Marker:1}
execute at @e[type=armor_stand,tag=lemLime,scores={AbilityCD=100}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-6,limit=1] as @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Lime Seed\"}",Tags:[LimeSeed,Projectile],NoGravity:1,Invisible:1,Marker:1}
#Reset
execute at @e[type=armor_stand,tag=lemLime] unless entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @e[type=armor_stand,tag=lemLime,distance=..1] run scoreboard players set @s AbilityCD 0
execute as @e[type=armor_stand,tag=lemLime,scores={AbilityCD=100..}] at @s run scoreboard players set @s AbilityCD 0
# Death
kill @e[type=armor_stand,tag=lemLime,scores={PlantHealth=60..}]