require 'mdt-core'
module MDT
  # A module containing all directory choosers
  module DirectoryChoosers
    # A class that implements dummy directory choosers
    class Dummy < MDT::DirectoryChoosers::Base
      # A method that defines a key for directory choosers class.
      # Returns:
      # * "dummy"
      def self.key
        'dummy'
      end

      # A method that defines keys for available directory choosers.
      # Returns:
      # * ["dummy"]
      def self.subkeys
        ['dummy']
      end

      # A method that defines how to create a deploy directory with directory choosers.
      # Arguments:
      # * +key+ - a key identifier of a particular directory chooser
      # * +options+ - options for directory chooser as a Hash
      # Returns:
      # * 0
      def mkdir(key, options = {})
        case key
        when 'dummy'
          puts "DirectoryChoosers: dummy, chooser: dummy, mkdir, options: #{options.to_s}"
          0
        end
      end

      # A method that defines how to change working directory to a deploy directory with directory choosers.
      # Arguments:
      # * +key+ - a key identifier of a particular directory chooser
      # * +options+ - options for directory chooser as a Hash
      # Returns:
      # * 0
      def cd(key, options = {})
        case key
        when 'dummy'
          puts "DirectoryChoosers: dummy, chooser: dummy, cd, options: #{options.to_s}"
          0
        end
      end

      # A method that defines how to remove a deploy directory with directory choosers.
      # Arguments:
      # * +key+ - a key identifier of a particular directory chooser
      # * +options+ - options for directory chooser as a Hash
      # Returns:
      # * 0
      def rm(key, options = {})
        case key
        when 'dummy'
          puts "DirectoryChoosers: dummy, chooser: dummy, rm, options: #{options.to_s}"
          0
        end
      end
    end
  end
end