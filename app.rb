require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'sinatra/reloader'
require 'bundler/setup'
require 'rack-flash'

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
	if current_user == true
		erb :home
	else
		redirect '/sign-in'
	end
end

get '/sign-in' do
	erb :signin
end

post '/sign-in' do   
	@user = User.where(username: params[:username]).first   
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
