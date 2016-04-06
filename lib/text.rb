#
#  Word metrics
#

require_relative 'word'
require_relative 'sentence'

module ReadabilityTest
  class Text
    def initialize text
      @text = text
      @words = Word.parse text
      @sentences = Sentence.parse text
    end
    
    def words
      @words
    end
       
    def sentences
      @sentences
    end
    
    def to_s
      @text
    end
  end
end