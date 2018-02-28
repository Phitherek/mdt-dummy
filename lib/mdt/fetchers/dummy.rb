require 'mdt-core'
module MDT
  module Fetchers
    class Dummy < MDT::Fetchers::Base
      def self.key
        'dummy'
      end

      def self.subkeys
        ['dummy']
      end

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