#################################
# Description: Places the Muncher
#################################

title @p[scores={Sun=..124}] actionbar ["",{"text":"Not enough sun!","color":"dark_red"}]
execute if entity @p[scores={Sun=..124}] run kill @s
execute unless block ~ ~-1 ~ #pvz:lawn run title @p actionbar ["",{"text":"You can't place that here!","color":"dark_red"}]
execute if block ~ ~-1 ~ #pvz:lawn if entity @e[tag=Plant,distance=..1] run title @p actionbar ["",{"text":"A plant is already there!","color":"dark_red"}]
execute unless block ~ ~-1 ~ #pvz:lawn run kill @s
title @p[scores={PIUse=1..}] actionbar ["",{"text":"Cannot Place That Yet! Cool Down: ( ","color":"dark_red","bold":true},{"score":{"name":"@p[scores={PIUse=1..}]","objective":"PIUse"},"color":"light_purple","bold":false},{"text":" Ticks","color":"light_purple"},{"text":" )","color":"dark_red"}]
execute if entity @p[scores={PIUse=1..}] run kill @s
execute if entity @p[tag=!heatwave,scores={PIUse=0,Sun=125..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players set @p PIUse 200
execute if entity @p[tag=!heatwave,scores={PIUse=200,Sun=125..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players remove @p Sun 125
execute if entity @p[tag=!heatwave,scores={PIUse=200}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run execute at @e[tag=Square,limit=1,sort=nearest,distance=..1] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Poison Ivy\"}",Tags:[Poison_Ivy,Plant,AbilityCD,WalkThrough],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:23}}]}
kill @s