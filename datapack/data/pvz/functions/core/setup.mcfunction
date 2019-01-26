###################################################################################################################################################################################################
# Description: This function should be executed in the command block near the test area. Its used incase some squares need to be updated for certain functions (Movable Minecarts, Power Tiles etc)
###################################################################################################################################################################################################


kill @e[type=zombie]
execute at @e[type=armor_stand,tag=Plant] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
execute at @e[type=area_effect_cloud,tag=Square] run fill ~ ~ ~ ~-1 ~ ~-1 air replace barrier
kill @e[type=armor_stand,tag=Plant]
kill @e[type=armor_stand,tag=Lawnmower]
kill @e[type=area_effect_cloud,tag=Square]
kill @e[type=area_effect_cloud,tag=LaneEnd]
kill @e[type=area_effect_cloud,tag=MotherArmorStand]
kill @e[type=area_effect_cloud,tag=setupBlock]
kill @e[type=area_effect_cloud,tag=levelMaster]

summon area_effect_cloud ~ ~0.5 ~ {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Mother Armor Stand\"}",Tags:[MotherArmorStand]}
summon area_effect_cloud ~ ~-2.5 ~ {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"setupBlock\"}",Tags:[setupBlock]}
summon area_effect_cloud ~0.5 ~0.5 ~1.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Offmap End\"}",Tags:[LaneEnd,NotOnLane]}
summon area_effect_cloud ~-11.5 ~0.5 ~1.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Offmap End\"}",Tags:[LaneEnd,NotOnLane]}
summon area_effect_cloud ~-11 ~-1 ~ {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Level Controler\"}",Tags:[levelMaster]}

summon area_effect_cloud ~-1.5 ~0.5 ~1.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 1 End\"}",Tags:[LaneEnd]}
summon area_effect_cloud ~-1.5 ~0.5 ~3.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 1 Square 1\"}",Tags:[Lane1,Square1,Square]}
summon area_effect_cloud ~-1.5 ~0.5 ~5.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 1 Square 2\"}",Tags:[Lane1,Square2,Square]}
summon area_effect_cloud ~-1.5 ~0.5 ~7.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 1 Square 3\"}",Tags:[Lane1,Square3,Square]}
summon area_effect_cloud ~-1.5 ~0.5 ~9.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 1 Square 4\"}",Tags:[Lane1,Square4,Square]}
summon area_effect_cloud ~-1.5 ~0.5 ~11.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 1 Square 5\"}",Tags:[Lane1,Square5,Square]}
summon area_effect_cloud ~-1.5 ~0.5 ~13.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 1 Square 6\"}",Tags:[Lane1,Square6,Square]}
summon area_effect_cloud ~-1.5 ~0.5 ~15.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 1 Square 7\"}",Tags:[Lane1,Square7,Square]}
summon area_effect_cloud ~-1.5 ~0.5 ~17.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 1 Square 8\"}",Tags:[Lane1,Square8,Square]}
summon area_effect_cloud ~-1.5 ~0.5 ~19.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 1 Square 9\"}",Tags:[Lane1,Square9,Square]}
summon armor_stand ~-1.5 ~0.5 ~21.5 {NoGravity:1,Invisible:1,Marker:1,CustomName:"{\"text\":\"Lane 1 Lawnmower\"}",Tags:[Lawnmower],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:34}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,180f,0f]}}

summon area_effect_cloud ~-3.5 ~0.5 ~1.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 2 End\"}",Tags:[LaneEnd]}
summon area_effect_cloud ~-3.5 ~0.5 ~3.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 2 Square 1\"}",Tags:[Lane2,Square1,Square]}
summon area_effect_cloud ~-3.5 ~0.5 ~5.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 2 Square 2\"}",Tags:[Lane2,Square2,Square]}
summon area_effect_cloud ~-3.5 ~0.5 ~7.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 2 Square 3\"}",Tags:[Lane2,Square3,Square]}
summon area_effect_cloud ~-3.5 ~0.5 ~9.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 2 Square 4\"}",Tags:[Lane2,Square4,Square]}
summon area_effect_cloud ~-3.5 ~0.5 ~11.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 2 Square 5\"}",Tags:[Lane2,Square5,Square]}
summon area_effect_cloud ~-3.5 ~0.5 ~13.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 2 Square 6\"}",Tags:[Lane2,Square6,Square]}
summon area_effect_cloud ~-3.5 ~0.5 ~15.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 2 Square 7\"}",Tags:[Lane2,Square7,Square]}
summon area_effect_cloud ~-3.5 ~0.5 ~17.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 2 Square 8\"}",Tags:[Lane2,Square8,Square]}
summon area_effect_cloud ~-3.5 ~0.5 ~19.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 2 Square 9\"}",Tags:[Lane2,Square9,Square]}
summon armor_stand ~-3.5 ~0.5 ~21.5 {NoGravity:1,Invisible:1,Marker:1,CustomName:"{\"text\":\"Lane 2 Lawnmower\"}",Tags:[Lawnmower],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:34}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,180f,0f]}}

summon area_effect_cloud ~-5.5 ~0.5 ~1.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 3 End\"}",Tags:[LaneEnd]}
summon area_effect_cloud ~-5.5 ~0.5 ~3.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 3 Square 1\"}",Tags:[Lane3,Square1,Square]}
summon area_effect_cloud ~-5.5 ~0.5 ~5.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 3 Square 2\"}",Tags:[Lane3,Square2,Square]}
summon area_effect_cloud ~-5.5 ~0.5 ~7.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 3 Square 3\"}",Tags:[Lane3,Square3,Square]}
summon area_effect_cloud ~-5.5 ~0.5 ~9.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 3 Square 4\"}",Tags:[Lane3,Square4,Square]}
summon area_effect_cloud ~-5.5 ~0.5 ~11.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 3 Square 5\"}",Tags:[Lane3,Square5,Square]}
summon area_effect_cloud ~-5.5 ~0.5 ~13.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 3 Square 6\"}",Tags:[Lane3,Square6,Square]}
summon area_effect_cloud ~-5.5 ~0.5 ~15.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 3 Square 7\"}",Tags:[Lane3,Square7,Square]}
summon area_effect_cloud ~-5.5 ~0.5 ~17.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 3 Square 8\"}",Tags:[Lane3,Square8,Square]}
summon area_effect_cloud ~-5.5 ~0.5 ~19.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 3 Square 9\"}",Tags:[Lane3,Square9,Square]}
summon armor_stand ~-5.5 ~0.5 ~21.5 {NoGravity:1,Invisible:1,Marker:1,CustomName:"{\"text\":\"Lane 3 Lawnmower\"}",Tags:[Lawnmower],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:34}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,180f,0f]}}

summon area_effect_cloud ~-7.5 ~0.5 ~1.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 4 End\"}",Tags:[LaneEnd]}
summon area_effect_cloud ~-7.5 ~0.5 ~3.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 4 Square 1\"}",Tags:[Lane4,Square1,Square]}
summon area_effect_cloud ~-7.5 ~0.5 ~5.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 4 Square 2\"}",Tags:[Lane4,Square2,Square]}
summon area_effect_cloud ~-7.5 ~0.5 ~7.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 4 Square 3\"}",Tags:[Lane4,Square3,Square]}
summon area_effect_cloud ~-7.5 ~0.5 ~9.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 4 Square 4\"}",Tags:[Lane4,Square4,Square]}
summon area_effect_cloud ~-7.5 ~0.5 ~11.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 4 Square 5\"}",Tags:[Lane4,Square5,Square]}
summon area_effect_cloud ~-7.5 ~0.5 ~13.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 4 Square 6\"}",Tags:[Lane4,Square6,Square]}
summon area_effect_cloud ~-7.5 ~0.5 ~15.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 4 Square 7\"}",Tags:[Lane4,Square7,Square]}
summon area_effect_cloud ~-7.5 ~0.5 ~17.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 4 Square 8\"}",Tags:[Lane4,Square8,Square]}
summon area_effect_cloud ~-7.5 ~0.5 ~19.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 4 Square 9\"}",Tags:[Lane4,Square9,Square]}
summon armor_stand ~-7.5 ~0.5 ~21.5 {NoGravity:1,Invisible:1,Marker:1,CustomName:"{\"text\":\"Lane 4 Lawnmower\"}",Tags:[Lawnmower],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:34}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,180f,0f]}}

summon area_effect_cloud ~-9.5 ~0.5 ~1.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 5 End\"}",Tags:[LaneEnd]}
summon area_effect_cloud ~-9.5 ~0.5 ~3.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 5 Square 1\"}",Tags:[Lane5,Square1,Square]}
summon area_effect_cloud ~-9.5 ~0.5 ~5.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 5 Square 2\"}",Tags:[Lane5,Square2,Square]}
summon area_effect_cloud ~-9.5 ~0.5 ~7.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 5 Square 3\"}",Tags:[Lane5,Square3,Square]}
summon area_effect_cloud ~-9.5 ~0.5 ~9.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 5 Square 4\"}",Tags:[Lane5,Square4,Square]}
summon area_effect_cloud ~-9.5 ~0.5 ~11.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 5 Square 5\"}",Tags:[Lane5,Square5,Square]}
summon area_effect_cloud ~-9.5 ~0.5 ~13.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 5 Square 6\"}",Tags:[Lane5,Square6,Square]}
summon area_effect_cloud ~-9.5 ~0.5 ~15.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 5 Square 7\"}",Tags:[Lane5,Square7,Square]}
summon area_effect_cloud ~-9.5 ~0.5 ~17.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 5 Square 8\"}",Tags:[Lane5,Square8,Square]}
summon area_effect_cloud ~-9.5 ~0.5 ~19.5 {NoGravity:1b,Particle:"fishing",Duration:2147483647,Age:-2147483648,CustomName:"{\"text\":\"Lane 5 Square 9\"}",Tags:[Lane5,Square9,Square]}
summon armor_stand ~-9.5 ~0.5 ~21.5 {NoGravity:1,Invisible:1,Marker:1,CustomName:"{\"text\":\"Lane 5 Lawnmower\"}",Tags:[Lawnmower],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:34}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,180f,0f]}}