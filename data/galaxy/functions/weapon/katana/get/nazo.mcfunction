data modify storage galaxy:get item prepend value {id:"minecraft:carrot_on_a_stick",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:weapon/katana/get/tag/nazo
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
