execute store result score #1 calcu_temp run data get storage galaxy:temp process[{output:1b}].Count
scoreboard players add #1 calcu_temp 1
execute unless score #1 calcu_temp matches ..64 run scoreboard players set @s sucCfRcp 0
