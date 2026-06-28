# Revoke the advancement so it can trigger again
advancement revoke @s only trippy:ate_white_meth

# Add trip tags
tag @s add on_trip
tag @s add on_white_trip
tag @s remove on_blue_trip

# Set trip timer (in ticks: 800 ticks = 40 seconds)
scoreboard players set @s trip_time 800
scoreboard players set @s trip_wobble 0

# Apply initial effects
# Nausea 40 seconds
effect give @s minecraft:nausea 40 1 true
# Speed IV for 40 seconds
effect give @s minecraft:speed 40 3 true
# Jump Boost III for 40 seconds
effect give @s minecraft:jump_boost 40 2 true
# Haste III for 40 seconds
effect give @s minecraft:haste 40 2 true
# Glowing for 40 seconds
effect give @s minecraft:glowing 40 0 true
# Short pulse of darkness
effect give @s minecraft:darkness 10 0 true

# Play startup sounds
execute at @s run playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..16] ~ ~ ~ 0.8 1.8
execute at @s run playsound minecraft:block.portal.trigger ambient @s ~ ~ ~ 0.6 1.4

# Spooky whisper
execute at @s run playsound minecraft:entity.witch.celebrate ambient @s ~ ~ ~ 0.5 1.6

# Visual burst particles
execute at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute at @s run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0.1 50

# Announce actionbar
title @s actionbar {"text":"Entering a white haze...","color":"white","italic":true}
