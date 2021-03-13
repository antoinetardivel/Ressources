class PagesController < ApplicationController
  def home
    @ressources=Ressource.all
    @categories=Category.all
    @subcategories=Subcategory.all
  end
  def propositions
  end
end
