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
	@posts = Post.all
	if current_user
		erb :posts
	else
		erb :home
	end
end

get '/sign-in' do
	erb :signin
end
# thanks liana
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

get '/Posts' do
	@posts = Post.all
	erb :posts
end

post '/Posts' do
	Post.create(params[:post])
	redirect '/'
end

get '/Logout' do
	@user = current_user
	if @user
			session.clear
	end		
	redirect '/'
end

get '/Settings' do
	@user = current_user

	erb :settings
end

post '/edit' do
	@user = current_user
	@user.update(username: params[:username], password: params[:password], email: params[:email])
		erb :edit


end


get '/delete-account' do
	@user = current_user
	@user.destroy
	session.clear
	redirect '/sign-in'
end


