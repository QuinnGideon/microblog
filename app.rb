require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader'
require 'bundler/setup'
require 'rack-flash'
require './models'


enable :sessions
use Rack::Flash, :sweep => true

set :sessions, true
configure(:development){ set :database, 'sqlite3:microblog.sqlite3' }

def current_user
	if session[:user_id]
		@current_user = User.find(session[:user_id])
	end
end

get '/' do
	if current_user
		erb :home
	else
		redirect '/sign-in'
	end
end

get '/sign-in' do
	erb :signin
end
# thanks liana
post '/sign-in' do   
	@user = User.where(username: params[:username]).first 
	puts params.inspect
	puts @user.username  
	puts 
	if @user && @user.password == params[:password]     
		session[:user_id] = @user.id   
		flash[:notice] = "You've been signed in successfully."   
	else     
		flash[:alert] = "There was a problem signing you in."   
	end   
	redirect "/" 
end

get '/login-succeeded' do
	"<h1>You are now logged in</h1>"
end

get '/login-failed' do
	"<h1>Log in Failed</h1>"
end

get '/posts/new' do
	erb :new_post
end

post '/posts/create' do
	Post.create(params[:post])
end

get '/Logout' do
	@user = current_user
	if @user
			session.clear
	end		
	redirect '/'
	end


