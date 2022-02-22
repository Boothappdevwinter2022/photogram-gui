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
end