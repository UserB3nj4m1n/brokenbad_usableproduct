# Roll a random number between 1 and 4 to pick a random offset quadrant
execute store result score @s trip_rand run random value 1..4

# Spawn a static, silent, glowing Wither Skeleton named "?" watching the player from a distance
execute at @s if score @s trip_rand matches 1 run summon minecraft:wither_skeleton ~8 ~ ~8 {NoAI:1b,Silent:1b,Glowing:1b,Tags:["trippy_illusion","shadow_figure"],CustomName:'{"text":"?","color":"dark_red"}',HandItems:[{},{id:"createbb:blue_meth",count:1}],HandDropChances:[0.0f,2.0f]}
execute at @s if score @s trip_rand matches 2 run summon minecraft:wither_skeleton ~-8 ~ ~8 {NoAI:1b,Silent:1b,Glowing:1b,Tags:["trippy_illusion","shadow_figure"],CustomName:'{"text":"?","color":"dark_red"}',HandItems:[{},{id:"createbb:blue_meth",count:1}],HandDropChances:[0.0f,2.0f]}
execute at @s if score @s trip_rand matches 3 run summon minecraft:wither_skeleton ~8 ~ ~-8 {NoAI:1b,Silent:1b,Glowing:1b,Tags:["trippy_illusion","shadow_figure"],CustomName:'{"text":"?","color":"dark_red"}',HandItems:[{},{id:"createbb:blue_meth",count:1}],HandDropChances:[0.0f,2.0f]}
execute at @s if score @s trip_rand matches 4 run summon minecraft:wither_skeleton ~-8 ~ ~-8 {NoAI:1b,Silent:1b,Glowing:1b,Tags:["trippy_illusion","shadow_figure"],CustomName:'{"text":"?","color":"dark_red"}',HandItems:[{},{id:"createbb:blue_meth",count:1}],HandDropChances:[0.0f,2.0f]}

# Initialize its lifetime timer to 0
execute as @e[tag=shadow_figure,limit=1,sort=nearest] run scoreboard players set @s trip_time 0

# Play a creepy low pitch bell or enderman stare
execute at @s run playsound minecraft:entity.enderman.stare ambient @s ~ ~ ~ 0.4 0.5
