# Modify white meth in mainhand or offhand to add food component if they don't have it
execute as @a if items entity @s weapon.mainhand createbb:white_meth[!minecraft:food] run item modify entity @s weapon.mainhand trippy:make_food
execute as @a if items entity @s weapon.offhand createbb:white_meth[!minecraft:food] run item modify entity @s weapon.offhand trippy:make_food

# Modify blue meth in mainhand or offhand to add food component if they don't have it
execute as @a if items entity @s weapon.mainhand createbb:blue_meth[!minecraft:food] run item modify entity @s weapon.mainhand trippy:make_food
execute as @a if items entity @s weapon.offhand createbb:blue_meth[!minecraft:food] run item modify entity @s weapon.offhand trippy:make_food

# Run trip tick for anyone actively tripping
execute as @a[tag=on_trip] at @s run function trippy:trip_tick

# Run tick for active illusion entities
execute as @e[tag=trippy_illusion] at @s run function trippy:tick_illusions
