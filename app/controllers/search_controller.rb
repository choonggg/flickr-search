class SearchController < ApplicationController
  def home
    @form = SearchForm.new
  end

  def index
    @form = SearchForm.new
  end

  def show
    @form = SearchForm.new
  end
end
