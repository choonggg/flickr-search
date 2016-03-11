class SearchForm
  include ActiveModel::Model

  attr_reader :search

  def initialize(params={})
    @params = params
    initialize_flickraw if params.present?
  end
  
  def results
    results = flickr.photos.search(tags: @params[:search], per_page: 6)
    results.map do |photo|
      info = flickr.photos.getInfo(photo_id: photo.id)

      photo_result = { title: photo.title, image_url: FlickRaw.url(info), date_taken: info.dates.taken }
    end
  end

  private

  def initialize_flickraw
    FlickRaw.api_key = ENV['FLICKR_API_KEY']
    FlickRaw.shared_secret = ENV['FLICKR_API_SECRET']
  end
end
