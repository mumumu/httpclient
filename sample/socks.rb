require 'httpclient'

#  ssh -fN -D 9999 remote_server
clnt = HTTPClient.new('socks4://localhost:9999')

#clnt = HTTPClient.new('socks5://localhost:9999')
#clnt = HTTPClient.new('socks5://username:password@localhost:9999')

#socks_proxy = ENV['SOCKS_PROXY']
#clnt = HTTPClient.new(socks_proxy)

target = 'http://www.example.com/'
puts clnt.get(target).content

target = 'https://www.google.co.jp/'
puts clnt.get(target).content
