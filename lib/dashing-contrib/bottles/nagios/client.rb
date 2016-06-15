require 'nagiosharder'

module DashingContrib
  module Nagios
    class Client
      attr_reader :client
      attr_reader :skip_ok

      def initialize(options = {})
        @skip_ok = options[:skip_ok] || false
        @client = NagiosHarder::Site.new(options[:endpoint], options[:username], options[:password], options[:version], options[:time_format], options[:verify_ssl])
      end

      def status(nagios_options = {})
        ::DashingContrib::Nagios::Status.fetch(client, nagios_options, skip_ok)
      end
    end
  end
end