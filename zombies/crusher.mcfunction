execute at @s if entity @e[tag=Plant,distance=..1,tag=!potato_mine] run tag @s add sit
effect give @s minecraft:invisibility 1 0 true

execute as @s[tag=crusher,tag=!sit] at @s run data merge entity @s {NoAI:1,Tags:[crusher,Zombie,MovingZombie],ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:20}}],Attributes:[{Name:generic.knockbackResistance,Base:1}],Silent:1}
execute as @s[tag=crusher,tag=!sit,scores={ZombieHealth=26..}] at @s run data merge entity @s {NoAI:1,Tags:[crusher,Zombie,MovingZombie],ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:21}}],Attributes:[{Name:generic.knockbackResistance,Base:1}],Silent:1}
execute as @s[tag=sit] run tag @s remove MovingZombie
execute as @s[tag=sit] at @s run teleport @s @e[type=armor_stand,tag=Square,sort=nearest,limit=1]
execute as @s[tag=sit] at @s run kill @e[tag=Plant,limit=1,distance=..1]
execute as @s[tag=sit] run data merge entity @s {NoAI:1,Tags:[sit,crusher,Zombie],ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:22}}],Attributes:[{Name:generic.knockbackResistance,Base:1}],Silent:1}
execute as @s[tag=sit,scores={ZombieHealth=26..}] run data merge entity @s {NoAI:1,Tags:[sit,crusher,Zombie],ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:23}}],Attributes:[{Name:generic.knockbackResistance,Base:1}],Silent:1}
## Adding a score
execute as @s[tag=sit] at @s run scoreboard players add @s AbilityCD 1
execute at @s[tag=sit,scores={AbilityCD=100..}] as @s run summon armor_stand ^ ^0.5 ^1.5 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["burp","Projectile"],DisabledSlots:31,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"48d12c73-7574-4130-8087-4125ea9e3162",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdiN2E5MzA4NmJhMzFhZWQyMzI5MzE0NTJlODQ1NDlhYmNkZmIxYjcxNTdmYTQ1ZDRjMjk1OTFlMTdmMTlkNSJ9fX0="}]}}}}]}
execute at @s[tag=sit,scores={AbilityCD=100..}] as @s run playsound minecraft:entity.player.burp master @a[distance=..16] ~ ~ ~ 10 0.8
execute at @s[tag=sit,scores={AbilityCD=100..}] as @s run scoreboard players set @s AbilityCD 0
# Health
execute at @s[scores={ZombieHealth=50..}] as @s run kill @s
# Sit Time
scoreboard players add @s[tag=sit] sitTime 1
# Stand Up
execute at @s[tag=sit,scores={sitTime=500..}] as @s run tag @s remove sit
execute at @e[scores={sitTime=500..}] as @s run scoreboard players set @s sitTime 0

## Sound Effects
execute as @s run scoreboard players add @s soundEffect 1
execute as @e[tag=crusher,scores={soundEffect=200..}] at @s run playsound minecraft:pvz.zombies.crusher.idle hostile @a[distance=..16] ~ ~ ~ .5 1
execute as @e[tag=crusher,scores={soundEffect=200..}] at @s run scoreboard players set @s soundEffect 0
execute as @e[type=zombie,tag=crusher,scores={ZombieHealth=50..}] at @s run playsound minecraft:pvz.zombies.crusher.death hostile @a[distance=..16] ~ ~ ~ 0.5 1
kill @e[type=zombie,tag=crusher,scores={ZombieHealth=50..}]

