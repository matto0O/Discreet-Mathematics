function create_sieve(x::Int64)
    if x < 2
        return []
    end
    return [true for x in 2:x]
end

function find_primes(x::Int64)
    sieve_size = floor(Int64, sqrt(x)) + 1
    sieve_size = 300
    # sieve_size needs to be computed in some way, not hardcoded
    sieve = create_sieve(sieve_size)
    primes = []

    index = 1
    suspect = index + 1
    while x > 0
        divisible = false
        for i in primes
            if suspect % i == 0
                divisible = true
                break
            end
        end
        if !divisible
            push!(primes, suspect)
            x -= 1
            help_index = index + suspect
            while help_index < length(sieve)
                sieve[help_index] = false
                help_index += suspect
            end
        end
        index += 1
        while !sieve[index]
            index += 1
        end
        suspect = index + 1
    end
    return primes
end    

# println(1)
find_primes(15)