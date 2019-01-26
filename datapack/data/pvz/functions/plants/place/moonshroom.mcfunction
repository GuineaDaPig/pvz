####################################
# Description: Places the Moonshroom
####################################

execute if entity @p[scores={MSUse=1..}] run kill @s
title @p[scores={Sun=..15}] actionbar ["",{"text":"Not enough sun!","color":"dark_red"}]
execute if entity @p[scores={Sun=..15}] run kill @s
execute if entity @e[tag=Plant,distance=..1] run kill @s
execute unless block ~ ~-1 ~ #pvz:lawn run title @p actionbar ["",{"text":"You can't place that here!","color":"dark_red"}]
execute if block ~ ~-1 ~ #pvz:lawn if entity @e[tag=Plant,distance=..1] run title @p actionbar ["",{"text":"A plant is already there!","color":"dark_red"}]
title @p[scores={MSUse=1..}] actionbar ["",{"text":"Cannot Place That Yet! Cool Down: ( ","color":"dark_red","bold":true},{"score":{"name":"@p[scores={MSUse=1..}]","objective":"MSUse"},"color":"light_purple","bold":false},{"text":" Ticks","color":"light_purple"},{"text":" )","color":"dark_red"}]
execute as @s if entity @p[tag=!heatwave,scores={MSUse=0,Sun=15..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players set @p MSUse 200
execute as @s if entity @p[tag=!heatwave,scores={MSUse=200,Sun=15..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players remove @p Sun 15
execute as @s if entity @p[tag=!heatwave,scores={MSUse=200}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run execute at @e[tag=Square,limit=1,sort=nearest,distance=..1] run summon armor_stand ~ ~ ~ {Team:"sunGlow",Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Moonshroom\"}",Tags:[babyShroom,Moonshroom,AbilityCD,Plant,strikeable,Flower],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:12}}]}
kill @e[type=cow,distance=..1]