module Leaf
    class Application < Rails::Application
  
      unless defined? ::Leaf::Version
      module Version
          MAJOR = 0
          MINOR = 0
          TINY  = 2
          PRE   = 'alpha'
    
          FULL = [MAJOR, MINOR, TINY, PRE].compact.join('.')
        end
      end
    end
  end