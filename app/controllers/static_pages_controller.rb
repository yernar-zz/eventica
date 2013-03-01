class StaticPagesController < ApplicationController
  def home
  	@events = Event.order(:title)
  end

  def steps
  end

  def about  	
  end

  def contacts  	
  end
end
