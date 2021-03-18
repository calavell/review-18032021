require 'spell_checker'

describe '#spell_checker' do
    it 'returns the given string, if it is spelled correctly' do
        expect(spell_checker('test string', ['test', 'string'])). to eq 'test string'
    end
end