function atbash_cipher(input_text)
    uppercase_letters = 'A' : 'Z'
    lowercase_letters = 'a' : 'z'
    result = Char[]

    for ch in input_text
        if ch in uppercase_letters
            new_char = uppercase_letters[end - (ch - 'A')]
            push!(result, new_char)
        elseif  ch in lowercase_letters
            new_char = lowercase_letters[end - (ch - 'a')]
            push!(result, new_char)
        else
            push!(result, ch)
        end
    end

    return String(result)
end
println(atbash_cipher("Nice Lab!"))
