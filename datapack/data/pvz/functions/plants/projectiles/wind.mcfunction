execute at @e[tag=Wind] as @e[tag=Wind,limit=1,distance=0] run teleport @s ^ ^ ^0.25
execute at @e[tag=Square9,type=area_effect_cloud] as @e[tag=Square9,type=area_effect_cloud] positioned ~ ~ ~2 run kill @e[tag=Wind,distance=..1]
execute at @e[tag=Wind,type=armor_stand] run particle smoke ~ ~ ~ 0.5 1 0.5 0 1 force
execute at @e[tag=Wind,type=armor_stand] run particle cloud ~ ~ ~ 0.5 1 0.5 0 1 force

# Zombie Push
execute at @e[tag=Wind,type=armor_stand] run tag @e[tag=!pushed,tag=Zombie,tag=!weatherman_boss,tag=!EatingZombie,tag=!chomped,tag=!Ice,tag=!Trashcan,tag=!sit,tag=!crusher,distance=..1] add pushed
execute at @e[tag=pushed,tag=Zombie] as @e[tag=pushed,tag=!hit,tag=Zombie,tag=!weatherman_boss,tag=!EatingZombie,tag=!chomped,tag=!Ice,tag=!Trashcan,tag=!sit,tag=!crusher,distance=..1] run teleport @s ~ ~ ~1
execute at @e[tag=Zombie,tag=pushed] as @e[tag=Zombie,tag=pushed] run tag @e[tag=pushed,tag=Zombie,tag=!weatherman_boss,tag=!Trashcan,tag=!Ice,tag=!EatingZombie,tag=!chomped,tag=!crusher,tag=!sit,distance=..1] add hit
execute at @e[tag=Zombie,tag=pushed] as @e[tag=Zombie,tag=pushed] run tag @e[tag=pushed,tag=Zombie,tag=!weatherman_boss,tag=!Trashcan,tag=!Ice,tag=!EatingZombie,tag=!chomped,tag=!crusher,tag=!sit,distance=..1] remove pushed



