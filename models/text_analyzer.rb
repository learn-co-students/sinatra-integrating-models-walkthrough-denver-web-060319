class TextAnalyzer 
    attr_reader :text

    def initialize(text)
        @text = text.downcase
    end

    def count_words
        text.split(" ").count
    end

    def count_of_vowels
        text.scan(/[aeiou]/).count
    end

    def count_of_consonants
        text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end

    def most_used_letter
        s1 = text.gsub(/[^a-z]/, '')
        arr = s1.split("")
        arr1 = arr.uniq
        hash = {}

        arr1.map { |letter| hash[letter] = arr.count(letter) }

        biggest = { hash.keys.first => hash.values.first }

        hash.each do | key, value |
            if value > biggest.values.first
                biggest = {}
                biggest[key] = value
            end
        end
        biggest
    end
end
