require 'mdt-core'
module MDT
  # A module containing all command modifiers
  module CommandModifiers
    # A class that implements dummy command modifiers
    class Dummy < MDT::CommandModifiers::Base
      # A method that defines a key for command modifiers class.
      # Returns:
      # * "dummy"
      def self.key
        'dummy'
      end

      # A method that defines keys for available command modifiers.
      # Returns:
      # * ["dummy"]
      def self.subkeys
        ['dummy']
      end

      # A method that defines how to prepend command modifiers to commands.
      # Arguments:
      # * +key+ - a key identifier of a particular command modifier
      # * +command+ - a command to apply command modifier on
      # * +options+ - options for modifier as a Hash
      # Returns:
      # * Unmodified value of +command+
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