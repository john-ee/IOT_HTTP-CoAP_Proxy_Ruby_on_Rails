class HomeController < ApplicationController
	./client get coap://coap.me:5683/.well-known/core
	def home
		client = CoAP::Client.new
	    answer = client.get('192.168.0.5', 5683, '/light')
	    @test = answer.payload
	end
end
