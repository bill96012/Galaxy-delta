execute if score @s statesLit matches 0 positioned ~ ~1 ~ run data merge entity @e[tag=advanced_blast_furnace_fake_block,distance=..0.25,sort=nearest,limit=1] {Tags:["advanced_blast_furnace_fake_block"],Fire:-1s,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10300,fakeBlock:1}}]}
execute if score @s statesLit matches 1 positioned ~ ~1 ~ run data merge entity @e[tag=advanced_blast_furnace_fake_block,distance=..0.25,sort=nearest,limit=1] {Tags:["advanced_blast_furnace_fake_block","illuminate"],Fire:32767s,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10301,fakeBlock:1}}]}
