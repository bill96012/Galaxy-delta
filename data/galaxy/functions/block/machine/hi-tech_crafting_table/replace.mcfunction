function galaxy:gui/remove-gui_item
setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.hi_tech_crafting\"}"}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:"{\"translate\":\"container.hi_tech_crafting\"}"} replace
scoreboard players set @s setGui 1
function galaxy:gui/hi-tech_crafting_table/update
tag @s remove replace
