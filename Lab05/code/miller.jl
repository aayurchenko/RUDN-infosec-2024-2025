function primality_miller_rabin(n)
    if n < 5
        return "Invalid input."
    end
    rem = n - 1
    exp = 0
    while rem % 2 == 0
        exp += 1
        rem ÷= 2
    end
    rand_base = rand(2:n-2)
    test_val = powermod(rand_base, rem, n)
    if test_val != 1 && test_val != n-1
        for _ in 1:exp-1
            test_val = (test_val^2) % n
            if test_val == 1
                return "$n is composite."
            end
        end
        if test_val != n-1
            return "$n is composite."
        end
    end
    return "$n is prime."
  end
  
  println(primality_miller_rabin(4463429))