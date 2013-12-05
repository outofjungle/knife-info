require 'chef/knife'
require 'uri'

module KnifeInfo
  class Info < Chef::Knife

    category 'CHEF KNIFE INFO'
    banner 'knife info'

    option :tiny,
           :long => '--tiny',
           :description => 'print concise info in oneline',
           :boolean => true | false,
           :default => true

    option :medium,
           :long => '--medium',
           :description => 'print info in oneline',
           :boolean => true | false

    option :long,
           :long => '--long',
           :description => 'print info in multi line',
           :boolean => true | false

    def run
      @config_file_location = Chef::Knife.locate_config_file

      uri = URI(server_url)
      @host = uri.host

      %r(.*/(?<org>.*)$) =~ uri.path
      @organization = org || ''

      if config[:long]
        ui.msg(long_print)
      elsif config[:medium]
        ui.msg(medium_print)
      else config[:tiny]
        ui.msg(tiny_print)
      end
    end

    def user_string
      (username != ENV['USER']) ? "#{username}@" : ''
    end

    def tiny_print
      %r(^(?<host>[a-zA-Z0-9-]+)\..*$) =~ @host
      "#{user_string}#{host}/#{@organization}"
    end

    def medium_print
      "#{user_string}#{@host}/#{organization}"
    end

    def long_print
      <<-VERBOSE.gsub(/^\s+/, '')
        Host: #{@host}
        Username: #{username}
        Organization: #{@organization}
        Config File: #{@config_file_location}
      VERBOSE
    end

    attr_reader :host, :organization, :user, :config_file_location
  end
end
