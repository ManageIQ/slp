require "slp/slp"
require "slp/version"

class SLP
  attr_reader :handle
  
  def initialize(language = nil, async = false)
    @handle = self.class.open(language, async)
  end
  
  def close
    self.class.close(handle)
  end
  
  def find_services(service_type, scope_list = nil, filter = nil)
    self.class.find_services(handle, service_type, scope_list, filter)
  end
  
  def find_attributes(url, scope_list = nil, attribute_ids = nil)
    attrs = self.class.find_attributes(handle, url, scope_list, attribute_ids)

    attr_hash = {}
    attr_array = attrs[1...-1].split("),(")
    attr_array.each { |attr| attr_hash.store(*attr.split("=")) }
    
    if (rps = attr_hash['RegisteredProfilesSupported'])
      attr_hash['RegisteredProfilesSupported'] = rps.split(',')
    end
    
    attr_hash
  end
  
  def parse_service_url(url)
    self.class.parse_service_url(url)
  end
end
