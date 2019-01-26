#######################################
# Description: Places the Brussel Scout
#######################################

execute if entity @p[scores={BSUse=1..}] run kill @s
title @p[scores={Sun=..149}] actionbar ["",{"text":"Not enough sun!","color":"dark_red"}]
execute if entity @p[scores={Sun=..149}] run kill @s
execute unless block ~ ~-1 ~ #pvz:lawn run title @p actionbar ["",{"text":"You can't place that here!","color":"dark_red"}]
execute if block ~ ~-1 ~ #pvz:lawn if entity @e[tag=Plant,distance=..1] run title @p actionbar ["",{"text":"A plant is already there!","color":"dark_red"}]
execute unless block ~ ~-1 ~ #pvz:lawn run kill @s
title @p[scores={BSUse=1..}] actionbar ["",{"text":"Cannot Place That Yet! Cool Down: ( ","color":"dark_red","bold":true},{"score":{"name":"@p[scores={BSUse=1..}]","objective":"BSUse"},"color":"light_purple","bold":false},{"text":" Ticks","color":"light_purple"},{"text":" )","color":"dark_red"}]
execute as @s if entity @p[tag=!heatwave,scores={BSUse=0,Sun=150..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players set @p BSUse 300
execute as @s if entity @p[tag=!heatwave,scores={BSUse=300,Sun=150..}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run scoreboard players remove @p Sun 150
execute as @s if entity @p[tag=!heatwave,scores={BSUse=300}] if block ~ ~-1 ~ #pvz:lawn unless entity @e[tag=Plant,distance=..1] run execute at @e[tag=Square,limit=1,sort=nearest,distance=..1] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Brussel Scout\"}",Tags:[brussel_scout,Brussel_Down,AbilityCD,Plant,strikeable,PeaPlant],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:10}}]}
execute if entity @e[tag=Plant,distance=..1] run kill @s
kill @s