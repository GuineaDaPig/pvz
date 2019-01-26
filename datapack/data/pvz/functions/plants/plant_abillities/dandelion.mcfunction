execute at @e[type=armor_stand,tag=dand_down,tag=active,scores={AbilityCD=100..}] as @e[type=armor_stand,tag=dand_down,tag=active,scores={AbilityCD=100..},distance=..1] run scoreboard players set @s AbilityCD 0
execute at @e[type=armor_stand,tag=dand_down,tag=active,scores={counter=..14}] if entity @e[tag=Zombie,distance=..1] as @e[type=armor_stand,tag=dand_down,tag=active,distance=..1] run tag @s add dand_up
execute at @e[type=armor_stand,tag=dand_down,tag=dand_up,scores={counter=..14}] as @e[type=armor_stand,tag=dand_down,tag=active,distance=..1] run data merge entity @s {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Dandelion\"}",Tags:[Dandelion,dand_up,Plant,AbilityCD],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:32}}]}

## If Planted Start Counter
execute at @e[type=armor_stand,tag=dand_down,tag=active,tag=new] as @e[type=armor_stand,tag=dand_down,tag=active,tag=new,distance=..1] run scoreboard players set @s counter 0
execute at @e[type=armor_stand,tag=dand_down,tag=active,tag=new] as @e[type=armor_stand,tag=dand_down,tag=active,tag=new,distance=..1] run tag @s remove new



## If zombie is near
# add score
execute at @e[type=armor_stand,tag=dand_up,scores={counter=..14}] as @e[type=armor_stand,tag=dand_up,distance=..1] run scoreboard players add @s AbilityCD 1
# play custom sound
execute at @e[type=armor_stand,tag=dand_up,scores={AbilityCD=19,counter=..14}] as @e[type=armor_stand,tag=dand_up,distance=..1,scores={AbilityCD=19,counter=..14}] run playsound minecraft:pvz.plants.dandelion.growl master @a[distance=..16] ~ ~ ~ 5 0.5
# run particle command
execute at @e[type=armor_stand,tag=dand_up,scores={AbilityCD=19,counter=..14}] as @e[type=armor_stand,tag=dand_up,distance=..1,scores={AbilityCD=19,counter=..14}] run particle minecraft:sweep_attack ~ ~.2 ~-0.3 .1 .1 0.5 0.5 10
# injures zombies
execute at @e[type=armor_stand,tag=dand_up,scores={AbilityCD=20..,counter=..14}] as @e[type=armor_stand,tag=dand_up,distance=..1,scores={AbilityCD=20..,counter=..14}] run scoreboard players add @e[tag=Zombie,distance=..1] ZombieHealth 10
# throws back zombies
execute at @e[type=armor_stand,tag=dand_up,scores={AbilityCD=20..,counter=..14}] as @e[tag=Zombie,distance=..1] run teleport @s ~ ~ ~-6
# resets to be in ground to charge
execute at @e[type=armor_stand,tag=dand_up,scores={AbilityCD=20..}] as @e[type=armor_stand,tag=dand_up,distance=..1,scores={AbilityCD=20..}] run data merge entity @s {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Dandelion\"}",Tags:[Dandelion,dand_down,Plant,AbilityCD,WalkThrough],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{}]}
execute at @e[type=armor_stand,tag=dand_down,tag=!active,scores={AbilityCD=20..}] as @e[type=armor_stand,tag=dand_down,tag=!reset,distance=..1,scores={AbilityCD=20..}] run scoreboard players add @s counter 1
execute at @e[type=armor_stand,tag=dand_down,tag=!active,scores={AbilityCD=20..}] as @e[type=armor_stand,tag=dand_down,tag=!reset,distance=..1,scores={AbilityCD=20..}] run scoreboard players set @s AbilityCD 0
# charging
execute at @e[type=armor_stand,tag=dand_down,tag=!active,tag=!reset] as @e[type=armor_stand,tag=dand_down,tag=!reset,distance=..1] run tag @s add reset
execute at @e[type=armor_stand,tag=dand_down,tag=!active,tag=reset] as @e[type=armor_stand,tag=dand_down,tag=reset,distance=..1] run scoreboard players add @s AbilityCD 1
execute at @e[type=armor_stand,tag=dand_down,tag=!active,tag=reset,scores={AbilityCD=..100}] as @e[type=armor_stand,tag=dand_down,tag=reset,scores={AbilityCD=..100},distance=..1] run particle block grass_block ~ ~ ~ 0.5 0.2 0.5 0 10 force @a
execute at @e[type=armor_stand,tag=dand_down,tag=!active,tag=reset,scores={AbilityCD=100..}] as @e[type=armor_stand,tag=dand_down,tag=reset,scores={AbilityCD=100..},distance=..1] run data merge entity @s {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Dandelion\"}",Tags:[Dandelion,dand_down,active,Plant,AbilityCD],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:33}}]}

execute at @e[type=armor_stand,tag=dand_down,scores={counter=14..}] as @e[type=armor_stand,tag=dand_down,distance=..1] run data merge entity @s {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Dandelion\"}",Tags:[Dandelion,dead,Plant,AbilityCD],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:32}}]}
execute at @e[type=armor_stand,tag=dead,scores={counter=14..,PlantHealth=100..}] as @e[type=armor_stand,tag=dead,distance=..1] run playsound minecraft:pvz.plants.dandelion.death master @a[distance=..16] ~ ~ ~ 5 0.5
execute at @e[type=armor_stand,tag=dead,scores={counter=14..,PlantHealth=100..}] as @e[type=armor_stand,tag=dead,distance=..1] run kill @s