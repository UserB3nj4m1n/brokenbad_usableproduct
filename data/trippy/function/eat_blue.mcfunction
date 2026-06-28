# Revoke the advancement so it can trigger again
advancement revoke @s only trippy:ate_blue_meth

# Add trip tags
tag @s add on_trip
tag @s add on_blue_trip
tag @s remove on_white_trip

# Set trip timer (in ticks: 1600 ticks = 80 seconds)
scoreboard players set @s trip_time 1600
scoreboard players set @s trip_wobble 0

# Apply initial effects
# Nausea 80 seconds
effect give @s minecraft:nausea 80 4 true
# Speed VI for 80 seconds
effect give @s minecraft:speed 80 5 true
# Haste V for 80 seconds
effect give @s minecraft:haste 80 4 true
# Strength IV for 80 seconds
effect give @s minecraft:strength 80 3 true
# Resistance II for 80 seconds
effect give @s minecraft:resistance 80 1 true
# Regeneration III for 20 seconds
effect give @s minecraft:regeneration 20 2 true
# Levitation II for 5 seconds to shoot them up initially
effect give @s minecraft:levitation 5 1 true
# Darkness pulse (flashing darkness)
effect give @s minecraft:darkness 20 0 true
# Glowing for 80 seconds
effect give @s minecraft:glowing 80 0 true

# Play startup sounds
execute at @s run playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..24] ~ ~ ~ 1.0 0.5
execute at @s run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 1.0 1.2
execute at @s run playsound minecraft:block.portal.trigger ambient @s ~ ~ ~ 0.8 0.8

# Visual burst particles
execute at @s run particle minecraft:gust ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @s run particle minecraft:portal ~ ~1 ~ 0.8 0.8 0.8 0.5 100
execute at @s run particle minecraft:dust{color:[0.0,0.5,1.0],scale:2.0} ~ ~1 ~ 0.5 0.5 0.5 0.1 100

# Announce actionbar
title @s actionbar {"text":"99.1% PURE BLUE HAZE... UNBELIEVABLE HIT!","color":"aqua","bold":true}
