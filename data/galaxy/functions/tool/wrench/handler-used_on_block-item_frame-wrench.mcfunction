tag @s add ThisWrenchUser

execute as @a[tag=ThisWrenchUser] run function galaxy:tool/wrench/used_on-block/wrench/find

execute as @a[tag=ThisWrenchUser] run function galaxy:tool/wrench/used_on-block/user/return
execute as @a[tag=ThisWrenchUser,predicate=minecraft:sneaking] run function galaxy:tool/wrench/used_on-block/main

kill @e[tag=ThisWrench]

tag @s remove ThisWrenchUser
