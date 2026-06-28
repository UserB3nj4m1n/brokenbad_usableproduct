# Particles
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 40
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 20

# Teleport sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..20] ~ ~ ~ 0.6 0.4

# Kill the illusion
kill @s
