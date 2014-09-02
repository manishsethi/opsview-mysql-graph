require 'opsview_rest'

# Connection Establishment
connection = OpsviewRest.new("http://54.251.90.183/", :username => ENV['OPSVIEW_USERNAME'], :password => ENV['OPSVIEW_PASSWORD'])

# Testing Connection
print "#{connection.inspect}"

# Listing hosts

print "#{connection.list(:type => "host")}"
