require_relative './lib/mdt/version'

Gem::Specification.new do |s|
  s.name = 'mdt-dummy'
  s.version = MDT::Dummy::VERSION
  s.date = '2018-02-28'
  s.summary = 'MDT Dummy module'
  s.description = 'Dummy module for MDT'
  s.authors = ['Phitherek_']
  s.email = ['phitherek@gmail.com']
  s.files = Dir['lib/**/*.rb'] + Dir['bin/*']
  s.homepage = 'https://github.com/Phitherek/mdt-dummy'
  s.license = 'MIT'
  s.add_runtime_dependency 'mdt-core', '~> 0.0'
  s.add_development_dependency 'rspec', '~> 3.7'
end
