alphabet = [
    "а", "б", "в", "г", "д", "е", "ж", "з", "и", "к", 
    "л", "м", "н", "о", "п", "р", "с", "т", "у", "ф", 
    "х", "ц", "ч", "ш", "щ", "ъ", "ы", "ь", "э", "ю", "я"
]

input_text = "нельзя недооценивать противника"
key = "пароль"
matrix_size = (rows = 5, cols = 6)

function create_matrix(text, size)
    sanitized_text = replace(text, " " => "")  
    text_chars = collect(sanitized_text)  
    matrix = Vector{Vector{Char}}(undef, size.rows)  
    pos = 1

    for row in 1:size.rows
        matrix[row] = text_chars[pos:min(pos + size.cols - 1, end)]
        pos += size.cols
    end

    return matrix
end

function pad_matrix(matrix, size)
    while length(matrix[end]) < size.cols
        push!(matrix[end], 'а')
    end
    return matrix
end

function map_indexes(text, alphabet)
    indices = Int[]
    for char in collect(text)  
        idx = findfirst(==(string(char)), alphabet)  
        if idx !== nothing
            push!(indices, idx)
        end
    end
    return indices
end

function encode_text(matrix, indices, size)
    encoded_result = ""
    mapping = sort([Dict(:value => indices[i], :pos => i) for i in 1:length(indices)], 
                   by = x -> x[:value])

    println(mapping)

    for col in 1:size.cols
        column_index = mapping[col][:pos]
        for row in 1:size.rows
            encoded_result *= string(matrix[row][column_index])  
        end
    end

    return uppercase(encoded_result)
end

matrix_data = pad_matrix(create_matrix(input_text, matrix_size), matrix_size)
index_map = map_indexes(key, alphabet)
final_result = encode_text(matrix_data, index_map, matrix_size)

println("Encrypted Text: ", final_result)
