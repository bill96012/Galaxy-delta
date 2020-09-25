data modify storage galaxy:get item set value []
function galaxy:recipe/hi-tech_crafting_table/weapon/get-item
execute store result storage galaxy:recipe HTct.categories.weapon.recipeTotal int 1 store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:recipe HTct.items
scoreboard players operation #1 calcu_temp /= #15 num
execute store result storage galaxy:recipe HTct.categories.weapon.recipeInFinalPage int 1 run scoreboard players operation #2 calcu_temp %= #15 num
execute if score #2 calcu_temp matches 1.. store result storage galaxy:recipe HTct.categories.weapon.pageTotal int 1 run scoreboard players add #1 calcu_temp 1

function galaxy:recipe/hi-tech_crafting_table/weapon/get-requirement

execute store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 15
execute unless data storage galaxy:recipe {GUI:{HTct:{categories:{weapon:{recipeInFinalPage:0}}}}} store result score #1 calcu_temp store result score #2 calcu_temp store result score #3 calcu_temp run data get storage galaxy:recipe HTct.categories.weapon.recipeInFinalPage
data modify storage galaxy:recipe HTct.categories.weapon.list set value []
function galaxy:recipe/hi-tech_crafting_table/weapon/build-list

data modify storage galaxy:get item set value []
function galaxy:weapon/energy_saber/get/plasum
data modify storage galaxy:recipe HTct.categories.weapon.icon set from storage galaxy:get item[0]
data modify storage galaxy:temp tag set value {}
execute if data storage galaxy:recipe HTct.categories.weapon.icon.tag.CustomModelData run data modify storage galaxy:temp tag.CustomModelData set from storage galaxy:recipe HTct.categories.weapon.icon.tag.CustomModelData
data modify storage galaxy:recipe HTct.categories.weapon.icon.tag set from storage galaxy:temp tag
data modify storage galaxy:recipe HTct.categories.weapon.icon.tag merge value {display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},guiItem:1}
data remove storage galaxy:recipe HTct.categories.weapon.icon.tag.display.Lore
# data modify storage galaxy:recipe HTct.categories.weapon.icon set value {id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},HideFlags:63,CustomModelData:30104,guiItem:1}}