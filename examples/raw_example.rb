require 'slp'

handle = SLP.open(nil, false)
services = SLP.find_services(handle, "service:wbem", nil, nil)
  
services.each do |s|
  puts "*** Service :#{s}"
  attrs = SLP.find_attributes(handle, s, nil, nil)
  
  attr_array = attrs[1...-1].split("),(")
  h = {}
  attr_array.each { |attr| h.store(*attr.split("=")) }
  h.each { |k,v| puts "\t#{k} => #{v}" }
  puts "***"
  puts
end
SLP.close(handle)
