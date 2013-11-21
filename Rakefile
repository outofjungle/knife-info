lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rubygems/package_task'
require 'knife/version'

GEM_NAME = 'knife-info'
GEM_VERSION = Chef::Knife::Info::VERSION

task :default => :gem
task :clean => :clobber_package

spec = eval(File.read('knife-info.gemspec'))
Gem::PackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc 'install gem'
task :install => :package do
  sh %{gem install pkg/#{GEM_NAME}-#{GEM_VERSION}.gem --no-rdoc --no-ri}
end

desc 'uninstall gem'
task :uninstall do
  sh %{gem uninstall #{GEM_NAME} -x -v #{GEM_VERSION} }
end
