function cipher_vigenere(msg::String, secret::String)
    alphabet = 'a':'z'
    encrypted_text = ""
    key_index = 1
  
    for char in msg
      if isletter(char)
        shift_value = findfirst(==(secret[key_index]), alphabet) - 1
        new_char_pos = findfirst(==(char), alphabet) + shift_value
        new_char_pos > 26 && (new_char_pos -= 26)
        encrypted_text *= alphabet[new_char_pos]
        key_index += 1
        key_index > length(secret) && (key_index = 1)
      else
        encrypted_text *= char
      end
    end
  
    return encrypted_text
  end
  
  msg = "word"
  secret = "key"
  println(cipher_vigenere(msg, secret))
  