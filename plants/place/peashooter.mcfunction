####################################
# Description: Places the Peashooter
####################################

title @p[scores={Sun=..99}] actionbar ["",{"text":"Not enough sun!","color":"dark_red"}]
execute if entity @p[scores={Sun=..99}] run kill @s
execute if entity @e[tag=Plant,distance=..1] run kill @s
execute unless block ~ ~-1 ~ #pvz:lawn run title @p actionbar ["",{"text":"You can't place that here!","color":"dark_red"}]
execute if block ~ ~-1 ~ #pvz:lawn if entity @e[tag=Plant,distance=..1] run title @p actionbar ["",{"text":"A plant is already there!","color":"dark_red"}]
execute unless block ~ ~-1 ~ #pvz:lawn run kill @s
title @p[scores={PSUse=1..}] actionbar ["",{"text":"Cannot Place That Yet! Cool Down: ( ","color":"dark_red","bold":true},{"score":{"name":"@p[scores={PSUse=1..}]","objective":"PSUse"},"color":"light_purple","bold":false},{"text":" Ticks","color":"light_purple"},{"text":" )","color":"dark_red"}]
execute if entity @p[scores={PSUse=1..}] run kill @s
execute if entity @p[tag=!heatwave,scores={PSUse=0,Sun=100..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players set @p PSUse 100
execute if entity @p[tag=!heatwave,scores={PSUse=100,Sun=100..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players remove @p Sun 100
execute if entity @p[tag=!heatwave,scores={PSUse=100}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run execute at @e[tag=Square,limit=1,sort=nearest,distance=..1] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Peashooter\"}",Tags:[Peashooter,AbilityCD,Plant,strikeable,PeaPlant],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:2}}]}
kill @s