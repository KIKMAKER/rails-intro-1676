class PagesController < ApplicationController

  def friends
    # define an instance variable that will be available in views/pages/friends.html.erb
    @friends = ["Jack", "Kiki", "ThomASS", "Gem", "Luvo", "Terence"]
    # once we have a database we can fill our variables with active record requests
    # @friends = Friend.all
    # raise
    if params[:friend]
      # reassign @friends to be the array of friends matching the param
      @friends = @friends.select { |friend| friend.start_with?(params[:friend]) }
    end
  end

  # controller actions are triggered by routes
  def about
    # and trigger views with the same name
  end
end
