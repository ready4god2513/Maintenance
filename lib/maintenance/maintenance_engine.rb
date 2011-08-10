module Maintenance
  
  class Engine < Rails::Engine
    
    MyEngine::Engine.routes.draw do
      constraints MaintenanceMode do
        constraints IpRestrictor do
          match "*a" => "static#maintenance"
        end
      end
    end
    
  end
  
  
  class IpRestrictor
    
    def initialize(ip_addresses = {})
      @ip_addresses = ip_addresses
    end
    
    def self.matches?(request)
      request.ip =~ /127.0.0.1/
    end
  end


  class MaintenanceMode
    def self.matches?(request)
      FileTest.exist?("maintenance.html")
    end
  end
  
end