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
          puts "CommandModifiers: dummy, modifier: dummy, prepend, cmd: #{cmd}, options: #{options.to_s}"
          cmd
        end
      end
    end
  end
end