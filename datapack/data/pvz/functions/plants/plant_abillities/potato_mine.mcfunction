##Potato Mine##
#When Zombies Go Onto The Tile Tag Itself
execute at @e[type=armor_stand,tag=potato_mine] if entity @e[type=zombie,distance=..1,limit=1] as @e[type=armor_stand,tag=potato_mine,distance=..1] run tag @s add exploding
#Add A Score
execute at @e[type=armor_stand,tag=potato_mine] as @e[type=armor_stand,tag=exploding,distance=..1] run scoreboard players add @s AbilityCD 1
execute at @e[type=armor_stand,tag=potato_mine,scores={AbilityCD=20}] as @e[type=armor_stand,tag=potato_mine,distance=..1] run scoreboard players add @e[tag=Zombie,distance=..1] ZombieHealth 90
execute at @e[type=armor_stand,tag=potato_mine,scores={AbilityCD=20}] as @e[type=armor_stand,tag=potato_mine,distance=..1] run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.1 25 force 
execute at @e[type=armor_stand,tag=potato_mine,scores={AbilityCD=20}] as @e[type=armor_stand,tag=potato_mine,distance=..1] run playsound minecraft:entity.generic.explode master @a[distance=..16]
execute at @e[type=armor_stand,tag=potato_mine,scores={AbilityCD=20}] as @e[type=armor_stand,tag=potato_mine,distance=..1] run kill @s