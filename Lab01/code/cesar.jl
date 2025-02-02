function caesar_cipher(input_text, shift_value)
    result = Char[]  # Создаем массив символов для зашифрованного текста

    for ch in input_text
        if isletter(ch)
            base = isuppercase(ch) ? 'A' : 'a'  # Определяем базовый символ в зависимости от регистра
            new_char = Char(base + ((ch - base + shift_value) % 26))  # Вычисляем новый символ
            push!(result, new_char)
        else
            push!(result, ch)  # Добавляем символ без изменений, если он не буква
        end
    end

    return String(result)
end

println(caesar_cipher("Hello, world", 2))
