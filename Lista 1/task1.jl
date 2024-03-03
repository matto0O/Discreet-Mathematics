function my_ceil(x)
    if rem(x,1) == 0
        return Int64(x)
    end
    
    result = div(x,1)

    if x > 0
        return Int64(result + 1)
    end

    return Int64(result)
end

function my_floor(x)
    if rem(x,1) == 0
        return Int64(x)
    end

    result = div(x,1)

    if x > 0
        return Int64(result)
    end

    return Int64(result - 1)
end

function my_mod(x::Int64, y::Int64)
    if x < 0
        x = - x
        changed = true
    else
        changed = false
    end

    while x >= y
        x -= y
    end

    if changed
        x = - x
    end

    return x 
end

# println(my_ceil(-7.5))
# println(my_ceil(-0.5))
# println(my_ceil(0))
# println(my_ceil(0.8))

# println(my_floor(-1.53))
# println(my_floor(1.53))
# println(my_floor(0.53))
# println(my_floor(0))

println(my_mod(48, 11))
println(48 % 11)
println(my_mod(48, 1121))
println(48 % 1121)
println(my_mod(-121, 11))
println(-121 % 11)
println(my_mod(-36, 11))
println(-36 % 11)