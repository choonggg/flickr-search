class SearchForm
  include ActiveModel::Model

  attr_reader :search

  def initialize(params={})
    super(params)
  end
end
