require 'opsview_rest'

# Connection Establishment
connection = OpsviewRest.new("http://ip/", :username => ENV['OPSVIEW_USERNAME'], :password => ENV['OPSVIEW_PASSWORD'])

# Testing Connection
print "#{connection.inspect}"

# Listing hosts

print "#{connection.list(:type => "host")}"
