execute if score @s workStatus matches 0 run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["coke_furnace","fake_block_changer","status_0"]}
execute if score @s workStatus matches 1 run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["coke_furnace","fake_block_changer","status_1"]}
execute as @e[tag=fake_block_changer,tag=status_0] at @s run data merge entity @e[tag=coke_furnace_fake_block,distance=..0.25,sort=nearest,limit=1] {Tags:["coke_furnace_fake_block"],Fire:-1s,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10200,fakeBlock:1,advancedBlastFurnace:1}}]}
execute as @e[tag=fake_block_changer,tag=status_1] at @s run data merge entity @e[tag=coke_furnace_fake_block,distance=..0.25,sort=nearest,limit=1] {Tags:["coke_furnace_fake_block","illuminate"],Fire:32767s,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10201,fakeBlock:1,advancedBlastFurnace:1}}]}
execute as @e[tag=fake_block_changer] run kill @s