# Increment / reset wobble timer
scoreboard players add @s trip_wobble 1
execute if score @s trip_wobble matches 20.. run scoreboard players set @s trip_wobble 0

# Wobble / sway player's camera to simulate stumbling (every 5 ticks)
execute if score @s trip_wobble matches 0 run tp @s ~ ~ ~ ~4 ~1.5
execute if score @s trip_wobble matches 5 run tp @s ~ ~ ~ ~-4 ~-1.5
execute if score @s trip_wobble matches 10 run tp @s ~ ~ ~ ~4 ~-1.5
execute if score @s trip_wobble matches 15 run tp @s ~ ~ ~ ~-4 ~1.5

# --- WHITE TRIP PARTICLES ---
execute if entity @s[tag=on_white_trip] run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.2} ~ ~1 ~ 0.3 0.5 0.3 0.02 2
execute if entity @s[tag=on_white_trip,scores={trip_wobble=0}] run particle minecraft:nautilus ~ ~1.2 ~ 0.4 0.4 0.4 0.05 4
execute if entity @s[tag=on_white_trip,scores={trip_wobble=10}] run particle minecraft:cloud ~ ~0.8 ~ 0.5 0.5 0.5 0.01 6

# --- BLUE TRIP PARTICLES ---
execute if entity @s[tag=on_blue_trip] run particle minecraft:electric_spark ~ ~1 ~ 0.4 0.6 0.4 0.02 2
execute if entity @s[tag=on_blue_trip] run particle minecraft:dust{color:[0.0,0.6,1.0],scale:1.4} ~ ~1 ~ 0.4 0.6 0.4 0.02 3
execute if entity @s[tag=on_blue_trip,scores={trip_wobble=0}] run particle minecraft:portal ~ ~1.2 ~ 0.5 0.5 0.5 0.05 8
execute if entity @s[tag=on_blue_trip,scores={trip_wobble=10}] run particle minecraft:warped_spore ~ ~1.5 ~ 0.5 0.5 0.5 0.02 6
execute if entity @s[tag=on_blue_trip,scores={trip_wobble=5}] run particle minecraft:trial_spawner_detection_ominous ~ ~1.2 ~ 0.2 0.2 0.2 0.0 1

# --- AMBIENT SOUNDS ---
# Conduit ambient for white trip
execute if entity @s[tag=on_white_trip,scores={trip_wobble=0}] run playsound minecraft:block.conduit.ambient ambient @s ~ ~ ~ 0.3 1.2
execute if entity @s[tag=on_white_trip,scores={trip_wobble=10}] run playsound minecraft:entity.phantom.flap ambient @s ~ ~ ~ 0.2 1.6

# Portal ambient for blue trip
execute if entity @s[tag=on_blue_trip,scores={trip_wobble=0}] run playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 0.4 1.4
execute if entity @s[tag=on_blue_trip,scores={trip_wobble=10}] run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 0.1 0.4
execute if entity @s[tag=on_blue_trip,scores={trip_wobble=15}] run playsound minecraft:entity.witch.drink ambient @s ~ ~ ~ 0.2 0.7

# Shared resonant bell
execute if score @s trip_wobble matches 5 run playsound minecraft:block.bell.resonate ambient @s ~ ~ ~ 0.2 1.8

# --- GLITCHY ACTIONBAR TITLE ---
execute if entity @s[tag=on_white_trip] if score @s trip_wobble matches 0 run title @s actionbar ["",{"text":"[ ","color":"gray"},{"text":"WHITE HAZE: ACTIVE","color":"white","obfuscated":true},{"text":" ]","color":"gray"}]
execute if entity @s[tag=on_blue_trip] if score @s trip_wobble matches 0 run title @s actionbar ["",{"text":"* ","color":"aqua"},{"text":"BLUE Purity: 99.1%","color":"blue","bold":true,"obfuscated":false},{"text":" *","color":"aqua"}]

# --- FLOATING/LEVITAION SEQUENCE (Timed by trip_time matches) ---
# White trip occasional floating
execute if entity @s[tag=on_white_trip] if score @s trip_time matches 700 run effect give @s minecraft:levitation 1 0 true
execute if entity @s[tag=on_white_trip] if score @s trip_time matches 600 run effect give @s minecraft:levitation 1 0 true
execute if entity @s[tag=on_white_trip] if score @s trip_time matches 500 run effect give @s minecraft:levitation 1 0 true
execute if entity @s[tag=on_white_trip] if score @s trip_time matches 400 run effect give @s minecraft:levitation 1 0 true
execute if entity @s[tag=on_white_trip] if score @s trip_time matches 300 run effect give @s minecraft:levitation 1 0 true
execute if entity @s[tag=on_white_trip] if score @s trip_time matches 200 run effect give @s minecraft:levitation 1 0 true
execute if entity @s[tag=on_white_trip] if score @s trip_time matches 100 run effect give @s minecraft:levitation 1 0 true

# Blue trip occasional floating + slow falling
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 1500 run effect give @s minecraft:levitation 1 2 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 1300 run effect give @s minecraft:levitation 1 2 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 1100 run effect give @s minecraft:levitation 1 2 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 900 run effect give @s minecraft:levitation 1 2 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 700 run effect give @s minecraft:levitation 1 2 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 500 run effect give @s minecraft:levitation 1 2 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 300 run effect give @s minecraft:levitation 1 2 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 100 run effect give @s minecraft:levitation 1 2 true

execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 1480 run effect give @s minecraft:slow_falling 3 0 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 1280 run effect give @s minecraft:slow_falling 3 0 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 1080 run effect give @s minecraft:slow_falling 3 0 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 880 run effect give @s minecraft:slow_falling 3 0 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 680 run effect give @s minecraft:slow_falling 3 0 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 480 run effect give @s minecraft:slow_falling 3 0 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 280 run effect give @s minecraft:slow_falling 3 0 true
execute if entity @s[tag=on_blue_trip] if score @s trip_time matches 80 run effect give @s minecraft:slow_falling 3 0 true

# --- RANDOM HALLUCINATION & SOUND EVENTS ---
# Roll a random number between 1 and 200 every tick (~ once every 10 seconds per player)
execute store result score @s trip_rand run random value 1..200

# Event 1: Spawn silent creeper illusion (front of player)
execute if score @s trip_rand matches 1 run function trippy:spawn_creeper_illusion

# Event 2: Spawn shadow figure (nearby)
execute if score @s trip_rand matches 2 run function trippy:spawn_shadow_figure

# Event 3: Witch laugh / screech
execute if score @s trip_rand matches 3 run playsound minecraft:entity.witch.celebrate ambient @s ~ ~ ~ 0.4 1.5
execute if score @s trip_rand matches 4 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 0.8 1.8

# Event 4: Sudden blindness pulse (hallucinating blacking out)
execute if score @s trip_rand matches 5 run effect give @s minecraft:darkness 3 0 true
execute if score @s trip_rand matches 6 run effect give @s minecraft:blindness 2 0 true

# Event 5: Adrenaline rush / crash wobble
execute if score @s trip_rand matches 7 run effect give @s minecraft:speed 2 15 true
execute if score @s trip_rand matches 8 run effect give @s minecraft:slowness 3 4 true

# Event 6: Minor levitation bubble
execute if score @s trip_rand matches 9 run effect give @s minecraft:levitation 1 1 true
execute if score @s trip_rand matches 9 run effect give @s minecraft:slow_falling 2 0 true

# --- TRIPPY GUI SCREEN EFFECTS (GLITCHES) ---
# Event 7: Elder Guardian Ghost Jumpscare GUI overlay (Highly disorienting!)
execute if score @s trip_rand matches 10 run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1

# Event 8: Flashing Glitched Red/Purple Screen GUI Overlay
execute if score @s trip_rand matches 11 run title @s times 0 20 0
execute if score @s trip_rand matches 11 run title @s title {"text":"░█░█░█░█░█░█░█░█░█░█","obfuscated":true,"color":"red"}
execute if score @s trip_rand matches 11 run title @s subtitle {"text":"[ WARNING: SENSES CORRUPTED ]","color":"dark_purple","bold":true}

# Event 9: Flashing Glitched Aqua/Blue Screen GUI Overlay (Purity theme)
execute if score @s trip_rand matches 12 run title @s times 0 20 0
execute if score @s trip_rand matches 12 run title @s title {"text":"█▒░ █▒░ █▒░ █▒░ █▒░","obfuscated":true,"color":"aqua"}
execute if score @s trip_rand matches 12 run title @s subtitle {"text":"⚡ PURITY 99.1% OVERFLOW ⚡","color":"blue","bold":true}
