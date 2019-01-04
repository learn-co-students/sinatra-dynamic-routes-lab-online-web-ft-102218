require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end
  
  get '/square/:number' do
    num = params[:number].to_i 
    "#{num * num}"
  end
  
  get '/say/:number/:phrase' do
    phrase = ''
    params[:number].to_i.times do
      phrase += params[:phrase]
    end
    phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(' ')}."
  end
  
  get '/:operation/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    op = params[:operation].downcase
    result = case op
    when 'add'      
      num1 + num2
    when 'subtract'
      num2 - num1
    when 'multiply'
      num1 * num2
    when 'divide'
      num1 / num2
    else
      'invalid operation'
    end
    result.to_s
  end
end