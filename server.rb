require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  #instructions for what to do when user visits '/home' will go here
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get 'gallery' do
  redirect to ('/portfolio')
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['photography', 'art', 'music', 'films', 'economics']
  erb :about_me
end

get '/favourites' do
  @fav_links = ['https://www.instagram.com/', 'https://www.maekan.com/','https://soundcloud.com/']
  erb :favourites
end
