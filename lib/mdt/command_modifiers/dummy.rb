require 'mdt-core'
module MDT
  module CommandModifiers
    class Dummy < MDT::CommandModifiers::Base
      def self.key
        'dummy'
      end

      def self.subkeys
        ['dummy']
      end

      def prepend(key, cmd, options = {})
        case key
        when 'dummy'
          0
        end
      end
    end
  end
end