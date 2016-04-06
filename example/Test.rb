#!/usr/bin/ruby
# CALL ME MAYBE
# ----------------------

# Load library path

$LOAD_PATH << File.expand_path(File.dirname(__FILE__) + '/../lib')

require 'readability-test'
require 'pp'

include ReadabilityTest

text = "The formula was inspired by Rudolf Flesch's Flesch–Kincaid readability test which used word-length to determine how difficult a word was for readers to understand. Edgar Dale and Jeanne Chall instead used a list of 763 words that 80% of fourth-grade students were familiar with, such as \"no\", \"yes\", and other such very basic words to determine which words were difficult. The Dale-Chall Readability Formula was originally published in their 1948 article A Formula for Predicting Readability and updated in 1995 in Readability Revisited: The New Dale-Chall Readability Formula, which expanded the word list to 3,000 familiar words."

test = DaleChall.new text

puts test.words
puts test.difficult_words
puts test.sentences
puts test.score
puts test.grade.to_s

