execute if score @s ktnFlashCrgeLvl matches ..0 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"==========","color":"green"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 1..10 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"+","color":"gold"},{"text":"=========","color":"green"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 11..20 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"=","color":"dark_green"},{"text":"+","color":"gold"},{"text":"========","color":"green"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 21..30 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"==","color":"dark_green"},{"text":"+","color":"gold"},{"text":"=======","color":"green"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 31..40 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"===","color":"dark_green"},{"text":"+","color":"gold"},{"text":"======","color":"green"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 41..50 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"====","color":"dark_green"},{"text":"+","color":"gold"},{"text":"=====","color":"green"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 51..60 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"=====","color":"dark_green"},{"text":"+","color":"gold"},{"text":"====","color":"green"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 61..70 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"======","color":"dark_green"},{"text":"+","color":"gold"},{"text":"===","color":"green"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 71..80 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"=======","color":"dark_green"},{"text":"+","color":"gold"},{"text":"==","color":"green"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 81..90 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"========","color":"dark_green"},{"text":"+","color":"gold"},{"text":"=","color":"green"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 91..99 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"=========","color":"dark_green"},{"text":"+","color":"gold"},{"text":"]","color":"gray"}]'
execute if score @s ktnFlashCrgeLvl matches 100 run data modify storage galaxy:temp +HUD.katana.flash set value '[{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"==========","color":"dark_green"},{"text":"]","color":"gray"}]'
