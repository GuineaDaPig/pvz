#################################
# Description: Places the Wallnut
#################################

title @p[scores={Sun=..49}] actionbar ["",{"text":"Not enough sun!","color":"dark_red"}]
execute if entity @p[scores={Sun=..49}] run kill @s
execute unless block ~ ~-1 ~ #pvz:lawn run title @p actionbar ["",{"text":"You can't place that here!","color":"dark_red"}]
execute if block ~ ~-1 ~ #pvz:lawn if entity @e[tag=Plant,distance=..1] run title @p actionbar ["",{"text":"A plant is already there!","color":"dark_red"}]
execute unless block ~ ~-1 ~ #pvz:lawn run kill @s
title @p[scores={WNUse=1..}] actionbar ["",{"text":"Cannot Place That Yet! Cool Down: ( ","color":"dark_red","bold":true},{"score":{"name":"@p[scores={WNUse=1..}]","objective":"WNUse"},"color":"light_purple","bold":false},{"text":" Ticks","color":"light_purple"},{"text":" )","color":"dark_red"}]
execute if entity @p[scores={WNUse=1..}] run kill @s
execute if entity @p[tag=!heatwave,scores={WNUse=0,Sun=50..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players set @p WNUse 300
execute if entity @p[tag=!heatwave,scores={WNUse=300,Sun=50..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players remove @p Sun 50
execute if entity @p[tag=!heatwave,scores={WNUse=300}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run execute at @e[tag=Square,limit=1,sort=nearest,distance=..1] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Wallnut\"}",Tags:[Wallnut,AbilityCD,Plant,strikeable,PeaPlant],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:5}}]}
kill @s