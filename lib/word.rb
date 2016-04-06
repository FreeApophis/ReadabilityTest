#
#  Word metrics
#

module ReadabilityTest
  class Word 
    attr_reader :word
     
    def initialize word
      @word = word
    end
  
    def self.parse text
      text.split(/[ |\t|\n|.|,|:|;|?|!|"]/)
       .map{ |w| w.downcase }
       .reject{ |w| w.empty? or w == '-' or w.to_i > 0 or w == '0'}
       .map{ |w| Word.new(w)}
    end
  
    def syllables
    end
  
    def to_s
      @word
    end
  end
end