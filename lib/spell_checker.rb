def spell_checker(input_string, dictionary)
    raise TypeError.new 'expected a string input' unless input_string.kind_of? String

    input_string_as_array = input_string.split(' ')
    input_string_as_array.map! do |word|
        check_word(word, dictionary)
    end
    input_string_as_array.join(' ')
end

def check_word(word, dictionary)
    if dictionary.include? word
        word
    else
        "~#{word}~"
    end
end