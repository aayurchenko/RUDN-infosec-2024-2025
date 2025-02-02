function legendre_symbol(x, y)
    if y < 3 || x >= y || x < 0
        return "Invalid input."
    end
    symbol_result = 1
    while x != 0
        power_count = 0
        while x % 2 == 0
            power_count += 1
            x ÷= 2
        end
  
        if power_count % 2 == 1 && (y % 8 == 3 || y % 8 == 5)
            symbol_result *= -1
        end
  
        if y % 4 == 3 && x % 4 == 3
            symbol_result *= -1
        end
  
        x, y = y % x, x
    end
    return y == 1 ? symbol_result : 0
  end
  
  println(legendre_symbol(23, 32))