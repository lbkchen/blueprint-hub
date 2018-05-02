class PagesController < ApplicationController
  def home
    @sprints = Sprint.all
  end
end
