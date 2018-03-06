require 'mdt-core'
module MDT
  # A module containing all fetchers
  module Fetchers
    # A class that implements dummy fetchers
    class Dummy < MDT::Fetchers::Base
      # A method that defines a key for fetchers class.
      # Returns:
      # * "dummy"
      def self.key
        'dummy'
      end

      # A method that defines keys for available fetchers.
      # Returns:
      # * +["dummy"]+
      def self.subkeys
        ['dummy']
      end

      # A method that defines how to fetch project contents to a deploy directory with fetchers.
      # Arguments:
      # * +key+ - a key identifier of a particular fetcher
      # * +options+ - options for fetchers as a Hash
      # Returns:
      # * Exit code for fetcher +key+
      # More information:
      # * See README.md for detailed description of fetchers
      def fetch(key, options = {})
        case key
        when 'dummy'
          puts "Fetchers: dummy, fetcher: dummy, fetch, options: #{options.to_s}"
          0
        end
      end
    end
  end
end