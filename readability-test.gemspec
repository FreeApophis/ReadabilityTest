Gem::Specification.new do |s|
  s.name        = 'readability-test'
  s.platform    = Gem::Platform::RUBY
  s.version     = '0.5.0'
  s.date        = '2016-04-06'
  s.summary     = "Different Readability tests for texts"
  s.description = "A useful readability test protocol will give a rough indication of a work's readability, with accuracy increasing when finding the average readability of a large number of works. This gem implements several different known readability tests."
  s.authors     = ["Thomas Bruderer"]
  s.email       = 'apophis@apophis.ch'
  s.files       = Dir['lib/*.rb']
  s.homepage    = 'https://github.com/FreeApophis/ReadabilityTest'
  s.license     = 'GPL-3'
  s.metadata    = { "algorithms" => "Dale–Chall readability formula" }
#  s.post_install_message = ""
  
  s.add_runtime_dependency 'httparty', '~> 0'
end