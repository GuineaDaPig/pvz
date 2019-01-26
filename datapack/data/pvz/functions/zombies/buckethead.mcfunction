
###############################################################################################################################
# Description: Basic Zombie Commands
###############################################################################################################################

##Full
execute as @e[tag=BucketheadZombie] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:14}}]}
# Full Eating
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=BucketheadZombie,distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:15}}]}
## Damage 1
execute as @e[tag=BucketheadZombie,scores={ZombieHealth=22..43}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:16}}]}
# Damage 1 Eating
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=BucketheadZombie,scores={ZombieHealth=22..43},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:17}}]}
## Damage 2
execute as @e[tag=BucketheadZombie,scores={ZombieHealth=44..65}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:18}}]}
# Damage 2 Eating
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=BucketheadZombie,scores={ZombieHealth=44..65},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:19}}]}
## No Helmet
execute as @e[tag=BucketheadZombie,scores={ZombieHealth=66..70}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:1}}]}
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=BucketheadZombie,scores={ZombieHealth=66..70},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:2}}]}
execute as @e[tag=BucketheadZombie,scores={ZombieHealth=71..75}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:3}}]}
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=BucketheadZombie,scores={ZombieHealth=71..75},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:4}}]}

## Sound Effects
execute as @s run scoreboard players add @s soundEffect 1
execute as @e[tag=BucketheadZombie,scores={soundEffect=200..}] at @s run playsound minecraft:pvz.zombies.generic.idle hostile @a[distance=..16] ~ ~ ~ 0.5 1
execute as @e[tag=BucketheadZombie,scores={soundEffect=200..}] at @s run scoreboard players set @s soundEffect 0
execute as @e[type=zombie,tag=BucketheadZombie,scores={ZombieHealth=75..}] at @s run playsound minecraft:pvz.zombies.generic.death hostile @a[distance=..16] ~ ~ ~ 0.5 1
kill @e[type=zombie,tag=BucketheadZombie,scores={ZombieHealth=75..}]