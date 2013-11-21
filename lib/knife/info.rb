require 'chef/knife'
require 'uri'

class Chef
  class Knife
    class Info < Knife

      def self.print
        
        knife = Chef::Knife::Info.new
        knife.configure_chef
        uri = URI(knife.server_url)

        puts uri.host
        puts uri.path
        puts knife.username
        puts Chef::Knife.locate_config_file
      end

      def initialize(argv=[])
        super()
      end
    end
  end
end