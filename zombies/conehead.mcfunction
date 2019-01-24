
###############################################################################################################################
# Description: Basic Zombie Commands
###############################################################################################################################

##Full
execute as @e[tag=ConeheadZombie] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:5}}]}
# Full Eating
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=ConeheadZombie,distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:6}}]}
## Damage 1
execute as @e[tag=ConeheadZombie,scores={ZombieHealth=8..14}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:7}}]}
# Damage 1 Eating
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=ConeheadZombie,scores={ZombieHealth=8..14},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:8}}]}
## Damage 2
execute as @e[tag=ConeheadZombie,scores={ZombieHealth=15..21}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:9}}]}
# Damage 2 Eating
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=ConeheadZombie,scores={ZombieHealth=15..21},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:10}}]}
## Damage 3
execute as @e[tag=ConeheadZombie,scores={ZombieHealth=22..28}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:11}}]}
# Damage 3 Eating
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=ConeheadZombie,scores={ZombieHealth=22..28},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:12}}]}
## No Cone
execute as @e[tag=ConeheadZombie,scores={ZombieHealth=29..33}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:1}}]}
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=ConeheadZombie,scores={ZombieHealth=29..33},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:2}}]}
execute as @e[tag=ConeheadZombie,scores={ZombieHealth=34..38}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:3}}]}
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=ConeheadZombie,scores={ZombieHealth=34..38},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:4}}]}


## Sound Effects
execute as @s run scoreboard players add @s soundEffect 1
execute as @e[tag=ConeheadZombie,scores={soundEffect=200..}] at @s run playsound minecraft:pvz.zombies.generic.idle hostile @a[distance=..16] ~ ~ ~ .5 1
execute as @e[tag=ConeheadZombie,scores={soundEffect=200..}] at @s run scoreboard players set @s soundEffect 0
execute as @e[type=zombie,tag=ConeheadZombie,scores={ZombieHealth=38..}] at @s run playsound minecraft:pvz.zombies.generic.death hostile @a[distance=..16] ~ ~ ~ 0.5 1
kill @e[type=zombie,tag=ConeheadZombie,scores={ZombieHealth=38..}]