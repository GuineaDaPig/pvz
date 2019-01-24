##Pomegranade
#Scores
execute at @e[type=armor_stand,tag=Pomegranade] as @e[type=armor_stand,tag=Pomegranade,distance=..1] run scoreboard players add @s AbilityCD 1
execute at @e[type=armor_stand,tag=Pomegranade,scores={AbilityCD=601..}] as @e[type=armor_stand,tag=Pomegranade,distance=..1] run scoreboard players remove @s AbilityCD 1
execute as @e[type=armor_stand,tag=Pomegranade,tag=!prime,tag=!justPlanted,scores={AbilityCD=..200}] run data merge entity @s {ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:27}}]}
execute as @e[type=armor_stand,tag=Pomegranade,tag=!prime,tag=!justPlanted,scores={AbilityCD=201..400}] run data merge entity @s {ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:28}}]}
execute as @e[type=armor_stand,tag=Pomegranade,tag=!prime,tag=!justPlanted,scores={AbilityCD=401..499}] run data merge entity @s {ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:29}}]}
execute as @e[type=armor_stand,tag=Pomegranade,tag=!prime,tag=!justPlanted,scores={AbilityCD=599..}] run data merge entity @s {ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:30}}]}
#Explode
execute at @e[type=armor_stand,tag=Pomegranade,scores={AbilityCD=600..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,scores={AbilityCD=600..},distance=..1] run tag @s add prime
execute at @e[type=armor_stand,tag=Pomegranade,tag=justPlanted] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=justPlanted,distance=..1] run tag @s add prime
execute at @e[type=armor_stand,tag=Pomegranade,scores={AbilityCD=600..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,scores={AbilityCD=600..},distance=..1] run tag @s add reset
execute at @e[type=armor_stand,tag=Pomegranade,tag=justPlanted] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=justPlanted,distance=..1] run tag @s add reset
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime,tag=reset] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=justPlanted,tag=reset,distance=..1] run tag @s remove justPlanted
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime] as @e[type=armor_stand,tag=Pomegranade,tag=reset,distance=..1] run scoreboard players set @s AbilityCD 0
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=reset,distance=..1] run playsound minecraft:pvz.plants.pomegranade_charge master @a[distance=..16] ~ ~ ~
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime] as @e[type=armor_stand,tag=Pomegranade,tag=reset,distance=..1] run tag @s remove reset
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..},distance=..1] run playsound minecraft:pvz.plants.pomegranade_kaboom master @a[distance=..16] ~ ~ ~
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..},distance=..1] run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 1 force
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..},distance=..1] run scoreboard players add @e[type=zombie,distance=..4] ZombieHealth 30
#Summon Seeds
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..},distance=..1] run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Pomegranade Seed\"}",Tags:[PomegranadeSeed,Projectile],NoGravity:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:31}}]}
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..},distance=..1] run summon armor_stand ~ ~ ~-1 {CustomName:"{\"text\":\"Pomegranade Seed\"}",Tags:[PomegranadeSeed,Projectile],NoGravity:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:31}}]}
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..},distance=..1] run summon armor_stand ~2 ~ ~ {CustomName:"{\"text\":\"Pomegranade Seed\"}",Tags:[PomegranadeSeed,Projectile],NoGravity:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:31}}]}
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..},distance=..1] run summon armor_stand ~-2 ~ ~ {CustomName:"{\"text\":\"Pomegranade Seed\"}",Tags:[PomegranadeSeed,Projectile],NoGravity:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:iron_hoe,Count:1,tag:{Unbreakable:1,Damage:31}}]}
#Reset
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..},distance=..1] run tag @s remove prime
execute at @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..}] if entity @e[type=zombie,dx=0,dy=0,dz=-2,limit=1] as @e[type=armor_stand,tag=Pomegranade,tag=prime,scores={AbilityCD=28..},distance=..1] run scoreboard players set @s AbilityCD 0

# Death
execute at @e[type=armor_stand,tag=Pomegranade,scores={PlantHealth=40..}] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
kill @e[type=armor_stand,tag=Pomegranade,scores={PlantHealth=40..}]