scoreboard players add @s[tag=MapStart] waveT 1
scoreboard players add @s[tag=MapStart] counter 1

execute if entity @e[type=zombie] run scoreboard players set @e[tag=MapStart] zombieCount 100

scoreboard players remove @s[scores={zombieCount=1..}] zombieCount 1

##Set structure block for data meges to work
execute at @e[tag=levelMaster] unless block ~ ~1 ~ structure_block run setblock ~ ~-1 ~ structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"GuineaPvP",rotation:"NONE",posX:1,mode:"LOAD",posY:3,sizeX:10,posZ:3,integrity:1.0f,showair:0b,x:138,name:"",y:40,z:807,id:"minecraft:structure_block",sizeY:2,sizeZ:2,showboundingbox:0b}

#Level 1 Wave 1
execute if entity @s[tag=MapStart,tag=lvl1,scores={waveT=429..430}] as @a run bossbar set boss:wave_bar max 6
execute if entity @s[tag=MapStart,tag=lvl1,scores={waveT=..429}] as @a run bossbar set boss:wave_bar visible false
execute if entity @s[tag=MapStart,tag=lvl1,scores={waveT=429..430}] as @a run bossbar set boss:wave_bar name "Wave"
execute if entity @s[tag=MapStart,tag=lvl1,scores={waveT=429..430}] as @a run bossbar set boss:wave_bar color red
execute if entity @s[tag=MapStart,tag=lvl1,scores={waveT=429..430}] as @a run bossbar set boss:wave_bar visible true
execute if entity @s[tag=MapStart,tag=lvl1,scores={waveT=429}] run title @a actionbar ["",{"text":"The Zombies are Coming!","color":"dark_red"}]
tag @s[tag=MapStart,scores={waveT=430},tag=lvl1] add lvl1w1

execute at @s[tag=lvl1w1] run scoreboard players set @s wavebar 5
execute at @s[tag=lvl1w1] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
execute at @s[tag=lvl1w1] run data merge block ~ ~-1 ~ {name:"pvz:lvl1_w1",showboundingbox:0b}
execute at @s[tag=lvl1w1] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl1w1] run setblock ~ ~ ~ air
tag @s[tag=lvl1w1] remove lvl1w1


#Level 1 Wave 2
tag @s[tag=lvl1,tag=MapStart,scores={waveT=900..900}] add lvl1w2
execute at @s[tag=lvl1w2] run scoreboard players remove @s wavebar 1
execute at @s[tag=lvl1w2] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
execute at @s[tag=lvl1w2] run data merge block ~ ~-1 ~ {name:"pvz:lvl1_w2",showboundingbox:0b}
execute at @s[tag=lvl1w2] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl1w2] run setblock ~ ~ ~ air
tag @s[tag=lvl1w2] remove lvl1w2


#Level 1 Wave 3
tag @s[tag=lvl1,tag=MapStart,scores={waveT=1400..1400}] add lvl1w3
execute at @s[tag=lvl1w3] run scoreboard players remove @s wavebar 1
execute at @s[tag=lvl1w3] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
execute at @s[tag=lvl1w3] run data merge block ~ ~-1 ~ {name:"pvz:lvl1_w3",posX:1,posY:3,posZ:-1,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute at @s[tag=lvl1w3] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl1w3] run setblock ~ ~ ~ air
tag @s[tag=lvl1w3] remove lvl1w3


#Level 1 Wave 4
tag @s[tag=lvl1,tag=MapStart,scores={waveT=1900..1900}] add lvl1w4
execute at @s[tag=lvl1w4] run scoreboard players remove @s wavebar 1
execute at @s[tag=lvl1w4] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
execute at @s[tag=lvl1w4] run data merge block ~ ~-1 ~ {name:"pvz:lvl1_w4",posX:1,posY:3,posZ:-1,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute at @s[tag=lvl1w4] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl1w4] run setblock ~ ~ ~ air
tag @s[tag=lvl1w4] remove lvl1w4


#Level 1 Wave 5
tag @s[tag=lvl1,tag=MapStart,scores={waveT=2300..2300}] add lvl1w5
execute at @s[tag=lvl1w5] run scoreboard players remove @s wavebar 1
execute at @s[tag=lvl1w5] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar 
execute at @s[tag=lvl1w5] run data merge block ~ ~-1 ~ {name:"pvz:lvl1_w5",posX:1,posY:3,posZ:-3,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute at @s[tag=lvl1w5] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl1w5] run setblock ~ ~ ~ air
tag @s[tag=lvl1w5] remove lvl1w5

#Level 1 Wave 6
tag @s[tag=lvl1,tag=MapStart,scores={waveT=2800..2800}] add lvl1w6
# Setup Final Wave
execute at @s[tag=lvl1w6] run scoreboard players set @s wavebar 1
execute at @s[tag=lvl1w6] as @a run bossbar set boss:wave_bar name "Final Wave"
execute at @s[tag=lvl1w6] as @a run bossbar set boss:wave_bar color white
execute at @s[tag=lvl1w6] as @a run bossbar set boss:wave_bar max 1
execute at @s[tag=lvl1w6] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar


execute at @s[tag=lvl1w6] run data merge block ~ ~-1 ~ {name:"pvz:lvl1_w6",posX:1,posY:3,posZ:-3,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute at @s[tag=lvl1w6] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl1w6] run setblock ~ ~ ~ air
tag @s[tag=lvl1w6] remove lvl1w6


##Setup for Level 2
tag @s[tag=lvl1,scores={zombieCount=1,waveT=2101..}] remove MapStart
scoreboard players set @s[tag=lvl1,scores={zombieCount=1,waveT=2101..}] zombieCount 0
scoreboard players set @s[tag=lvl1,scores={zombieCount=0,waveT=2101..}] waveT 0
tag @s[tag=lvl1w6] remove lvl1w6



#Level 3 Wave 1
tag @s[tag=lvl2,tag=lvl3] remove lvl2 
execute if entity @s[tag=MapStart,tag=lvl3,scores={waveT=799..800}] as @a run bossbar set boss:wave_bar max 5
execute if entity @s[tag=MapStart,tag=lvl3,scores={waveT=..799}] as @a run bossbar set boss:wave_bar visible false
execute if entity @s[tag=MapStart,tag=lvl3,scores={waveT=799..800}] as @a run bossbar set boss:wave_bar name "Wave"
execute if entity @s[tag=MapStart,tag=lvl3,scores={waveT=799..800}] as @a run bossbar set boss:wave_bar color red
execute if entity @s[tag=MapStart,tag=lvl3,scores={waveT=799..800}] as @a run bossbar set boss:wave_bar visible true
execute if entity @s[tag=MapStart,tag=lvl3,scores={waveT=799}] run title @a actionbar ["",{"text":"The Zombies are Coming!","color":"dark_red"}]
tag @s[tag=MapStart,scores={waveT=800},tag=lvl3] add lvl3w1

execute at @s[tag=lvl3w1] run scoreboard players set @s wavebar 4
execute at @s[tag=lvl3w1] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
execute at @s[tag=lvl3w1] run data merge block ~ ~-1 ~ {name:"pvz:lvl3_w1",showboundingbox:0b,posX:1,posY:3,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute at @s[tag=lvl3w1] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl3w1] run setblock ~ ~ ~ air
tag @s[tag=lvl3w1] remove lvl3w1

#Level 3 Wave 2
tag @s[tag=lvl3,tag=MapStart,scores={waveT=1600..1600}] add lvl3w2
execute at @s[tag=lvl3w2] run scoreboard players set @s wavebar 3
execute at @s[tag=lvl3w2] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
execute at @s[tag=lvl3w2] run data merge block ~ ~-1 ~ {name:"pvz:lvl3_w2",showboundingbox:0b,posX:1,posY:3,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute at @s[tag=lvl3w2] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl3w2] run setblock ~ ~ ~ air
tag @s[tag=lvl3w2] remove lvl3w2

#Level 3 Wave 3
tag @s[tag=lvl3,tag=MapStart,scores={waveT=2400..2400}] add lvl3w3
execute at @s[tag=lvl3w3] run scoreboard players set @s wavebar 2
execute at @s[tag=lvl3w3] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
execute at @s[tag=lvl3w3] run data merge block ~ ~-1 ~ {name:"pvz:lvl3_w3",showboundingbox:0b,posX:1,posY:3,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute at @s[tag=lvl3w3] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl3w3] run setblock ~ ~ ~ air
tag @s[tag=lvl3w3] remove lvl3w3

#Level 3 Wave 4
tag @s[tag=lvl3,tag=MapStart,scores={waveT=3200..3200}] add lvl3w4
execute at @s[tag=lvl3w4] run scoreboard players set @s wavebar 1
execute at @s[tag=lvl3w4] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
execute at @s[tag=lvl3w4] run data merge block ~ ~-1 ~ {name:"pvz:lvl3_w4",showboundingbox:0b,posX:1,posY:3,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute at @s[tag=lvl3w4] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl3w4] run setblock ~ ~ ~ air
tag @s[tag=lvl3w4] remove lvl3w4

#Level 3 Wave 5
tag @s[tag=lvl3,tag=MapStart,scores={waveT=4000..4000}] add lvl3w5

# Set up Final wave
execute at @s[tag=lvl3w5] run scoreboard players set @s wavebar 1
execute at @s[tag=lvl3w5] as @a run bossbar set boss:wave_bar name "Final Wave"
execute at @s[tag=lvl3w5] as @a run bossbar set boss:wave_bar color white
execute at @s[tag=lvl3w5] as @a run bossbar set boss:wave_bar max 1
execute at @s[tag=lvl3w5] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
execute at @s[tag=lvl3w5] run scoreboard players set @s wavebar 1
execute at @s[tag=lvl3w5] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
# Block Stuff
execute at @s[tag=lvl3w5] run data merge block ~ ~-1 ~ {name:"pvz:lvl3_w4",showboundingbox:0b,posX:1,posY:3,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute at @s[tag=lvl3w5] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl3w5] run setblock ~ ~ ~ air
tag @s[tag=lvl3w5] remove lvl3w5

##Setup for Level 4
tag @s[tag=lvl3,scores={zombieCount=1,waveT=4000..}] remove MapStart
scoreboard players set @s[tag=lvl3,scores={zombieCount=1,waveT=4000..}] zombieCount 0
scoreboard players set @s[tag=lvl3,scores={zombieCount=0,waveT=4000..}] waveT 0

#Level 3 Wave 1
tag @s[tag=lvl3,tag=lvl4] remove lvl3 
execute if entity @s[tag=MapStart,tag=lvl4,scores={waveT=799..800}] as @a run bossbar set boss:wave_bar max 5
execute if entity @s[tag=MapStart,tag=lvl4,scores={waveT=..799}] as @a run bossbar set boss:wave_bar visible false
execute if entity @s[tag=MapStart,tag=lvl4,scores={waveT=799..800}] as @a run bossbar set boss:wave_bar name "Wave"
execute if entity @s[tag=MapStart,tag=lvl4,scores={waveT=799..800}] as @a run bossbar set boss:wave_bar color red
execute if entity @s[tag=MapStart,tag=lvl4,scores={waveT=799..800}] as @a run bossbar set boss:wave_bar visible true
execute if entity @s[tag=MapStart,tag=lvl4,scores={waveT=799}] run title @a actionbar ["",{"text":"The Zombies are Coming!","color":"dark_red"}]
tag @s[tag=MapStart,scores={waveT=800},tag=lvl4] add lvl4w1

execute at @s[tag=lvl4w1] run scoreboard players set @s wavebar 4
execute at @s[tag=lvl4w1] run execute store result bossbar boss:wave_bar value run scoreboard players get @e[tag=levelMaster,limit=1] wavebar
execute at @s[tag=lvl4w1] run data merge block ~ ~-1 ~ {name:"pvz:lvl4_w1",showboundingbox:0b,posX:1,posY:3,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute at @s[tag=lvl4w1] run setblock ~ ~ ~ redstone_block
execute at @s[tag=lvl4w1] run setblock ~ ~ ~ air
tag @s[tag=lvl4w1] remove lvl4w1








