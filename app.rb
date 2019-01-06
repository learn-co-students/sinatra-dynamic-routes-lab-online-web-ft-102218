require_relative 'config/environment'

class App < Sinatra::Base
  # reverse name route
  get '/reversename/:name' do
    params[:name].reverse
  end

  # square number route
  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  #say phrase num times route
  get '/say/:number/:phrase' do
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :say
  end

  get '/:operation/:number1/:number2' do
    erb :operation
  end
end