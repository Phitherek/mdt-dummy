require 'mdt-core'
module MDT
  # A module containing all commands
  module Commands
    # A class that implements dummy commands
    class Dummy < MDT::Commands::Base
      # A method that defines a key for commands class.
      # Returns:
      # * "dummy"
      def self.key
        'dummy'
      end

      # A method that defines keys for available commands.
      # Returns:
      # * +["dummy"]+
      def self.subkeys
        ['dummy']
      end

      # A method that defines how to execute a command and how to apply command modifiers.
      # Arguments:
      # * +key+ - a key identifier of a particular command
      # * +modifiers+ - an array of command modifier configurations - each configuration is a Hash that includes modifier type and modifier options
      # * +options+ - options for command as a Hash
      # Returns:
      # * 0
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