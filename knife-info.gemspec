lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knife/version'

Gem::Specification.new do |spec|
  
  spec.name = 'knife-info'
  spec.version = Chef::Knife::Info::VERSION
  spec.summary = 'knife-info'
  spec.description = 'Displays which .chef config dir knife will be using'
  
  spec.authors = ['Venkat Venkataraju']
  spec.email = 'venkat.venkataraju@yahoo.com'
  spec.homepage = 'https://github.com/outofjungle/knife-info'
  
  spec.files = %w(README.md) + Dir.glob('lib/**/*') + Dir.glob('bin/*')
  spec.executables   = %w(knife-info)
  spec.require_path = 'lib'
  
  spec.required_ruby_version = '>= 1.9'
  
  spec.add_dependency 'chef'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency "rake"
  
  spec.license = 'MIT'
end
