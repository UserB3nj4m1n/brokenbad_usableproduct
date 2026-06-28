# Remove tags
tag @s remove on_trip
tag @s remove on_white_trip
tag @s remove on_blue_trip

# Clean up scoreboard
scoreboard players set @s trip_time 0
scoreboard players set @s trip_wobble 0

# Apply comedown crash effects (withdrawal)
effect give @s minecraft:slowness 15 2 true
effect give @s minecraft:hunger 20 2 true
effect give @s minecraft:nausea 10 0 true
effect give @s minecraft:weakness 15 1 true

# Play comedown sound
playsound minecraft:block.bell.use ambient @s ~ ~ ~ 0.6 0.5
playsound minecraft:entity.phantom.flap ambient @s ~ ~ ~ 0.8 0.2

# Actionbar message
title @s actionbar {"text":"The high is fading... You feel awful.","color":"gray","italic":true}
