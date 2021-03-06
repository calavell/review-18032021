require 'spell_checker'

describe '#spell_checker' do
    it 'returns the given string, if it is spelled correctly' do
        expect(spell_checker('test string', ['test', 'string'])). to eq 'test string'
    end

    it 'returns a string with ~ around each incorrect word' do
        expect(spell_checker('tett string', ['test', 'string'])). to eq '~tett~ string'
    end

    it 'raises type error if input string argument is not a string' do
        expect { spell_checker(6, ['test', 'dictionary']) }.to raise_error(TypeError)
    end
end