execute if predicate minecraft:block_states/facing-south store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 0
execute if predicate minecraft:block_states/facing-west store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 1
execute if predicate minecraft:block_states/facing-north store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 2
execute if predicate minecraft:block_states/facing-east store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 3

scoreboard players add #3 calcu_temp 1
execute if score #3 calcu_temp matches 4.. run scoreboard players remove #3 calcu_temp 4

scoreboard players add @e[tag=ThisWrenchAnchor] sucWrenchRotate 1

scoreboard players operation @s wrenchDoFacing = #3 calcu_temp
