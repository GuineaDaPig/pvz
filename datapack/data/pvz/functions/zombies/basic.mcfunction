
#### Description: Basic Zombie Commands

execute as @e[tag=BasicZombie] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:1}}]}
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=BasicZombie,distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:2}}]}
execute as @e[tag=BasicZombie,scores={ZombieHealth=6..10}] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:3}}]}
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=BasicZombie,scores={ZombieHealth=6..10},distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:4}}]}

## Sound Effects
execute as @e[tag=BasicZombie] run scoreboard players add @s soundEffect 1
execute as @e[tag=BasicZombie,scores={soundEffect=200..}] at @s run playsound minecraft:pvz.zombies.generic.idle hostile @a[distance=..16] ~ ~ ~ 0.5 1
execute as @e[tag=BasicZombie,scores={soundEffect=200..}] at @s run scoreboard players set @s soundEffect 0
execute as @e[type=zombie,tag=BasicZombie,scores={ZombieHealth=10..}] at @s run playsound minecraft:pvz.zombies.generic.death hostile @a[distance=..16] ~ ~ ~ 0.5 1
kill @e[type=zombie,tag=BasicZombie,scores={ZombieHealth=10..}]