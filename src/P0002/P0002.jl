function brute_fib(NN)
    NN == 1 && return 1
    NN == 2 && return 2
    return brute_fib(NN - 1) + brute_fib(NN - 2)
end

# Only store two values
function p2()
    acc = 0
    val1 = 1
    val2 = 2

    while(true)
        if iseven(val2)
            acc += val2
        end

        tmp = val2
        val2 = val1 + val2
        val1 = tmp

        val2 > 4_000_000 && return acc
    end
end

@time p2()