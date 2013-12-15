$:.unshift File.expand_path('../../lib', __FILE__)
require 'coveralls'
Coveralls.wear!

require 'chef/knife'
require 'chef/knife/info'

class Chef::Knife
  include KnifeInfo
end


