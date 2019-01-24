####################################
# Description: Places the Sunflower
####################################

execute if entity @p[scores={SUse=1..}] run kill @s
title @p[scores={Sun=..49}] actionbar ["",{"text":"Not enough sun!","color":"dark_red"}]
execute if entity @p[scores={Sun=..49}] run kill @s
execute if entity @e[tag=Plant,distance=..1] run kill @s
execute unless block ~ ~-1 ~ #pvz:lawn run title @p actionbar ["",{"text":"You can't place that here!","color":"dark_red"}]
execute if block ~ ~-1 ~ #pvz:lawn if entity @e[tag=Plant,distance=..1] run title @p actionbar ["",{"text":"A plant is already there!","color":"dark_red"}]
title @p[scores={SUse=1..}] actionbar ["",{"text":"Cannot Place That Yet! Cool Down: ( ","color":"dark_red","bold":true},{"score":{"name":"@p[scores={SUse=1..}]","objective":"SUse"},"color":"light_purple","bold":false},{"text":" Ticks","color":"light_purple"},{"text":" )","color":"dark_red"}]
execute as @s if entity @p[tag=!heatwave,scores={SUse=0,Sun=50..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players set @p SUse 200
execute as @s if entity @p[tag=!heatwave,scores={SUse=200,Sun=50..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players remove @p Sun 50
execute as @s if entity @p[tag=!heatwave,scores={SUse=200}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run execute at @e[tag=Square,limit=1,sort=nearest,distance=..1] run summon armor_stand ~ ~ ~ {Team:"sunGlow",Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Sunflower\"}",Tags:[Sunflower,AbilityCD,Plant,strikeable,Flower],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:4}}]}
kill @s