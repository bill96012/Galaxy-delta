data modify storage galaxy:get itemTag prepend value {display:{Name:'{"translate":"item.galaxy.nazo","italic":false,"color":"yellow"}'},HideFlags:39,RepairCost:2147483644,Unbreakable:1b,CustomModelData:120200,CustomData:{galaxy:{Type:"item",id:"katana",tag:{type:1b,style:2b,flash:{damage:12,distance:8,charge:15},stun:{damage:2,duration:10},Name:'{"translate":"item.galaxy.nazo","italic":false,"color":"yellow"}'}}}}
data modify storage galaxy:temp katana.build-lore.itemCustomDataTag set from storage galaxy:get itemTag[0].CustomData.galaxy.tag
function galaxy:weapon/katana/build-lore/katana
data modify storage galaxy:get itemTag[0].display.Lore set from storage galaxy:temp katana.build-lore.result
