function galaxy:recipe/coke_furnace/get-item
function galaxy:block/coke_furnace/work/processor1/data_get-io

execute store result score #1 calcu_temp run data get storage galaxy:get item[{input:1b}].Count 1
execute store result score #2 calcu_temp run data get storage galaxy:get recipe[0].input.Count 1
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players operation #1 calcu_temp -= #2 calcu_temp

execute store result score #1 calcu_temp run data get storage galaxy:get item[{output:1b}].Count 1
execute store result score #2 calcu_temp run data get storage galaxy:get recipe[0].Count 1
data modify block ~ ~ ~ Items[{Slot:15b}] merge from storage galaxy:get recipe[0]
execute store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players operation #1 calcu_temp += #2 calcu_temp

scoreboard players set @s workProc1 0
