#Reset Values
bossbar set boss:wave_bar name "Wave"
bossbar set boss:wave_bar color red
scoreboard players set @e[tag=levelMaster] waveT 0
scoreboard players set @a[limit=1] Sun 50
#Complete
execute at @e[tag=setupBlock] run setblock ~ ~1 ~ redstone_block
execute at @e[tag=setupBlock] run setblock ~ ~1 ~ air
tag @e[tag=levelMaster] add MapStart
execute as @a[limit=1] run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 2 1.5

