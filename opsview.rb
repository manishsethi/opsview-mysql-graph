require 'opsview_rest'

# Connection Establishment
connection = OpsviewRest.new(ENV['SERVER_LINK'], :username => ENV['OPSVIEW_USERNAME'], :password => ENV['OPSVIEW_PASSWORD'])

# Testing Connection
print "#{connection.inspect}"

# Listing hosts

def find(options = {})
    options = {
     	:type => "host",
 	:rows => "all",
 	:name => nil
 	}.update options
 
    if options[:name].nil?
      raise ArgumentError, "Need to specify the name of the object."
    else
      print"#{get("config/#{options[:type]}?s.name=#{options[:name]}?rows=#{options[:rows]}")}"
 end
end 

#print "#{connection.list(:type => "host", :name => "BRMS_Mysql", :ip => "54.85.57.94")}"

#print "#{connection.list(:ip => "54.85.57.94")}"

