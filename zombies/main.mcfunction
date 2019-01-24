
###############################################################################################################################
# Description: Basic things for zombies are triggered here. Most important on is them actually being able to move down the lane
###############################################################################################################################

execute at @a if entity @e[type=zombie,tag=BasicZombie] run function pvz:zombies/basic
execute at @a if entity @e[type=zombie,tag=Imp] as @e[tag=Imp] as @s run function pvz:zombies/imp
execute at @a if entity @e[type=zombie,tag=weatherman_boss] as @e[tag=weatherman_boss] as @s run function pvz:zombies/boss/weather_man_boss
execute at @a if entity @e[type=zombie,tag=ConeheadZombie] run execute as @e[type=zombie,tag=ConeheadZombie] as @s run function pvz:zombies/conehead
execute at @a if entity @e[type=zombie,tag=BucketheadZombie] run execute as @e[type=zombie,tag=BucketheadZombie] as @s run function pvz:zombies/buckethead
execute at @a if entity @e[type=zombie,tag=TrashcanZombie] run execute as @e[type=zombie,tag=TrashcanZombie] run function pvz:zombies/trashcan
execute at @a if entity @e[type=zombie,tag=crusher] as @e[tag=crusher] as @s run function pvz:zombies/crusher

# Trashcan
execute as @e[type=zombie,tag=Trashcan,scores={ZombieHealth=20..}] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
kill @e[type=zombie,tag=Trashcan,scores={ZombieHealth=20..}]

#Weatherman
execute at @e[tag=Ice] if entity @e[tag=Ice] as @e[tag=Ice,distance=..1] run function pvz:zombies/boss/abilities/weatherman/ice/ice_function
execute as @a unless entity @e[tag=weather_man_boss] run bossbar set boss:weatherman visible false


# Zombie Movement
execute as @e[type=armor_stand,tag=Plant,tag=!WalkThrough] at @s run tag @e[type=zombie,distance=..1] add EatingZombie
execute as @e[type=armor_stand,tag=Plant,tag=!WalkThrough] at @s run tag @e[type=zombie,tag=MovingZombie,distance=..1] remove MovingZombie
execute as @e[type=zombie,tag=MovingZombie,tag=!sit,tag=!weatherman_boss] at @s[type=zombie,tag=MovingZombie] run tp @s[type=zombie,tag=MovingZombie] ~ ~ ~0.02
execute as @e[type=zombie,tag=TrashcanZombie] at @s run tp @s[tag=MovingZombie,tag=TrashcanZombie] ~ ~ ~0.005
execute as @e[type=zombie,tag=crusher,tag=!sit] at @s run tp @s[tag=MovingZombie,tag=crusher,tag=!sit] ~ ~ ~-0.01
execute as @e[type=zombie,tag=Imp] at @s run tp @s[tag=MovingZombie,tag=Imp] ~ ~ ~0.04
execute as @e[type=zombie,tag=weatherman] at @s run tp @s[tag=MovingZombie,tag=weatherman] ~ ~ ~-0.01
tag @e[type=zombie,tag=Zombie,tag=!sit] add MovingZombie
execute at @e[tag=chomped] unless entity @e[tag=Muncher,distance=..1] as @e[tag=chomped,distance=..1] run tag @s remove chomped



# Plant Health
execute at @e[type=zombie,tag=EatingZombie] as @e[type=zombie,tag=EatingZombie,distance=0,tag=!chomped] run scoreboard players add @e[type=armor_stand,tag=Plant,limit=1,distance=..1] PlantHealth 1
execute at @e[type=zombie,tag=EatingZombie] as @e[type=zombie,tag=EatingZombie,distance=0] unless entity @e[tag=Plant,distance=..1] run tag @s remove EatingZombie
# Game Over
execute at @e[type=zombie,tag=Zombie] if block ~ ~-1 ~ stone_slab run tag @s add GameOver
execute as @e[type=zombie,tag=GameOver] run playsound entity.generic.eat master @p[distance=32] ~ ~ ~ 10 0.5
execute as @e[type=zombie,tag=GameOver] run kill @p
execute as @e[type=zombie,tag=GameOver] run scoreboard players reset @p Sun
execute as @e[type=zombie,tag=GameOver] run execute at @e[type=armor_stand,tag=Plant] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
execute as @e[type=zombie,tag=GameOver] run kill @e[type=armor_stand,tag=Plant]
execute as @e[type=zombie,tag=GameOver] run kill @e[type=item,tag=FallenSun]
execute as @e[type=zombie,tag=GameOver] run kill @e[type=zombie]