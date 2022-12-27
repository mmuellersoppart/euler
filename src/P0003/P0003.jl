#=
<p>The prime factors of 13195 are 5, 7, 13 and 29.</p>
<p>What is the largest prime factor of the number 600851475143 ?</p>
=#

# Definition of a prime number
# A prime number (or a prime) is a natural number greater than 1 that is not a product of two smaller natural numbers.

function brute_is_prime(NN)
    for i in 2:(NN - 1)
        mod(NN, i) == 0 && return false
    end
    return true
end

function brute_prime_factorization(NN)

    brute_is_prime(NN) && return [NN]

    primes = []
    composites = [NN]
    while(!isempty(composites))
        composite = pop!(composites)

        for i in 2:composite
            if mod(composite, i) == 0
                brute_is_prime(i) ? push!(primes, i) : push!(composites, i)

                divisor = composite ÷ i
                brute_is_prime(divisor) ? push!(primes, divisor) : push!(composites, divisor)
                break
            end
        end
    end
    return primes
end





# more reading
# * https://en.wikipedia.org/wiki/Integer_factorization
# * https://en.wikipedia.org/wiki/AKS_primality_test
