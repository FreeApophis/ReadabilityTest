#
#  Sentence metrics
#

module ReadabilityTest
  class Sentence 
    def initialize sentence
      @sentence = sentence
    end
  
    def self.parse text
      text
        .split(/([.|?|!])/)
        .each_slice(2)
        .map(&:join)
        .map(&:strip)
        .map{ |s| Sentence.new(s)}
    end
    
    def to_s
      @sentence
    end
  end
end