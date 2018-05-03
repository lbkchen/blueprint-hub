class PagesController < ApplicationController
  def home
    @sprints = Sprint.all
    @sprint = Sprint.new
  end
end
