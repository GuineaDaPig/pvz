###############################################################################################################################
# Description: Basic Zombie Commands
###############################################################################################################################

execute as @e[tag=Imp] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:26}}]}
execute as @e[tag=Imp] at @s run effect give @s minecraft:invisibility 1 0 true
execute at @e[type=armor_stand,tag=Plant,tag=!WalkThrough] as @e[tag=Imp,distance=..1] at @s run data merge entity @e[sort=nearest,distance=0,limit=1,tag=!chomped] {ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:25}}]}

## Sound Effects
execute as @s run scoreboard players add @s soundEffect 1
execute as @e[tag=Imp,scores={soundEffect=200..}] at @s run playsound minecraft:pvz.zombies.imp.idle hostile @a[distance=..16] ~ ~ ~ 0.5 1
execute as @e[tag=Imp,scores={soundEffect=200..}] at @s run scoreboard players set @s soundEffect 0
execute as @e[type=zombie,tag=Imp,scores={ZombieHealth=5..}] at @s run playsound minecraft:pvz.zombies.imp.death hostile @a[distance=..16] ~ ~ ~ 0.5 1
kill @e[type=zombie,tag=Imp,scores={ZombieHealth=5..}]