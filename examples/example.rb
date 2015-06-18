require 'slp'
slp = SLP.new

slp.find_services("service:wbem").each do |surl|
  puts "*** #{surl}"
  slp.parse_service_url(surl).each { |k,v| puts "\t\t#{k} => #{v}" }
  puts
  attrs = slp.find_attributes(surl)
  attrs.each do |ak, av|
    next if ak == 'RegisteredProfilesSupported'
    puts "\t#{ak} => #{av}"
  end
  if (rps = attrs['RegisteredProfilesSupported'])
    puts "\t*** RegisteredProfilesSupported:"
    rps.each { |p| puts "\t\t#{p}" }
  end
end
slp.close
