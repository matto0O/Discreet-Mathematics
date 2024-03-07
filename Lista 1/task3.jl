# Check, if a given sequence of n numbers is a permutation (i.e. each number appears
# exactly once). Generate all permutations of a given length n < 8. 

function is_permutation(x::Array)
    A = []
    for elem in x
        if elem in(A)
            return false
        end
        push!(A, elem)
    end
        
    return length(Set(x)) == length(x)
end

println(is_permutation([1,2,3,4]))
println(is_permutation([1,1,2]))

function generate_sequence(size::Int64)
    elems = [i for i in 1:size]
    
    return elems
end

function swap(x::Array, a_index::Int64, b_index::Int64)
    if b_index > length(x)
        return x
    end

    new_x = copy(x)

    temp = new_x[b_index]
    new_x[b_index] = new_x[a_index]
    new_x[a_index] = temp

    return new_x
end

function generate_permutations(sequence::Array, depth=1)
    l = length(sequence)
    result_arr = []

    for index in depth:l
        new_seq = swap(sequence, depth, index)
        if depth == l
            push!(result_arr, new_seq)
        else
            result_arr = vcat(result_arr, generate_permutations(new_seq, depth+1))
        end
    end
    return result_arr
end

function result(n::Int64)
    start_seq = generate_sequence(n)

    return generate_permutations(start_seq)
end

println(result(3))