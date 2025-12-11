function ./check_io:
    data modify storage cable:data temp set from storage cable:data input
    scoreboard players set #success cable.math 0
    execute if data storage cable:data input.input{type:function} store result score #success cable.math run function ./io/m.function with storage cable:data input.input
    execute if data storage cable:data input.input{type:predicate} store result score #success cable.math run function ./io/m.predicate with storage cable:data input.input
    execute if score #success cable.math matches 1 run function ./io/place_input
    scoreboard players set #success cable.math 0
    execute if data storage cable:data input.output{type:function} store result score #success cable.math run function ./io/m.function with storage cable:data input.output
    execute if data storage cable:data input.output{type:predicate} store result score #success cable.math run function ./io/m.predicate with storage cable:data input.output
    execute if score #success cable.math matches 1 run function ./io/place_output

function ./io/m.function:
    $return run function $(function)
function ./io/m.predicate:
    $execute if predicate $(predicate) run return 1
    return 0


function ./io/place_input:
    say place input
    particle flame
    execute at @s run particle block_marker{block_state:"minecraft:barrier"}

function ./io/place_output:
    say place output
    particle flame
    execute at @s run particle block_marker{block_state:"minecraft:barrier"}