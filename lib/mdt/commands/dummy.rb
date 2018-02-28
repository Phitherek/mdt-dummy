require 'mdt-core'
module MDT
  module Commands
    class Dummy < MDT::Commands::Base
      def self.key
        'dummy'
      end

      def self.subkeys
        ['dummy']
      end

      def execute(key, modifiers = [], options = {})
        case key
        when 'dummy'
          0
        end
      end
    end
  end
end