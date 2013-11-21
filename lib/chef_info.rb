require 'chef/knife'

class Chef
  class Info < Chef::Knife
    def self.print
      puts "hello world"
    end
  end
end