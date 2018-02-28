require 'mdt-core'
module MDT
  module DirectoryChoosers
    class Dummy < MDT::DirectoryChoosers::Base
      def self.key
        'dummy'
      end

      def self.subkeys
        ['dummy']
      end

      def mkdir(key, options = {})
        case key
        when 'dummy'
          0
        end
      end

      def cd(key, options = {})
        case key
        when 'dummy'
          0
        end
      end

      def rm(key, options = {})
        case key
        when 'dummy'
          0
        end
      end
    end
  end
end