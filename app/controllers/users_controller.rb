class UsersController < ApplicationController
  def index
    @list_of_users = User.all
    render ({ :template => "user_templates/index.html.erb"})
  end

  def show_user
    @url_username = params.fetch("path_id")
    matching_usernames = User.where({ :username => @url_username})
    @the_user = matching_usernames.at(0)

    render ({ :template => "user_templates/show_user.html.erb"})
  end

  def add_user
    input_username = params.fetch("query_username")

    a_new_user = User.new
    a_new_user.username= input_username
    a_new_user.save

    redirect_to("/users/" + a_new_user.username)
  end

  def update_user
    input_username = params.fetch("query_username")

    the_user = User.where({ :id => params.fetch("path_id") }).at(0)

    the_user.username = input_username
    the_user.save

    redirect_to("/users/" + the_user.username)
  end
end