execute at @s run tp ^ ^ ^0.25

execute store result score @s posX run data get entity @s Pos[0] 10
execute store result score @s posY run data get entity @s Pos[1] 10
execute store result score @s posZ run data get entity @s Pos[2] 10

# damage
execute if score #katana_act_stun_damage Config matches 1.. at @s run function galaxy:damage/tag/action-stun

scoreboard players remove #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1.. run tag @s add pathfindEnd

execute if entity @s[tag=pathfindEnd] run function galaxy:damage/action-stun
execute if entity @s[tag=pathfindEnd] run kill @s

# recursive
execute if entity @s[tag=!pathfindEnd] at @s run function galaxy:weapon/katana/action/stun/damage
