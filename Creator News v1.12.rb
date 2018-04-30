require 'rubygems'
require 'open-uri'
require 'json'

url = 'https://newsapi.org/v2/everything?'\
      'Q=content creators&'\
      'sortBy=relevancy&'\
      'from=d.month_before.strftime("%d/%m/%Y")&'\
      'to=d.strftime("%d/%m/%Y")&'\
      'apiKey=cc4fca55933b41caafd2f58dfe8d882e'

req = open(url)

response_body = req.read

puts response_body

fh = File.open('Creator News.json', 'w')
fh.puts response_body
fh.close
fh = Flile.open("Creator News.json")
json = file.read
puts json