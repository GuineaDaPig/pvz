# Announce Heat
execute at @a[tag=heatwave] as @a[tag=heatwave] run title @p actionbar ["",{"text":"It is to hot to place plants!","color":"dark_red"}]
# Add cooldown
execute as @a[tag=heatwave] run scoreboard players add @s counter 1
# Remove Tag
execute as @a[tag=heatwave,scores={counter=300..}] run tag @s remove heatwave
# Reset
execute as @a[scores={counter=300..}] run scoreboard players set @s counter 0
