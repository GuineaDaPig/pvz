
#Wallnut
execute at @e[type=armor_stand,tag=Wallnut,scores={PlantHealth=266..533}] as @e[type=armor_stand,tag=Wallnut,scores={PlantHealth=266..533}] run data merge entity @s[type=armor_stand,tag=Wallnut,scores={PlantHealth=266..533}] {ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:6}}]}
execute at @e[type=armor_stand,tag=Wallnut,scores={PlantHealth=534..800}] as @e[type=armor_stand,tag=Wallnut,scores={PlantHealth=534..800}] run data merge entity @s[type=armor_stand,tag=Wallnut,scores={PlantHealth=534..800}] {ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:7}}]}
kill @e[type=armor_stand,tag=Wallnut,scores={PlantHealth=800..}]