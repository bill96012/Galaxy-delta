scoreboard players set #1 calcu_temp 0
execute store success score #1 calcu_temp if block ^ ^ ^-1 #minecraft:overwritable run tp ^ ^ ^-1
execute unless score #1 calcu_temp matches 1 if block ~ ~ ~ #minecraft:overwritable run scoreboard players set #1 calcu_temp 1

execute unless score #1 calcu_temp matches 1 run tag @s add placeFailed
