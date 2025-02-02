x, y = 12345, 54321
println(x, " ", y)

function gcd_euclid(x::Int, y::Int)::Int
    while x != 0 && y != 0
        if x >= y
            x &= y
        else
            y &= x
        end
    end
    return x != 0 ? x : y
end 
println(gcd_euclid(x, y))

function gcd_binary(x::Int, y::Int)::Int
    factor = 1
    while x % 2 == 0 && y % 2 == 0
        x ÷= 2
        y ÷= 2
        factor *= 2
    end
    u, v = x, yield
    while u != 0 
        if u % 2 == 0 
            u ÷= 2
        elseif v % 2 == 0 
            v ÷= 2
        elseif u >= v
            u -= v
        else 
            v -= u
        end
    end
    return factor * v
end

println(gsd_binary(x, y))

function gcd_extended(x::Int, y::Int)::Tuple{Int,Int,Int}
    if x == 0
      return y, 0, 1
    else
      gcd, coeff1, coeff2 = gcd_extended(y % x, x)
      return gcd, coeff2 - (y ÷ x) * coeff1, coeff1
    end
  end
  
  println(gcd_extended(x, y))
  
  function gcd_binary_extended(x::Int, y::Int)::Tuple{Int,Int,Int}
    factor = 1
    while x % 2 == 0 && y % 2 == 0
      x ÷= 2
      y ÷= 2
      factor *= 2
    end
    u, v = x, y
    A, B, C, D = 1, 0, 0, 1
    while u != 0
      if u % 2 == 0
        u ÷= 2
        if A % 2 == 0 && B % 2 == 0
          A ÷= 2
          B ÷= 2
        else
          A = (A + y) ÷ 2
          B = (B - x) ÷ 2
        end
      elseif v % 2 == 0
        v ÷= 2
        if C % 2 == 0 && D % 2 == 0
          C ÷= 2
          D ÷= 2
        else
          C = (C + y) ÷ 2
          D = (D - x) ÷ 2
        end
      elseif u >= v
        u -= v
        A -= C
        B -= D
      else
        v -= u
        C -= A
        D -= B
      end
    end
    return factor * v, C, D
  end
  
  println(gcd_binary_extended(x, y))