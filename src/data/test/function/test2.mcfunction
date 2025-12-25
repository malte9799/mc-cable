#> @function demo:tests
say Hello World!
# just a random comment

say woww
execute # even this works
    if score #predicate cable.type # even this works
    matches 1.. run say cable.type 
# say random comment

function ./test2/nested:
    #> @function demo:tests/nested
    say this is a nested function
    # and it has comments

    function ./test2/nested/deeply:
        #> @function demo:tests/nested/deeply
        say this is a deeply nested function
        # and it has comments

function ./test2/nested_2:
    #> @function demo:tests/nested_2
    say this is another nested function
    # with more comments