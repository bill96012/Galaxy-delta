data modify storage galaxy:temp katana.build-lore.result set value []

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.stun.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"katana.build-lore.itemCustomDataTag.stun.damage","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp katana.build-lore.result append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %st","with":[{"translate":"attribute.stun.druation","color":"aqua"},{"storage":"galaxy:temp","nbt":"katana.build-lore.itemCustomDataTag.stun.duration","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp katana.build-lore.result append from storage cu:string toStatic.result
