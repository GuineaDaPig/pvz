tag @a[tag=!sunFlower,nbt={SelectedItem:{tag:{sunF:1b}}}] add sunFlower
execute at @a if entity @e[tag=SpawnPlant,tag=SpawnSunflower,tag=KillPlant,type=item] run title @a actionbar ["",{"text":"{{ ","color":"white"},{"text":"- 50 Sun","color":"red"},{"text":" }}","color":"white"}]
tag @a[tag=sunFlower] remove sunFlower

tag @a[tag=!peaShooter,nbt={SelectedItem:{tag:{pea:1b}}}] add peaShooter
execute at @a if entity @e[tag=SpawnPlant,tag=SpawnPeashooter,tag=KillPlant,type=item] run title @a actionbar ["",{"text":"{{ ","color":"white"},{"text":"- 100 Sun","color":"red"},{"text":" }}","color":"white"}]
execute at @a[scores={peaPt=1..80},tag=peaShooter] run title @a actionbar ["",{"text":"{{ ","color":"dark_blue"},{"score":{"name":"@s","objective":"peaPt"},"color":"aqua"},{"text":" Ticks Until Use","color":"white"},{"text":" }}","color":"dark_blue"}]
execute at @a[scores={peaPt=1},tag=peaShooter] run title @a actionbar ["",{"text":"{{ ","color":"white"},{"text":"Ready","color":"dark_green"},{"text":" }}","color":"white"}]
tag @a[tag=peaShooter] remove peaShooter

tag @a[tag=!wallNut,nbt={SelectedItem:{tag:{wall:1b}}}] add wallNut
execute at @a if entity @e[tag=SpawnPlant,tag=SpawnWallnut,tag=KillPlant,type=item] run title @a actionbar ["",{"text":"{{ ","color":"white"},{"text":"- 50 Sun","color":"red"},{"text":" }}","color":"white"}]
execute at @a[scores={wallPt=1..280},tag=wallNut] run title @a actionbar ["",{"text":"{{ ","color":"dark_blue"},{"score":{"name":"@s","objective":"wallPt"},"color":"aqua"},{"text":" Ticks Until Use","color":"white"},{"text":" }}","color":"dark_blue"}]
execute at @a[scores={wallPt=1},tag=wallNut] run title @a actionbar ["",{"text":"{{ ","color":"white"},{"text":"Ready","color":"dark_green"},{"text":" }}","color":"white"}]
tag @a[tag=wallNut] remove wallNut

tag @a[tag=!pomegranade,nbt={SelectedItem:{tag:{pome:1b}}}] add pomegranade
execute at @a if entity @e[tag=SpawnPlant,tag=SpawnPomegranade,tag=KillPlant,type=item] run title @a actionbar ["",{"text":"{{ ","color":"white"},{"text":"- 300 Sun","color":"red"},{"text":" }}","color":"white"}]
execute at @a[scores={pomePt=1..580},tag=pomegranade] run title @a actionbar ["",{"text":"{{ ","color":"dark_blue"},{"score":{"name":"@s","objective":"pomePt"},"color":"aqua"},{"text":" Ticks Until Use","color":"white"},{"text":" }}","color":"dark_blue"}]
execute at @a[scores={pomePt=1},tag=pomegranade] run title @a actionbar ["",{"text":"{{ ","color":"white"},{"text":"Ready","color":"dark_green"},{"text":" }}","color":"white"}]
tag @a[tag=pomegranade] remove pomegranade

tag @a[tag=!brusselScout,nbt={SelectedItem:{tag:{brussel:1b}}}] add brusselScout
execute at @a if entity @e[tag=SpawnPlant,tag=SpawnBrussel,tag=KillPlant,type=item] run title @a actionbar ["",{"text":"{{ ","color":"white"},{"text":"- 175 Sun","color":"red"},{"text":" }}","color":"white"}]
tag @a[tag=brusselScout] remove brusselScout

tag @a[tag=!muncher,nbt={SelectedItem:{tag:{muncher:1b}}}] add muncher
execute at @a if entity @e[tag=SpawnPlant,tag=SpawnMuncher,tag=KillPlant,type=item] run title @a actionbar ["",{"text":"{{ ","color":"white"},{"text":"- 275 Sun","color":"red"},{"text":" }}","color":"white"}]
execute at @a[scores={munchPt=1..780},tag=muncher] run title @a actionbar ["",{"text":"{{ ","color":"dark_blue"},{"score":{"name":"@s","objective":"munchPt"},"color":"aqua"},{"text":" Ticks Until Use","color":"white"},{"text":" }}","color":"dark_blue"}]
execute at @a[scores={munchPt=1},tag=muncher] run title @a actionbar ["",{"text":"{{ ","color":"white"},{"text":"Ready","color":"dark_green"},{"text":" }}","color":"white"}]
tag @a[tag=muncher] remove muncher
