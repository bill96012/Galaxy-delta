data modify storage galaxy:temp block set from block ~ ~ ~
execute if predicate minecraft:block_states/enabled if score @s wrenchDoFacing matches 0 run setblock ~ ~ ~ hopper[facing=south,enabled=true]
execute if predicate minecraft:block_states/enabled if score @s wrenchDoFacing matches 1 run setblock ~ ~ ~ hopper[facing=west,enabled=true]
execute if predicate minecraft:block_states/enabled if score @s wrenchDoFacing matches 2 run setblock ~ ~ ~ hopper[facing=north,enabled=true]
execute if predicate minecraft:block_states/enabled if score @s wrenchDoFacing matches 3 run setblock ~ ~ ~ hopper[facing=east,enabled=true]
execute if predicate minecraft:block_states/enabled if score @s wrenchDoFacing matches 4 run setblock ~ ~ ~ hopper[facing=down,enabled=true]
execute unless predicate minecraft:block_states/enabled if score @s wrenchDoFacing matches 0 run setblock ~ ~ ~ hopper[facing=south,enabled=false]
execute unless predicate minecraft:block_states/enabled if score @s wrenchDoFacing matches 1 run setblock ~ ~ ~ hopper[facing=west,enabled=false]
execute unless predicate minecraft:block_states/enabled if score @s wrenchDoFacing matches 2 run setblock ~ ~ ~ hopper[facing=north,enabled=false]
execute unless predicate minecraft:block_states/enabled if score @s wrenchDoFacing matches 3 run setblock ~ ~ ~ hopper[facing=east,enabled=false]
execute unless predicate minecraft:block_states/enabled if score @s wrenchDoFacing matches 4 run setblock ~ ~ ~ hopper[facing=down,enabled=false]
data modify block ~ ~ ~ {} merge from storage galaxy:temp block
