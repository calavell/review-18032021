def spell_checker(input_string, dictionary)
    spell_checked_string = input_string.split(' ')
    spell_checked_string.each do |word|
        correct_word(word, dictionary)
    end
    spell_checked_string.join(' ')
end

def correct_word(word, dictionary)
    unless dictionary.include? word
        word = '~' + word + '~'
    end
end