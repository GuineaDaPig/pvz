
##Peashooter
#Scores
execute at @e[type=armor_stand,tag=lunarLilly] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @e[type=armor_stand,tag=lunarLilly,sort=nearest,distance=..1] run scoreboard players add @s AbilityCD 1
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=62..125}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] at @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.3 ~ 0.1 0.1 0.1 0 10 force @a
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=125..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] at @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.3 ~ 0.15 0.15 0.15 0 25 force @a
#Shoot
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 10 2
#Summon Pea
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[type=area_effect_cloud,tag=Square1,distance=..1] as @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.1 ~-0.6 0 0.1 0.3 0 100 force @a
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[type=area_effect_cloud,tag=Square2,distance=..1] as @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.1 ~-1.5 0 0.1 .6 0 150 force @a
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[type=area_effect_cloud,tag=Square3,distance=..1] as @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.1 ~-2.5 0 0.1 1 0 250 force @a
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[type=area_effect_cloud,tag=Square4,distance=..1] as @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.1 ~-5 0 0.1 1.5 0 300 force @a
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[type=area_effect_cloud,tag=Square5,distance=..1] as @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.1 ~-7 0 0.1 3 0 300 force @a
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[type=area_effect_cloud,tag=Square6,distance=..1] as @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.1 ~-5.5 0 0.1 2.3 0 300 force @a
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[type=area_effect_cloud,tag=Square7,distance=..1] as @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.1 ~-6.5 0 0.1 3 0 300 force @a
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[type=area_effect_cloud,tag=Square8,distance=..1] as @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.1 ~-7 0 0.1 3.5 0 300 force @a
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[type=area_effect_cloud,tag=Square9,distance=..1] as @e[type=armor_stand,tag=lunarLilly,distance=..1] run particle dust 0.1 0.4 1 0.5 ~ ~1.1 ~-8 0 0.1 4 0 300 force @a

# Shoot
execute at @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] if entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @s run scoreboard players add @e[tag=Zombie,dx=0,dy=0,dz=-18] ZombieHealth 5
execute at @e[type=armor_stand,tag=lunarLilly] unless entity @e[tag=Zombie,dx=0,dy=0,dz=-18,limit=1] as @e[type=armor_stand,tag=lunarLilly,distance=..1] run scoreboard players set @s AbilityCD 0
execute as @e[type=armor_stand,tag=lunarLilly,scores={AbilityCD=250..}] at @s run scoreboard players set @s AbilityCD 0
# Death
execute at @e[type=armor_stand,tag=lunarLilly,scores={PlantHealth=60..}] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
kill @e[type=armor_stand,tag=lunarLilly,scores={PlantHealth=60..}]