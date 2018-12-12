require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.map do |key, value|
      value
    end.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @value = params[:number1].to_i + params[:number2].to_i
      "#{@value}"
    when "subtract"
      @value = params[:number2].to_i - params[:number1].to_i
      "#{@value}"
    when "multiply"
      @value = params[:number2].to_i * params[:number1].to_i
      "#{@value}" 
    when "divide"
      @value = params[:number1].to_i / params[:number2].to_i
      "#{@value}"
    end
  end
end