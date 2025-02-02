function fermat_primality_check(n)
    if n < 5 
        return "Invalid input."
    end
    rand_base = rand(2:n-2)
    mod_result = powermod(rand_base, n-1, n)
    if mod_result == 1 
        return "$n is prime."
    else
        return "$n is composite"
    end
end
println(fermat_primality_check(23))
    