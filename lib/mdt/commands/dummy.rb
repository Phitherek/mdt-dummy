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
          puts "Commands: dummy, command: dummy, execute, modifiers: #{modifiers}, options: #{options.to_s}"
          MDT::Helpers::Command.apply_command_modifiers('', modifiers)
          0
        end
      end
    end
  end
end