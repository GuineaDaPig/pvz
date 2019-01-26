##Potato Mine##
#When Zombies Go Onto The Tile Tag Itself
execute at @e[type=armor_stand,tag=Poison_Ivy] if entity @e[tag=Zombie,distance=..1] as @e[type=armor_stand,tag=Poison_Ivy,distance=..1] run tag @e[tag=Zombie,distance=..1] add Poisoned
execute at @e[tag=Zombie] unless entity @e[tag=Poison_Ivy,distance=..1] as @e[tag=Zombie,distance=..1] run tag @s remove Poisoned
#Add A Score
execute at @e[type=armor_stand,tag=Poison_Ivy] as @e[type=armor_stand,tag=Poison_Ivy,distance=..1] if entity @e[tag=Poisoned,distance=..1] run scoreboard players add @s AbilityCD 1
execute at @e[type=armor_stand,tag=Poison_Ivy,scores={AbilityCD=20}] as @e[type=armor_stand,tag=Poison_Ivy,distance=..1] run scoreboard players add @e[tag=Poisoned,distance=..1] ZombieHealth 2
execute at @e[type=armor_stand,tag=Poison_Ivy,scores={AbilityCD=20}] as @e[type=armor_stand,tag=Poison_Ivy,distance=..1] run particle witch ~ ~ ~.2 0.2 0.4 0.2 0 25 force 
execute at @e[type=armor_stand,tag=Poison_Ivy,scores={AbilityCD=20}] as @e[type=armor_stand,tag=Poison_Ivy,distance=..1] run scoreboard players set @s AbilityCD 0
execute at @e[type=armor_stand,tag=Poison_Ivy,scores={AbilityCD=1..}] as @e[type=armor_stand,tag=Poison_Ivy,distance=..1] unless entity @e[tag=Zombie,distance=..1] run scoreboard players set @s AbilityCD 0


