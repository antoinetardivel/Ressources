class PagesController < ApplicationController
  def home
    @ressources=Ressource.all
  end
end
