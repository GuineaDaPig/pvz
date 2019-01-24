
################################################################################################################################
##################################################################################################################################
###### Weatherman Boss
###### This is the Big Boi
###### 5 Attack:
###### Wind; Hits after 45 seconds, pushes zombies foward half a square.
###### Thunder; Hits after 90 seconds 
###### 
###*#

#*# Health Bar #*#
#* Store Health #*#
execute at @e[tag=weatherman_boss] as @e[tag=weatherman_boss] run execute store result bossbar boss:weatherman value run scoreboard players get @e[tag=weatherman_boss,distance=..1,limit=1] ZombieHealth
#* Design of Bar *#
bossbar add boss:weatherman "Weatherman"
execute as @a if entity @e[tag=weatherman_boss] run bossbar set boss:weatherman color purple
execute as @a if entity @e[tag=weatherman_boss] run bossbar set boss:weatherman players @a

#*Abillity Time *#
execute as @e[tag=weatherman_boss] run scoreboard players add @s AbilityCD 1
execute as @e[tag=weatherman_boss,scores={AbilityCD=4000..}] run scoreboard players set @s AbilityCD 0

#*# Wind #*#
execute as @e[tag=weatherman_boss,scores={AbilityCD=900..901}] run function pvz:zombies/boss/abilities/weatherman/wind

#*# Thunder #*#
execute as @e[tag=weatherman_boss,scores={AbilityCD=1800..1801}] run function pvz:zombies/boss/abilities/weatherman/thunder

#*# Ice #*#
execute as @e[tag=weatherman_boss,scores={AbilityCD=2700..2701}] run function pvz:zombies/boss/abilities/weatherman/ice/ice

#*# Sunny Day #*#
execute as @e[tag=weatherman_boss,scores={AbilityCD=2000..2001}] run function pvz:zombies/boss/abilities/weatherman/sunny_day


#*# Heatwave #*#
execute as @e[tag=weatherman_boss,scores={AbilityCD=3600..3601}] run function pvz:zombies/boss/abilities/weatherman/heatwave/heatwave_burn

#*# Remove Fire #*#
execute as @e[tag=weatherman_boss,scores={AbilityCD=3900..3901}] as @e[tag=burn] at @e[tag=burn] run fill ~ ~ ~ ~-1 ~ ~-1 air replace fire
execute as @e[tag=weatherman_boss,scores={AbilityCD=3900..3901}] as @e[tag=burn] run tag @s remove burn
#* Tag players *#
execute as @e[tag=weatherman_boss,scores={AbilityCD=3600..3601}] run tag @a[tag=!heatwave] add heatwave
#* Run Function *#
execute as @e[tag=heatwave] run function pvz:zombies/boss/abilities/weatherman/heatwave/heatwave_timer 

#*# Teleport #*#
execute as @e[tag=weatherman_boss,scores={ZombieHealth=800..1000}] run teleport @s @e[limit=1,name="Lane 3 Square 1"]
execute as @e[tag=weatherman_boss,scores={ZombieHealth=600..799}] run teleport @s @e[limit=1,name="Lane 1 Square 1"]
execute as @e[tag=weatherman_boss,scores={ZombieHealth=400..599}] run teleport @s @e[limit=1,name="Lane 4 Square 1"]
execute as @e[tag=weatherman_boss,scores={ZombieHealth=200..399}] run teleport @s @e[limit=1,name="Lane 2 Square 1"]
execute as @e[tag=weatherman_boss,scores={ZombieHealth=1..199}] run teleport @s @e[limit=1,name="Lane 5 Square 1"]

#*# Model #*#
execute as @e[tag=weatherman_boss] at @s run data merge entity @e[sort=nearest,distance=0,limit=1] {Silent:1b,ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:27}}]}
execute as @e[tag=weatherman_boss] run effect give @s minecraft:invisibility 1000000 255 true
