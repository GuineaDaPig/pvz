execute as @a[nbt={Inventory:[{id:"minecraft:bat_spawn_egg"}]}] at @s run tag @s add hasPeashooter
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:bat_spawn_egg"}]}] at @s run tag @s[tag=hasPeashooter] remove hasPeashooter
execute as @a[nbt={Inventory:[{id:"minecraft:blaze_spawn_egg"}]}] at @s run tag @s add hasSunflower
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:blaze_spawn_egg"}]}] at @s run tag @s[tag=hasSunflower] remove hasSunflower
execute as @a[nbt={Inventory:[{id:"minecraft:cave_spider_spawn_egg"}]}] at @s run tag @s add hasWallnut
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:cave_spider_spawn_egg"}]}] at @s run tag @s[tag=hasWallnut] remove hasWallnut
execute as @a[nbt={Inventory:[{id:"minecraft:endermite_spawn_egg"}]}] at @s run tag @s add hasPotato
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:endermite_spawn_egg"}]}] at @s run tag @s[tag=hasPotato] remove hasPotato
execute as @a[nbt={Inventory:[{id:"minecraft:cod_spawn_egg"}]}] at @s run tag @s add hasBrussel
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:cod_spawn_egg"}]}] at @s run tag @s[tag=hasBrussel] remove hasBrussel
execute as @a[nbt={Inventory:[{id:"minecraft:cow_spawn_egg"}]}] at @s run tag @s add hasMoon
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:cow_spawn_egg"}]}] at @s run tag @s[tag=hasMoon] remove hasMoon
execute as @a[nbt={Inventory:[{id:"minecraft:creeper_spawn_egg"}]}] at @s run tag @s add hasMuncher
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:creeper_spawn_egg"}]}] at @s run tag @s[tag=hasMoonshroom] remove hasMuncher
execute as @a[nbt={Inventory:[{id:"minecraft:dolphin_spawn_egg"}]}] at @s run tag @s add hasMageshroom
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:dolphin_spawn_egg"}]}] at @s run tag @s[tag=hasMageshroom] remove hasMageshroom
execute as @a[nbt={Inventory:[{id:"minecraft:donkey_spawn_egg"}]}] at @s run tag @s add hasLunarLilly
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:donkey_spawn_egg"}]}] at @s run tag @s[tag=hasLunarLilly] remove hasLunarLilly
execute as @a[nbt={Inventory:[{id:"minecraft:drowned_spawn_egg"}]}] at @s run tag @s add hasLem-Lime
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:drowned_spawn_egg"}]}] at @s run tag @s[tag=hasLem-Lime] remove hasLem-Lime
execute as @a[nbt={Inventory:[{id:"minecraft:chicken_spawn_egg"}]}] at @s run tag @s add hasPome
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:chicken_spawn_egg"}]}] at @s run tag @s[tag=hasPome] remove hasPome
execute as @a[nbt={Inventory:[{id:"minecraft:evoker_spawn_egg"}]}] at @s run tag @s add hasGold_Pea
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:evoker_spawn_egg"}]}] at @s run tag @s[tag=hasGold_Pea] remove hasGold_Pea
execute as @a[nbt={Inventory:[{id:"minecraft:guardian_spawn_egg"}]}] at @s run tag @s add hasPosion_Ivy
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:guardian_spawn_egg"}]}] at @s run tag @s[tag=hasPosion_Ivy] remove hasPosion_Ivy
execute as @a[nbt={Inventory:[{id:"minecraft:husk_spawn_egg"}]}] at @s run tag @s add hasDandeLion
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:husk_spawn_egg"}]}] at @s run tag @s[tag=hasDandeLion] remove hasDandeLions

tag @a[tag=correct] remove correct
tag @a[tag=shovel_incorrect] remove shovel_incorrect

## Taging items
tag @a[nbt={Inventory:[{Slot:0b,tag:{item:1b},Count:1b}]}] add correct
tag @a[nbt={Inventory:[{Slot:1b,tag:{item:1b},Count:1b}]}] add correct
tag @a[nbt={Inventory:[{Slot:2b,tag:{item:1b},Count:1b}]}] add correct
tag @a[nbt={Inventory:[{Slot:3b,tag:{item:1b},Count:1b}]}] add correct
tag @a[nbt={Inventory:[{Slot:4b,tag:{item:1b},Count:1b}]}] add correct
tag @a[nbt={Inventory:[{Slot:5b,tag:{item:1b},Count:1b}]}] add correct
tag @a[nbt={Inventory:[{Slot:6b,tag:{item:1b},Count:1b}]}] add correct
tag @a[nbt={Inventory:[{Slot:7b,tag:{item:1b},Count:1b}]}] add correct
tag @a[nbt={Inventory:[{Slot:9b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:10b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:11b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:12b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:13b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:14b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:15b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:16b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:17b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:18b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:19b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:20b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:21b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:22b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:23b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:24b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:25b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:26b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:27b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:28b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:29b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:30b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:31b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:32b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:33b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:34b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:35b,tag:{item:1b},Count:1b}]}] add incorrect
tag @a[nbt={Inventory:[{Slot:-106b,tag:{item:1b},Count:1b}]}] add incorrect

## Taging the shovel
tag @a[nbt={Inventory:[{Slot:0b,tag:{shovel:1b},Count:1b}]}] add shovel_incorrect
tag @a[nbt={Inventory:[{Slot:1b,tag:{shovel:1b},Count:1b}]}] add shovel_incorrect
tag @a[nbt={Inventory:[{Slot:2b,tag:{shovel:1b},Count:1b}]}] add shovel_incorrect
tag @a[nbt={Inventory:[{Slot:3b,tag:{shovel:1b},Count:1b}]}] add shovel_incorrect
tag @a[nbt={Inventory:[{Slot:4b,tag:{shovel:1b},Count:1b}]}] add shovel_incorrect
tag @a[nbt={Inventory:[{Slot:5b,tag:{shovel:1b},Count:1b}]}] add shovel_incorrect
tag @a[nbt={Inventory:[{Slot:6b,tag:{shovel:1b},Count:1b}]}] add shovel_incorrect
tag @a[nbt={Inventory:[{Slot:7b,tag:{shovel:1b},Count:1b}]}] add shovel_incorrect


## If plant is in other parts of inventory
execute as @a unless entity @s[nbt={Inventory:[{tag:{item:1b}}]}] run tag @s add noPlant
execute as @a[nbt={Inventory:[{tag:{item:1b}}]}] run tag @s remove noPlant
execute as @a[tag=incorrect,tag=!noPlant] run title @s title ["",{"text":"☒ Did you not ☒","color":"dark_red","underlined":true}]
execute as @a[tag=incorrect,tag=!noPlant] run title @s subtitle ["",{"text":"☒ Read The Item Desc.?!? ☒","color":"dark_red","underlined":true}]

## Set air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.0 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.1 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.2 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.3 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.4 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.5 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.6 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.7 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.8 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.9 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.10 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.11 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.12 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.13 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.14 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.15 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.16 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.17 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.18 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.19 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.20 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.21 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.22 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.23 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.24 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.25 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] inventory.26 minecraft:air
replaceitem entity @a[tag=incorrect,tag=!noPlant] weapon.mainhand minecraft:air

tag @a[nbt={Inventory:[{Slot:8b,tag:{item:1b},Count:1b}]}] add incorrect
execute as @a[tag=incorrect] at @s run replaceitem entity @s hotbar.8 air 1
execute as @a[tag=incorrect] at @s run replaceitem entity @s hotbar.8 iron_shovel 1
tag @a[tag=incorrect] remove incorrect

execute as @a[tag=shovel_incorrect] at @s run replaceitem entity @s hotbar.8 iron_shovel{shovel:1b} 1
execute as @a[tag=shovel_incorrect] run clear @s minecraft:iron_shovel 1







