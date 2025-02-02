function add_big_nums(x, y, base=10)
    carry = 0
    x_digits = parse.(Int, collect(string(x)))
    y_digits = parse.(Int, collect(string(y)))
    len_x = length(x_digits)
    len_y = length(y_digits)
    max_len = max(len_x, len_y)
    res = zeros(Int64, max_len + 1)
  
    if len_x < len_y
        x_digits = vcat(zeros(Int64, len_y - len_x), x_digits)
    elseif len_y < len_x
        y_digits = vcat(zeros(Int64, len_x - len_y), y_digits)
    end
  
    for i in reverse(1:max_len)
        temp = (x_digits[i] + y_digits[i] + carry) % base
        res[i+1] = temp
        carry = (x_digits[i] + y_digits[i] + carry) ÷ base
    end
  
    res[1] = carry
    return parse(Int, join(string.(res)))
end
  
println(add_big_nums(87452, 1238))
  
function subtract_big_nums(x, y, base=10)
    if x < y
        return "$x is smaller than $y"
    end
  
    x_digits = parse.(Int, collect(string(x)))
    y_digits = parse.(Int, collect(string(y)))
    len_x = length(x_digits)
    len_y = length(y_digits)
    max_len = max(len_x, len_y)
    res = zeros(Int64, max_len)
  
    if len_y < len_x
        y_digits = vcat(zeros(Int64, len_x - len_y), y_digits)
    end
  
    for i in reverse(1:max_len)
        if x_digits[i] < y_digits[i]
            x_digits[i-1] -= 1
            x_digits[i] += base
        end
        res[i] = x_digits[i] - y_digits[i]
    end
  
    return parse(Int, join(string.(res)))
end

println(subtract_big_nums(87452, 1238))
  
function multiply_big_nums(x, y, base=10)
    x_digits = parse.(Int, collect(string(x)))
    y_digits = parse.(Int, collect(string(y)))
    len_x = length(x_digits)
    len_y = length(y_digits)
    res = zeros(Int64, len_x + len_y)
  
    for j in reverse(1:len_y)
        carry = 0
        for i in reverse(1:len_x)
            temp = x_digits[i] * y_digits[j] + res[i+j] + carry
            res[i+j] = temp % base
            carry = temp ÷ base
        end
        res[j] = carry
    end
  
    return parse(Int, join(string.(res)))
end
  
println(multiply_big_nums(87452, 1238))
  
function fast_multiply(x, y, base=10)
    x_digits = parse.(Int, collect(string(x)))
    y_digits = parse.(Int, collect(string(y)))
    len_x = length(x_digits)
    len_y = length(y_digits)
    res = zeros(Int64, len_x + len_y)
    temp = 0
  
    for s in 0:len_x+len_y-1
        for i in 0:s
            if len_x-i <= 0 || len_y-s+i <= 0
                continue
            end
            temp += x_digits[len_x-i] * y_digits[len_y-s+i]
        end
        res[len_x+len_y-s] = temp % base
        temp = temp ÷ base
    end
  
    return parse(Int, join(string.(res)))
end
  
println(fast_multiply(87452, 1238))
  