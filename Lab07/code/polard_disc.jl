function find_g(a_d, b_d, p)
    for g in 1:p
      if (b_d * g) % p == a_d
        return g
      end
    end
    return "Not found"
end
  
function mod_xab(x, a, b, p, al, be)
    if x % 3 == 0
      return mod(x^2, p), mod(a * 2, p - 1), mod(b * 2, p - 1)
    elseif x % 3 == 1
      return mod(x * al, p), mod(a + 1, p - 1), b
    else
      return mod(x * be, p), a, mod(b + 1, p - 1)
    end
end
  
function pollard_rho(p, al, be)
    if p % 2 == 0
      return "Invalid"
    end
  
    a1, b1, x1 = 0, 0, 1
    a2, b2, x2 = 0, 0, 1
    max_it = 1000
  
    tr1 = zeros(Int64, 3, max_it)
    tr2 = zeros(Int64, 3, max_it)
  
    for i in 1:max_it
      x1, a1, b1 = mod_xab(x1, a1, b1, p, al, be)
      tr1[:, i] = [x1, a1, b1]
  
      x2, a2, b2 = mod_xab(x2, a2, b2, p, al, be)
      x2, a2, b2 = mod_xab(x2, a2, b2, p, al, be)
      tr2[:, i] = [x2, a2, b2]
  
      if x1 == x2
        display(tr1[:, 1:i])
        display(tr2[:, 1:i])
  
        bd = b2 - b1
        if bd == 0
          return "Not found"
        else
          return find_g(a1 - a2, bd, p)
        end
      end
    end
  
    return "Invalid"
end
  
pA = 2341
alA = 4
beA = 86
println(pollard_rho(pA, alA, beA))
  
pB = 1234
alB = 3
beB = 4
println(pollard_rho(pB, alB, beB))
 