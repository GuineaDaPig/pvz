#* Resets Scores *#
execute as @a run scoreboard players set @s SUse 0
execute as @a run scoreboard players set @s PSUse 0
execute as @a run scoreboard players set @s WNUse 0
execute as @a run scoreboard players set @s PGUse 0
execute as @a run scoreboard players set @s MUse 0
execute as @a run scoreboard players set @s MSUse 0
execute as @a run scoreboard players set @s BSUse 0
execute as @a run scoreboard players set @s MAUse 0
execute as @a run scoreboard players set @s LUse 0
execute as @a run scoreboard players set @s LLUse 0
execute as @a run scoreboard players set @s PMUse 0
execute as @a run scoreboard players set @s GPSUse 0
execute as @a run scoreboard players set @s PIUse 0
execute as @a run scoreboard players set @s DUse 0
#* Resets Sun *#
execute as @a run scoreboard players set @s Sun 0

## Add Esential Scoreboards
#For the Player
scoreboard objectives add Sun dummy
scoreboard objectives add SUse dummy
scoreboard objectives add PSUse dummy
scoreboard objectives add WNUse dummy
scoreboard objectives add PGUse dummy
scoreboard objectives add MUse dummy
scoreboard objectives add MSUse dummy
scoreboard objectives add BSUse dummy
scoreboard objectives add MAUse dummy
scoreboard objectives add LUse dummy
scoreboard objectives add LLUse dummy
scoreboard objectives add PMUse dummy
scoreboard objectives add GPSUse dummy
scoreboard objectives add PIUse dummy 
scoreboard objectives add DUse dummy 
#For Plants
scoreboard objectives add AbilityCD dummy
scoreboard objectives add PlantHealth dummy
scoreboard objectives add counter dummy
#For Zombies
scoreboard objectives add sitTime dummy
scoreboard objectives add soundEffect dummy
scoreboard objectives add ZombieHealth dummy
# Levels
scoreboard objectives add waveT dummy
scoreboard objectives add zombieCount dummy
scoreboard objectives add wavebar dummy

##Adds Teams
team add sunGlow
team modify sunGlow color gold
team add shroomGlow 
team modify shroomGlow color dark_purple

#* Adds Random *#
function pvz:random/init

