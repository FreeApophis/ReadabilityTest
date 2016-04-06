#
# The Dale–Chall readability formula is a readability test that provides a numeric gauge of the comprehension difficulty that readers come upon when reading a text. It uses a list of 3000 words that groups of fourth-grade American students could reliably understand, considering any word not on that list to be difficult.
#

require_relative 'familiar_words'
require_relative 'text'

module ReadabilityTest
  class DaleChall
    def initialize text
      @text = Text.new(text)
    end    
    
    def score
      15.79 * difficult_words / words + 0.0496 * words / sentences
    end
    
    def grade
      s = score
      return :'4th grade' if s < 5.0
      return :'6th grade' if s < 6.0
      return :'8th grade' if s < 7.0
      return :'10th grade' if s < 8.0
      return :'12th grade' if s < 9.0
      :college
    end
    
    def words
      @text.words.length
    end
    
    def difficult_words
      @text.words.reject{ |w| familiar_words.include? w.word }.length
    end
    
    def sentences
      @text.sentences.length
    end
    
    def language
      :en
    end
  end
end