require 'chef/knife'
require 'uri'

class Chef
  class Knife
    class Info < Knife

      def self.info
        knife_info = Chef::Knife::Info.new
        knife_info.pretty_print
      end

      attr_reader :host, :organization, :user, :config_file_location
      def initialize(argv=[])
        super()
        configure_chef

        @config_file_location = Chef::Knife.locate_config_file
        @user = username

        uri = URI(server_url)
        %r(^(?<host>[a-zA-Z0-9-]+)\..*$) =~ uri.host
        @host = host || ''

        %r(.*/(?<org>.*)$) =~ uri.path
        @organization = org || ''
      end

      def pretty_print
        puts @user + '@' + @host + '/' + @organization
      end
    end
  end
end