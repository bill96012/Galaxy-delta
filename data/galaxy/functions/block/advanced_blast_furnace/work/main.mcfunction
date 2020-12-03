function galaxy:block/advanced_blast_furnace/work/processor1/main

function galaxy:block/advanced_blast_furnace/work/check-processor_status
execute if entity @s[tag=workProcStatusUpdate] run tag @s add setProcess
execute if entity @s[tag=workProcStatusUpdate] run function galaxy:gui/advanced_blast_furnace/update-progress
tag @s[tag=workProcStatusUpdate] remove workProcStatusUpdate

execute if predicate minecraft:block_states/open if score @s workProcStatus1 matches 1..9 run function galaxy:gui/advanced_blast_furnace/update-progress

function galaxy:block/advanced_blast_furnace/work/get-status
