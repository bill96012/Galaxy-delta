execute if predicate minecraft:block_states/facing-south store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 0
execute if predicate minecraft:block_states/facing-west store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 1
execute if predicate minecraft:block_states/facing-north store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 2
execute if predicate minecraft:block_states/facing-east store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 3
execute if predicate minecraft:block_states/facing-down store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 4
execute if predicate minecraft:block_states/facing-up store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 5

scoreboard players operation #2 calcu_temp = @e[tag=ThisWrenchAnchor] wrenchOriFacing

execute store result score #6 calcu_temp run scoreboard players operation #5 calcu_temp = @e[tag=ThisWrenchAnchor] sucWrenchRotate
scoreboard players add #6 calcu_temp 1
scoreboard players operation #6 calcu_temp %= #5 num

execute if score #1 calcu_temp matches 0..3 run scoreboard players add #3 calcu_temp 1
execute if score #1 calcu_temp matches 0..3 if score #3 calcu_temp matches 4.. run scoreboard players remove #3 calcu_temp 4

scoreboard players operation #4 calcu_temp = #3 calcu_temp

execute unless score #5 calcu_temp matches 0 if score #6 calcu_temp matches 0 run scoreboard players operation #3 calcu_temp = #2 calcu_temp
execute if score #2 calcu_temp = #4 calcu_temp if score #2 calcu_temp matches 0..3 run scoreboard players set #3 calcu_temp 4
execute if score #2 calcu_temp = #4 calcu_temp if score #2 calcu_temp matches 4..5 run scoreboard players set #3 calcu_temp 0

scoreboard players add @e[tag=ThisWrenchAnchor] sucWrenchRotate 1

scoreboard players operation @s wrenchDoFacing = #3 calcu_temp
