require 'sinatra'

class SinatraWTF < Sinatra::Base
	get '/' do
		"<h1>Sinatra? Runnning?</h1>"
	end

	get '/jesus' do
		"<h2>#jesus</h2>"
	end

	get '/:age' do
		"Hi, I'm #{params[:age]} years old!"
	end
end

