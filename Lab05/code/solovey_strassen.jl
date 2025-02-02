function solovay_strassen_test(n)
    if n < 5
        return "Invalid input"
    end
    rand_base = rand(2:n-2)
    exp_result = powermod(rand_base, (n-1) ÷ 2, n)
    if exp_result != 1 && exp_result != n-1
        return "$n is composite."
    end
    jacobi_val = jacobi_symbol(rand_base, n)
    if exp_result == jacobi_val
        return "$n is composite."
    else
        return "$n is probably prime."
    end
  end
  
  println(solovay_strassen_test(123456))
  