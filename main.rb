require 'open-uri'

url = 'https://newsapi.org/v2/everything?'\
      'q=Youtuber&'\
      'sortBy=popularity&'\
      'apiKey=cc4fca55933b41caafd2f58dfe8d882e'

req = open(url)

response_body = req.read

puts response_body

fh = File.open('newsapi.json', 'w')
fh.puts response_body
fh.close