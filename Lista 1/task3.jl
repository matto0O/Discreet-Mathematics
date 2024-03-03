# Check, if a given sequence of n numbers is a permutation (i.e. each number appears
# exactly once). Generate all permutations of a given length n < 8. 

function is_permutation(x::Array)
    return length(Set(x)) == length(x)
end

println(is_permutation([1,2,3,4]))
println(is_permutation([1,1,2]))

function generate_permutations(size::Int64)
    elems = [i for i in 1:size]
    
    return elems
end

generate_permutations(4)