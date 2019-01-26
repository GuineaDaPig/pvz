execute at @e[type=zombie,tag=TrashcanZombie] as @s run tag @e[type=armor_stand,tag=!Ice,tag=Plant,limit=1,distance=..1] add SpawnTrashcan
execute at @e[type=armor_stand,tag=SpawnTrashcan] as @s run data merge entity @e[type=zombie,tag=TrashcanZombie,limit=1,distance=..1] {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["BasicZombie","Zombie","UsedToBeTrash"],HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,Damage:1}}]}
execute at @e[tag=TrashcanZombie,scores={ZombieHealth=50..}] as @s run data merge entity @s {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["BasicZombie","Zombie","UsedToBeTrash"],HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,Damage:1}}]}
execute at @e[tag=UsedToBeTrash,scores={ZombieHealth=10..}] as @s run scoreboard players set @s ZombieHealth 0
execute as @e[type=armor_stand,tag=SpawnTrashcan] at @s run playsound block.grass.break block @a[distance=..1] ~ ~ ~ 2 1.75
execute as @e[type=armor_stand,tag=SpawnTrashcan] at @s run summon zombie ~ ~ ~ {NoAI:1,Tags:[Trashcan],ArmorItems:[{},{},{},{id:diamond_hoe,Count:1,tag:{Unbreakable:1,Damage:13}}],Attributes:[{Name:generic.knockbackResistance,Base:1}],ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}],Silent:1}
kill @e[type=armor_stand,tag=SpawnTrashcan]
kill @e[tag=Trashcan,scores={ZombieHealth=20..}]

## Sound Effects
execute as @s run scoreboard players add @s soundEffect 1
execute as @e[tag=TrashcanZombie,scores={soundEffect=200..}] at @s run playsound minecraft:pvz.zombies.generic.idle hostile @a[distance=..16] ~ ~ ~ .5 1
execute as @e[tag=TrashcanZombie,scores={soundEffect=200..}] at @s run scoreboard players set @s soundEffect 0
