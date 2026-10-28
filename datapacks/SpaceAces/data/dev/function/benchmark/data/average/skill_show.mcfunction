## Resets average skill

scoreboard players operation #bot.average_skill Numbers *= 10 Numbers

scoreboard players operation #bot.average_skill Numbers /= #bot Numbers

scoreboard players operation #dec Numbers = #bot.average_skill Numbers
scoreboard players operation #dec Numbers %= 10 Numbers

scoreboard players operation #int Numbers = #bot.average_skill Numbers
scoreboard players operation #int Numbers /= 10 Numbers

tellraw @s [{translate:"dev.benchmark.get.bot.average_skill"},":",{score:{name:"#int",objective:"Numbers"}},".",{score:{name:"#dec",objective:"Numbers"}}]