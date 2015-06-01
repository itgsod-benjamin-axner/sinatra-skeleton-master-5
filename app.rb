class App < Sinatra::Base
  enable :sessions

  get '/' do
    slim :index
  end

  get'/index' do
    slim :index
  end

  get '/login' do
    slim :login
  end

  post '/login' do
    teacher = Teacher.first(:conditions => [ 'lower(uname) = ?', params['uname'].downcase ])
    if teacher && teacher.pwd == params['pass']
      session[:teacher] = teacher.id
      redirect '/main'
    else
      redirect '/login'
    end
  end

  get '/main' do
    if session[:user]
      @user = User.get(session[:user])
      @lists = @user.lists
      slim :main
    else
      redirect '/'
    end
  end


end