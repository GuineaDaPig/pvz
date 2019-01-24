###################################################################################################
# Description: After throwing the Iron Shovel it digs up the nearest plant & returns to your hotbar
###################################################################################################

#Kill the Plant
execute at @e[type=armor_stand,tag=Plant,distance=..1] run playsound pvz.plants.dig_up block @a[distance=..16] ~ ~ ~ 2 1.75
kill @e[type=armor_stand,tag=Plant,distance=..1]

#Give back Shovel
replaceitem entity @p hotbar.8 iron_shovel{shovel:1b,Attributes:[{}]}
playsound minecraft:pvz.plants.get_shovel block @a[distance=..16] ~ ~ ~ 2 1.75
kill @s