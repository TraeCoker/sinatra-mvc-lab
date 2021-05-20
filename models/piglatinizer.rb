class PigLatinizer
    attr_reader :text

   def initialize(text = nil)
        @text = text
    end 

    def piglatinize(text)
        words = text.split(" ") 
        latinized = words.collect do |word| 
            if word.match(/^[aeiouAEIOU]/)
                word + "way"
            else 
                splits = []
                splits << word.scan(/[aeiou].*/)
                splits << word.split(/[aeiou].*/)
                splits << "ay"
                splits.join 
            end 
        end 
        latinized.join(" ")
    end 

end 