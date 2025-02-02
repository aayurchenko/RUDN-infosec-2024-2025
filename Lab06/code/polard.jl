function gcd_binary(a, b)
    if a == 0 || b == 0
        return 0
    end

    a = abs(a)
    b = abs(b)

    if a == b
        return a
    end

    factor = 1

    while a > 0
        if a % 2 == 0 && b % 2 == 0
            factor *= 2
            a ÷= 2
            b ÷= 2
        elseif a % 2 == 0
            a ÷= 2
        elseif b % 2 == 0
            b ÷= 2
        elseif a >= b
            a -= b
        else
            b -= a
        end
    end

    return factor * b
end

function pollard_rho(n, start, func::Function)
    if n % 2 == 0
        return 2, n ÷ 2
    end

    x = start
    y = start
    count = 0
    divisor = 0

    while divisor == 0 && count < 100
        x = func(x)
        y = func(func(y))
        d = gcd_binary(x - y, n)

        if d > 1
            return d, n ÷ d
        end
        count += 1
    end

    return "No factor found"
end

numA = 12342543
seedA = 1
println(pollard_rho(numA, seedA, x -> (x^2 + 5) % numA))

numB = 2332432
seedB = 1
println(pollard_rho(numB, seedB, x -> (x^2 + 13) % numB))
