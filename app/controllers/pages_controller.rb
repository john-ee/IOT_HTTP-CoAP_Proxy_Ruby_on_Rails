class PagesController < ApplicationController
  def home
  end

  def arduino
     client = CoAP::Client.new(host: params[:ip])
     answer = client.get('/light')
     @light = answer.payload
     answer = client.get('/temperature')
     @temperature = answer.payload
     answer = client.get('/humidity')
     @humidity = answer.payload
  end
end
