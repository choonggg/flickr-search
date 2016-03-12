class SearchController < ApplicationController
  def home
    @form = SearchForm.new
  end

  def index
    @form = SearchForm.new(params[:search_form])
    @images = @form.results
  end

  def show
    @image = Image.find_by(id: params[:id])
  end
end
