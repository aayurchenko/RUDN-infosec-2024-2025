function finiteGammaEncoding(text::String, gamma_code::String, isEncoding::Bool)
    alphabet = vcat(1040:1045, 1025, 1046:1071, 32:33, 44, 46, 63, 1072:1077, 1105, 1078:1103)
  
    filtered_text = filter(x -> findfirst(isequal(Int(x)), alphabet) !== nothing, text)
    char_codes = Int.(collect(filtered_text))
    text_length = length(char_codes)
  
    text_indices = [findfirst(isequal(char_codes[i]), alphabet) for i in 1:text_length]
  
    for i in 1:text_length
        if text_indices[i] > 38
            text_indices[i] -= 38
        end
    end
  
    println(join(Char.([alphabet[text_indices[i]] for i in 1:text_length])))
  
    gamma_indices = [findfirst(isequal(Int(c)), alphabet) for c in collect(gamma_code)]
    gamma_length = length(gamma_indices)
  
    if isEncoding
        transformed_indices = [alphabet[mod(text_indices[i] + gamma_indices[mod(i-1, gamma_length)+1] - 1, 38) + 1] for i in 1:text_length]
    else
        transformed_indices = [alphabet[mod(text_indices[i] - gamma_indices[mod(i-1, gamma_length)+1] - 1, 38) + 1] for i in 1:text_length]
    end
  
    encoded_text = join(Char.(transformed_indices))
    return encoded_text
  end
  
  coded_text = finiteGammaEncoding("слово", "ПАРОЛЬ", true)
  println(coded_text)
  
  println()
  
  decoded_text = finiteGammaEncoding(coded_text, "ПАРОЛЬ", false)
  println(decoded_text)
  