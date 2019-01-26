###################################################################################################################################
# Description: This is for any items that would be thrown onto the ground. This is mainly for throwing down all the types of plants
###################################################################################################################################

#Check if Iron shovel is dropped
tag @e[type=item,tag=!DigUpPlant,nbt={Item:{id:"minecraft:iron_shovel"},OnGround:1b}] add DigUpPlant 

#Kill the Plant
execute at @e[type=item,tag=DigUpPlant] positioned ~ ~ ~ at @e[type=armor_stand,tag=Plant,sort=nearest,limit=1,distance=0..1] run playsound pvz.plants.dig_up block @p ~ ~ ~ 2 1.75
execute at @e[type=item,tag=DigUpPlant] positioned ~ ~ ~ run kill @e[type=armor_stand,tag=Plant,sort=nearest,distance=0..1]

#Give back Shovel
execute at @e[type=item,tag=DigUpPlant] run replaceitem entity @p hotbar.8 iron_shovel{Attributes:[{}]}
execute at @e[type=item,tag=DigUpPlant] run playsound minecraft:pvz.plants.get_shovel block @p ~ ~ ~ 2 1.75
kill @e[type=item,tag=DigUpPlant]

###################################################################################################################################
#If there is already a plant kill the summon mob
###################################################################################################################################
execute at @e[tag=Plant] as @e[tag=Plant] run kill @e[tag=summonp,distance=..1]
execute at @e[tag=summonp] as @e[tag=summonp] unless block ~ ~-1 ~ #pvz:lawn run kill @s



###################################################################################################################################
#Testing if the creature is summoned
###################################################################################################################################

##### Peashooter #####
execute at @a[scores={usePea=1..,Sun=..99}] as @s run kill @e[type=bat,distance=..5]
execute at @a[scores={usePea=1..,Sun=100..}] as @e[type=bat,tag=peashooter,distance=..5] at @s run execute at @e[type=armor_stand,tag=Square,sort=nearest,limit=1,distance=..5] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Peashooter\"}",Tags:[Peashooter,AbilityCD,Plant,strikeable,PeaPlant],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:2}}]}
execute at @a[scores={usePea=1..,Sun=100..}] as @s if entity @e[tag=summonp,distance=..5] run scoreboard players remove @s Sun 100
execute at @a[scores={usePea=1..,Sun=100..}] as @s if entity @e[tag=summonp,distance=..5] run playsound minecraft:pvz.plants.placement master @a[distance=..5] ~ ~ ~ 0.1 2
execute at @a[scores={usePea=1..,Sun=100..}] as @s run kill @e[type=bat,distance=..5]
execute at @a[scores={usePea=1..}] as @s run stopsound @a neutral minecraft:entity.bat.ambient
execute at @a[scores={usePea=1..}] as @s run stopsound @a neutral minecraft:entity.bat.death
execute at @a[scores={usePea=1..}] as @s run scoreboard players set @s usePea 0

##### Sunflower #####
execute at @a[scores={useSunf=1..,Sun=..49}] as @s run kill @e[type=blaze,distance=..5]
execute at @a[scores={useSunf=1..,Sun=50..}] as @e[type=blaze,tag=sunflower,distance=..5] at @s run execute at @e[type=armor_stand,tag=Square,sort=nearest,limit=1,distance=..5] run summon armor_stand ~ ~ ~ {Team:"sunGlow",Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Sunflower\"}",Tags:[Sunflower,AbilityCD,Plant,strikeable,Flower],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:4}}]}
execute at @a[scores={useSunf=1..,Sun=50..}] as @s if entity @e[tag=summonp,distance=..5] run scoreboard players remove @s Sun 50
execute at @a[scores={useSunf=1..,Sun=50..}] as @s if entity @e[tag=summonp,distance=..5] run playsound minecraft:pvz.plants.placement master @a[distance=..5] ~ ~ ~ 0.1 2
execute at @a[scores={useSunf=1..,Sun=50..}] as @s run kill @e[type=blaze,distance=..5]
execute at @a[scores={useSunf=1..}] as @s run stopsound @a hostile minecraft:entity.blaze.ambient
execute at @a[scores={useSunf=1..}] as @s run stopsound @a hostile minecraft:entity.blaze.death
execute at @a[scores={useSunf=1..}] as @s run scoreboard players set @s useSunf 0

##### Wallnut ######
execute at @a[scores={useWall=1..,Sun=..49}] as @s run kill @e[type=cave_spider,distance=..5]
execute at @a[scores={useWall=1..,Sun=50..}] as @e[type=cave_spider,tag=wallnut,distance=..5] at @s run execute at @e[type=armor_stand,tag=Square,sort=nearest,limit=1,distance=..5] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Wallnut\"}",Tags:[Wallnut,Plant,strikeable,Nut],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:5}}]}
execute at @a[scores={useWall=1..,Sun=50..}] as @s if entity @e[tag=summonp,distance=..5] run scoreboard players remove @s Sun 50
execute at @a[scores={useWall=1..,Sun=50..}] as @s if entity @e[tag=summonp,distance=..5] run playsound minecraft:pvz.plants.placement master @a[distance=..5] ~ ~ ~ 0.1 2
execute at @a[scores={useWall=1..,Sun=50..}] as @s run kill @e[type=cave_spider,distance=..5]
execute at @a[scores={useWall=1..}] as @s run stopsound @a hostile minecraft:entity.spider.ambient
execute at @a[scores={useWall=1..}] as @s run stopsound @a hostile minecraft:entity.spider.death
execute at @a[scores={useWall=1..}] as @s run scoreboard players set @s useWall 0

##### Brussel Scout ######
execute at @a[scores={useBrusScout=1..,Sun=..149}] as @s run kill @e[type=cod,distance=..5]
execute at @a[scores={useBrusScout=1..,Sun=150..}] as @e[type=cod,tag=brussel,distance=..5] at @s run execute at @e[type=armor_stand,tag=Square,sort=nearest,limit=1,distance=..5] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Brussel Scout\"}",Tags:[brussel_scout,Brussel_Down,AbilityCD,Plant,strikeable,PeaPlant],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:10}}]}
execute at @a[scores={useBrusScout=1..,Sun=150..}] as @s if entity @e[tag=summonp,distance=..5] run scoreboard players remove @s Sun 150
execute at @a[scores={useBrusScout=1..,Sun=150..}] as @s if entity @e[tag=summonp,distance=..5] run playsound minecraft:pvz.plants.placement master @a[distance=..5] ~ ~ ~ 0.1 2
execute at @a[scores={useBrusScout=1..,Sun=150..}] as @s run kill @e[type=cod,distance=..5]
execute at @a[scores={useBrusScout=1..}] as @s run scoreboard players set @s useBrusScout 0

##### Moon Shroom ######
execute at @a[scores={useMoonShroom=1..,Sun=0..}] as @e[type=cow,tag=moonshroom,distance=..5] at @s run execute at @e[type=armor_stand,tag=Square,sort=nearest,limit=1,distance=..5] run summon armor_stand ~ ~ ~ {Team:"sunGlow",Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Moonshroom\"}",Tags:[moonshroom,babyShroom,AbilityCD,Plant,strikeable,Mushroom],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:12}}]}
execute at @a[scores={useMoonShroom=1..,Sun=0..}] as @s if entity @e[tag=summonp,distance=..5] run playsound minecraft:pvz.plants.placement master @a[distance=..5] ~ ~ ~ 0.1 2
execute at @a[scores={useMoonShroom=1..,Sun=0..}] as @s run kill @e[type=cow,distance=..5]
execute at @a[scores={useMoonShroom=1..,Sun=0..}] as @s run stopsound @a neutral minecraft:entity.cow.ambient
execute at @a[scores={useMoonShroom=1..,Sun=0..}] as @s run stopsound @a neutral minecraft:entity.cow.death
execute at @a[scores={useMoonShroom=1..}] as @s run scoreboard players set @s useMoonShroom 0

##### Muncher ######
execute at @a[scores={useMuncher=1..,Sun=..175}] as @s run kill @e[type=creeper,distance=..5]
execute at @a[scores={useMuncher=1..,Sun=175..}] as @e[type=creeper,tag=muncher,distance=..5] at @s run execute at @e[type=armor_stand,tag=Square,sort=nearest,limit=1,distance=..5] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Muncher\"}",Tags:[Muncher,Plant,Eater,AbilityCD],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:19}}]}
execute at @a[scores={useMuncher=1..,Sun=175..}] as @s if entity @e[tag=summonp,distance=..5] run scoreboard players remove @s Sun 150
execute at @a[scores={useMuncher=1..,Sun=175..}] as @s if entity @e[tag=summonp,distance=..5] run playsound minecraft:pvz.plants.placement master @a[distance=..5] ~ ~ ~ 0.1 2
execute at @a[scores={useMuncher=1..,Sun=175..}] as @s run kill @e[type=creeper,distance=..5]
execute at @a[scores={useMuncher=1..}] as @s run stopsound @a neutral minecraft:entity.creeper.ambient
execute at @a[scores={useMuncher=1..}] as @s run stopsound @a neutral minecraft:entity.creeper.death
execute at @a[scores={useMuncher=1..}] as @s run scoreboard players set @s useMuncher 0

##### Mageshroom ######
execute at @a[scores={useMageshroom=1..,Sun=..125}] as @s run kill @e[type=dolphin,distance=..5]
execute at @a[scores={useMageshroom=1..,Sun=125..}] as @e[type=dolphin,tag=mageshroom,distance=..5] at @s run execute at @e[type=armor_stand,tag=Square,sort=nearest,limit=1,distance=..5] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Mageshroom\"}",Tags:[mageshroom,Plant,Mushroom,AbilityCD],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:20}}]}
execute at @a[scores={useMageshroom=1..,Sun=125..}] as @s if entity @e[tag=summonp,distance=..5] run scoreboard players remove @s Sun 150
execute at @a[scores={useMageshroom=1..,Sun=125..}] as @s if entity @e[tag=summonp,distance=..5] run playsound minecraft:pvz.plants.placement master @a[distance=..5] ~ ~ ~ 0.1 2
execute at @a[scores={useMageshroom=1..,Sun=125..}] as @s run kill @e[type=dolphin,distance=..5]
execute at @a[scores={useMageshroom=1..}] as @s run stopsound @a neutral minecraft:entity.dolphin.ambient
execute at @a[scores={useMageshroom=1..}] as @s run stopsound @a neutral minecraft:entity.dolphin.death
execute at @a[scores={useMageshroom=1..}] as @s run scoreboard players set @s useMuncher 0

##### LunarLilly ######
execute at @a[scores={useMageshroom=1..,Sun=..125}] as @s run kill @e[type=dolphin,distance=..5]
execute at @a[scores={useMageshroom=1..,Sun=125..}] as @e[type=dolphin,tag=mageshroom,distance=..5] at @s run execute at @e[type=armor_stand,tag=Square,sort=nearest,limit=1,distance=..5] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Mageshroom\"}",Tags:[mageshroom,Plant,Mushroom,AbilityCD],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:20}}]}
execute at @a[scores={useMageshroom=1..,Sun=125..}] as @s if entity @e[tag=summonp,distance=..5] run scoreboard players remove @s Sun 150
execute at @a[scores={useMageshroom=1..,Sun=125..}] as @s if entity @e[tag=summonp,distance=..5] run playsound minecraft:pvz.plants.placement master @a[distance=..5] ~ ~ ~ 0.1 2
execute at @a[scores={useMageshroom=1..,Sun=125..}] as @s run kill @e[type=dolphin,distance=..5]
execute at @a[scores={useMageshroom=1..}] as @s run stopsound @a neutral minecraft:entity.dolphin.ambient
execute at @a[scores={useMageshroom=1..}] as @s run stopsound @a neutral minecraft:entity.dolphin.death
execute at @a[scores={useMageshroom=1..}] as @s run scoreboard players set @s useMuncher 0

##### Pomegranade ######
execute at @a[scores={usePome=1..,Sun=..249}] as @s run kill @e[type=chicken,distance=..5]
execute at @a[scores={usePome=1..,Sun=250..}] as @e[type=chicken,tag=pome,distance=..5] at @s run execute at @e[type=armor_stand,tag=Square,sort=nearest,limit=1,distance=..5] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Pomegranade\"}",Tags:[Pomegranade,justPlanted,Plant,Fruit,strikeable,AbilityCD],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:29}}]}
execute at @a[scores={usePome=1..,Sun=250..}] as @s if entity @e[tag=summonp,distance=..5] run scoreboard players remove @s Sun 250
execute at @a[scores={usePome=1..,Sun=250..}] as @s if entity @e[tag=summonp,distance=..5] run playsound minecraft:pvz.plants.placement master @a[distance=..5] ~ ~ ~ 0.1 2
execute at @a[scores={usePome=1..,Sun=250..}] as @s run kill @e[type=chicken,distance=..5]
execute at @a[scores={usePome=1..}] as @s run stopsound @a neutral minecraft:entity.chicken.ambient
execute at @a[scores={usePome=1..}] as @s run stopsound @a neutral minecraft:entity.chicken.death
execute at @a[scores={usePome=1..}] as @s run scoreboard players set @s usePome 0







#Cooldown check
execute as @a[scores={sunfPt=1..}] if entity @e[type=item,tag=SpawnSunflower,sort=nearest] run title @s title ["",{"text":"X","color":"aqua"}]
execute as @a[scores={sunfPt=1..}] if entity @e[type=item,tag=SpawnSunflower,sort=nearest] run playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 1 1.7
execute as @a[scores={sunfPt=1..}] as @e[type=item,tag=SpawnSunflower,sort=nearest] run tag @s add KillPlant
execute as @e[type=item,tag=SpawnSunflower,tag=KillPlant] as @p run function pvz:plants/plant_inv_replace

execute as @a[scores={peaPt=1..}] if entity @e[type=item,tag=SpawnPeashooter,sort=nearest] run title @s title ["",{"text":"X","color":"aqua"}]
execute as @a[scores={peaPt=1..}] run scoreboard players remove @s peaPt 1
execute as @a[scores={peaPt=1..}] if entity @e[type=item,tag=SpawnPeashooter,sort=nearest] run playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 1 1.7
execute as @a[scores={peaPt=1..}] as @e[type=item,tag=SpawnPeashooter,sort=nearest] run tag @s add KillPlant
execute as @e[type=item,tag=SpawnPeashooter,tag=KillPlant] as @p run function pvz:plants/plant_inv_replace

execute as @a[scores={wallPt=1..}] if entity @e[type=item,tag=SpawnWallnut,sort=nearest] run title @s title ["",{"text":"X","color":"aqua"}]
execute as @a[scores={wallPt=1..}] run scoreboard players remove @s wallPt 1
execute as @a[scores={wallPt=1..}] if entity @e[type=item,tag=SpawnWallnut,sort=nearest] run playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 1 1.7
execute as @a[scores={wallPt=1..}] as @e[type=item,tag=SpawnWallnut,sort=nearest] run tag @s add KillPlant
execute as @e[type=item,tag=SpawnWallnut,tag=KillPlant] as @p run function pvz:plants/plant_inv_replace

execute as @a[scores={pomePt=1..}] if entity @e[type=item,tag=SpawnPomegranade,sort=nearest] run title @s title ["",{"text":"X","color":"aqua"}]
execute as @a[scores={pomePt=1..}] run scoreboard players remove @s pomePt 1
execute as @a[scores={pomePt=1..}] if entity @e[type=item,tag=SpawnPomegranade,sort=nearest] run playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 1 1.7
execute as @a[scores={pomePt=1..}] as @e[type=item,tag=SpawnPomegranade,sort=nearest] run tag @s add KillPlant
execute as @e[type=item,tag=SpawnPomegranade,tag=KillPlant] as @p run function pvz:plants/plant_inv_replace

execute as @e[type=item,tag=SpawnBrussel,tag=KillPlant] as @p run function pvz:plants/plant_inv_replace

execute as @a[scores={munchPt=1..}] if entity @e[type=item,tag=SpawnMuncher,sort=nearest] run title @s title ["",{"text":"X","color":"aqua"}]
execute as @a[scores={munchPt=1..}] run scoreboard players remove @s munchPt 1
execute as @a[scores={munchPt=1..}] if entity @e[type=item,tag=SpawnMuncher,sort=nearest] run playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 1 1.7
execute as @a[scores={munchPt=1..}] as @e[type=item,tag=SpawnMuncher,sort=nearest] run tag @s add KillPlant
execute as @e[type=item,tag=SpawnMuncher,tag=KillPlant] as @p run function pvz:plants/plant_inv_replace

execute as @e[type=item,tag=KillPlant] if block ~ ~-1 ~ barrier as @p run function pvz:plants/cant_place_plant


kill @e[type=item,tag=KillPlant]

#Spawn the plant
execute at @e[type=item,tag=SpawnPlant] run particle totem_of_undying ~ ~0.2 ~ 1 0.25 1 0 10 force
execute as @e[type=item,tag=SpawnPlant] run playsound block.grass.place master @a ~ ~ ~ 2 2

#Spawn Sunflower
execute as @a[scores={sunfPt=0}] at @e[type=item,tag=SpawnSunflower,sort=nearest] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Sunflower\"}",Tags:[Sunflower,AbilityCD,Plant,strikeable,Flower],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:2}}]}
execute as @a[scores={sunfPt=0}] if entity @e[type=item,tag=SpawnSunflower] run scoreboard players remove @s Sun 50
execute as @a[scores={sunfPt=0}] if entity @e[type=item,tag=SpawnSunflower] run scoreboard players set @s sunfPt 100

#Spawn Peashooter 
execute as @a[scores={peaPt=0}] at @e[type=item,tag=SpawnPeashooter] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Peashooter\"}",Tags:[Peashooter,AbilityCD,Plant,strikeable,PeaPlant],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:4}}]}
execute as @a[scores={peaPt=0}] if entity @e[type=item,tag=SpawnPeashooter] run scoreboard players remove @p Sun 100
execute as @a[scores={peaPt=0}] if entity @e[type=item,tag=SpawnPeashooter] run scoreboard players set @s peaPt 100

#Summon Brussel
execute at @e[type=item,tag=SpawnBrussel] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Brussel Scout\"}",Tags:[Brussel_Down,AbilityCD,Plant,strikeable,PeaPlant],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:12}}]}
execute as @e[type=item,tag=SpawnBrussel] run scoreboard players remove @p Sun 125

#Summon Wallnut
execute as @a[scores={wallPt=0}] at @e[type=item,tag=SpawnWallnut] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Wallnut\"}",Tags:[Wallnut,Plant,strikeable,Nut],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:7}}]}
execute as @a[scores={wallPt=0}] if entity @e[type=item,tag=SpawnWallnut] run scoreboard players remove @p Sun 50
execute as @a[scores={wallPt=0}] if entity @e[type=item,tag=SpawnWallnut] run scoreboard players set @s wallPt 300

#Summon Pomegranade
execute at @e[type=item,tag=SpawnPomegranade] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Pomegranade\"}",Tags:[Pomegranade,Plant,Fruit,strikeable,AbilityCD],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:17}}]}
execute as @a[scores={pomePt=0}] if entity @e[type=item,tag=SpawnPomegranade] run scoreboard players set @s pomePt 600
execute as @a[scores={pomePt=0}] if entity @e[type=item,tag=SpawnPomegranade] run scoreboard players remove @p Sun 200

#Summon Pomegranade
execute at @e[type=item,tag=SpawnMuncher] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:"{\"text\":\"Muncher\"}",Tags:[Muncher,Plant,Eater,AbilityCD],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:24}}]}
execute as @a[scores={pomePt=0}] if entity @e[type=item,tag=SpawnMuncher] run scoreboard players set @s munchPt 800
execute as @a[scores={pomePt=0}] if entity @e[type=item,tag=SpawnMuncher] run scoreboard players remove @p Sun 275

#Stop players moving through plant and finish planting
execute at @e[type=item,tag=SpawnPlant] run fill ~ ~ ~ ~-1 ~ ~-1 barrier
tag @e[type=item,tag=SpawnPlant] add KillPlant
