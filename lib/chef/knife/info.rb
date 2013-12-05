require 'chef/knife'
require 'uri'

module KnifeInfo
  class Info < Chef::Knife

    category 'CHEF INFO'
    banner 'knife info'

    option :short,
           :long => '--short',
           :description => 'print info in oneline',
           :boolean => true | false,
           :default => true

    def run
      @config_file_location = Chef::Knife.locate_config_file
      @user = username

      uri = URI(server_url)
      %r(^(?<host>[a-zA-Z0-9-]+)\..*$) =~ uri.host
      @host = host || ''

      %r(.*/(?<org>.*)$) =~ uri.path
      @organization = org || ''

      ui.msg(oneline_print)
    end

    def oneline_print
      user_string = (@user != ENV['USER']) ? "#{@user}@" : ''
      "#{user_string}#{@host}/#{@organization}"
    end

    attr_reader :host, :organization, :user, :config_file_location
  end
end
