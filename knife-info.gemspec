$:.push File.expand_path("../lib", __FILE__)
require 'knife-info/version'

Gem::Specification.new do |spec|
  
  spec.name = 'knife-info'
  spec.version = KnifeInfo::VERSION
  spec.summary = 'knife info'
  spec.description = 'Displays which .chef config dir knife will be using'
  
  spec.authors = ['Venkat Venkataraju']
  spec.email = 'venkat.venkataraju@yahoo.com'
  spec.homepage = 'https://github.com/outofjungle/knife-info'
  
  spec.files = %w(README.md) + Dir.glob('lib/**/*') + Dir.glob('bin/*')
  spec.require_path = 'lib'
  
  spec.required_ruby_version = '>= 1.9'
  
  spec.add_dependency 'chef'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'coveralls'

  spec.license = 'MIT'
end
