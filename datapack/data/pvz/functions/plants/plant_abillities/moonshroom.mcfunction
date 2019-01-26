### Moonshroom ###
execute at @e[type=armor_stand,tag=babyShroom,tag=!adultShroom] as @e[type=armor_stand,tag=babyShroom,tag=!adultShroom,distance=..1] run scoreboard players add @s AbilityCD 1
execute at @e[type=armor_stand,tag=babyShroom,tag=!adultShroom,scores={AbilityCD=1200..}] as @e[type=armor_stand,tag=babyShroom,tag=!adultShroom] run playsound minecraft:pvz.plants.grow_shroom master @a[distance=..16] ~ ~ ~ 0.5 1.9
### Sun Production ##
execute at @e[type=armor_stand,tag=babyShroom,scores={AbilityCD=250}] as @e[type=armor_stand,tag=babyShroom,distance=..1] run summon item ~ ~1 ~ {Motion:[0.0,0.3,0.0],PickupDelay:32767,Tags:[MiniSun,sun_item],Age:5800,Item:{id:"minecraft:iron_hoe",Count:1,Damage:1,tag:{Unbreakable:1,Damage:14,display:{Name:"{\"text\":\"Mini-Sun\"}",}}}}
execute at @e[type=armor_stand,tag=babyShroom,scores={AbilityCD=500}] as @e[type=armor_stand,tag=babyShroom,distance=..1] run summon item ~ ~1 ~ {Motion:[0.0,0.3,0.0],PickupDelay:32767,Tags:[MiniSun,sun_item],Age:5800,Item:{id:"minecraft:iron_hoe",Count:1,Damage:1,tag:{Unbreakable:1,Damage:14,display:{Name:"{\"text\":\"Mini-Sun\"}",}}}}
execute at @e[type=armor_stand,tag=babyShroom,scores={AbilityCD=750}] as @e[type=armor_stand,tag=babyShroom,distance=..1] run summon item ~ ~1 ~ {Motion:[0.0,0.3,0.0],PickupDelay:32767,Tags:[MiniSun,sun_item],Age:5800,Item:{id:"minecraft:iron_hoe",Count:1,Damage:1,tag:{Unbreakable:1,Damage:14,display:{Name:"{\"text\":\"Mini-Sun\"}",}}}}
execute at @e[type=armor_stand,tag=babyShroom,scores={AbilityCD=1000}] as @e[type=armor_stand,tag=babyShroom,distance=..1] run summon item ~ ~1 ~ {Motion:[0.0,0.3,0.0],PickupDelay:32767,Tags:[MiniSun,sun_item],Age:5800,Item:{id:"minecraft:iron_hoe",Count:1,Damage:1,tag:{Unbreakable:1,Damage:14,display:{Name:"{\"text\":\"Mini-Sun\"}",}}}}
## Sun Collection ##
execute at @e[type=item,tag=MiniSun] run effect give @e[type=armor_stand,tag=babyShroom,distance=..1] glowing 1 0

### Change ###
execute at @e[type=armor_stand,tag=babyShroom,tag=!adultShroom,scores={AbilityCD=1200..}] as @e[type=armor_stand,tag=babyShroom,tag=!adultShroom,distance=..1] run data merge entity @s {Team:"sunGlow",NoGravity:1b,Marker:1b,Tags:["Moonshroom","adultShroom","AbilityCD","Plant","Mushroom","strikeable"],Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,Damage:13}}],CustomName:"{\"text\":\"Moonshroom\"}"}
## Adult Form ##
execute at @e[type=armor_stand,tag=adultShroom,scores={AbilityCD=400..}] as @e[type=armor_stand,tag=adultShroom,distance=..1] run scoreboard players set @s AbilityCD 0
execute at @e[type=armor_stand,tag=adultShroom] as @e[type=armor_stand,tag=adultShroom,distance=..1] run scoreboard players add @s AbilityCD 1
execute at @e[type=armor_stand,tag=adultShroom,scores={AbilityCD=400..}] as @e[type=armor_stand,tag=adultShroom,distance=..1] run summon item ~ ~2 ~ {Motion:[0.0,0.3,0.0],PickupDelay:32767,Tags:[Sun,sun_item],Age:5800,Item:{id:"minecraft:iron_hoe",Count:1,Damage:1,tag:{Unbreakable:1,Damage:1,display:{Name:"{\"text\":\"Sun\"}",}}}}
execute at @e[type=item,tag=Sun] run effect give @e[type=armor_stand,tag=adultShroom,distance=..1] glowing 1 0

kill @e[type=armor_stand,tag=babyShroom,scores={PlantHealth=60..}]
kill @e[type=armor_stand,tag=adultShroom,scores={PlantHealth=60..}]
