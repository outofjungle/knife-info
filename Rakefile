require 'rubygems/package_task'

GEM_NAME = 'chef-info'

task :default => :gem
task :clean => :clobber_package

spec = eval(File.read('chef-info.gemspec'))
Gem::PackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc 'install chef-info'
task :install => :package do
  sh %{gem install pkg/#{GEM_NAME}-#{Chef::Info::VERSION}.gem --no-rdoc --no-ri}
end

desc 'uninstall chef-info'
task :uninstall do
  sh %{gem uninstall #{GEM_NAME} -x -v #{Chef::Info::VERSION} }
end
