execute store success score @s sucRTcRcp1 run execute if block ~ ~-1 ~-1 minecraft:obsidian if block ~ ~-1 ~1 minecraft:diamond_block if block ~-1 ~-1 ~ minecraft:iron_block if block ~1 ~-1 ~ minecraft:iron_block
execute if score @s sucRTcRcp1 matches 0 store success score @s sucRTcRcp1 run execute if block ~ ~-1 ~-1 minecraft:diamond_block if block ~ ~-1 ~1 minecraft:obsidian if block ~-1 ~-1 ~ minecraft:iron_block if block ~1 ~-1 ~ minecraft:iron_block
execute if score @s sucRTcRcp1 matches 0 store success score @s sucRTcRcp1 run execute if block ~ ~-1 ~-1 minecraft:iron_block if block ~ ~-1 ~1 minecraft:iron_block if block ~-1 ~-1 ~ minecraft:obsidian if block ~1 ~-1 ~ minecraft:diamond_block
execute if score @s sucRTcRcp1 matches 0 store success score @s sucRTcRcp1 run execute if block ~ ~-1 ~-1 minecraft:iron_block if block ~ ~-1 ~1 minecraft:iron_block if block ~-1 ~-1 ~ minecraft:diamond_block if block ~1 ~-1 ~ minecraft:obsidian
execute store success score @s sucRTcRcp2 run execute if block ~-1 ~-1 ~-1 minecraft:redstone_block if block ~1 ~-1 ~1 minecraft:redstone_block if block ~1 ~-1 ~-1 minecraft:lapis_block if block ~-1 ~-1 ~1 minecraft:lapis_block
execute if score @s sucRTcRcp2 matches 0 store success score @s sucRTcRcp2 run execute if block ~-1 ~-1 ~-1 minecraft:lapis_block if block ~1 ~-1 ~1 minecraft:lapis_block if block ~1 ~-1 ~-1 minecraft:redstone_block if block ~-1 ~-1 ~1 minecraft:redstone_block
execute if score @s sucRTcRcp1 matches 1 if score @s sucRTcRcp2 matches 1 run scoreboard players set @s sucRTcRcp -1
execute if score @s sucRTcRcp matches -1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:air
execute if score @s sucRTcRcp matches -1 run summon minecraft:armor_stand ~ ~-1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["hi-tech_crafting_table_placer","block_placer"],DisabledSlots:4144959}

execute if score @s sucRTcRcp matches -1 as @a[distance=..16,predicate=!galaxy:advancement/reached-hi-tech_crafting_table] run function galaxy:advancement/hi-tech_crafting_table
