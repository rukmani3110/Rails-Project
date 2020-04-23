class SessionsController < ApplicationController
#skip_before_action :authorized, only: [:new, :create, :welcome]
 set_tab :login
def new
end
def login
end
def add_project
                @project =  Assignment.create :name => params[:name], :user_id => session[:user_id], :type_id => params[:category]
                if @project.save
                        redirect_to :action => :show_projects
                        session[:searchCategory] = nil
                        session[:type_id] = 0
                else
                        render :action => :show_projects
                end
end
def search_project
  #session[:searchCategory] =

  if params[:searchCategory].nil? or params[:searchCategory] == "0"
    session[:type_id] = 0
  else
    session[:type_id] = params[:searchCategory]
  end
  session[:searchName] = ""
  redirect_to '/show_projects'

end
def search_project_by_name
  session[:searchName] = params[:searchName]
    redirect_to '/show_projects'
end

def create
   @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/show_projects'
   else
      redirect_to '/login', notice: "Username or password incorrect"
   end
end
def page_requires_login
end

def destroy
    session[:user_id] = nil
    session[:searchCategory] = nil
    session[:type_id] = 0
    session[:searchName] = ""
    redirect_to '/welcome'
  end
end
