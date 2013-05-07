Gem::Specification.new do |s|
  s.name = 'vitelity'
  s.version = '0.0.0'

  s.date = '2013-05-06'
  s.summary = "Vitelity API"
  s.description = "A gem for utilizing the Vitelity API"
  s.authors = ["David Collazo"]
  s.email = 'davidcollazo@gmail.com'
  s.files = ["lib/vitelity.rb"]
  s.homepage = 'https://github.com/dcollazo/vitelity_gem'

  s.add_dependency('rest-client')
  s.add_dependency('awesome_print')
  s.add_dependency('activesupport')
end