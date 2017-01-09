module FlickrHelper
  def user_photos(user_id, photo_count = 12)
    flickr.photos.search(user_id: user_id).first(photo_count)
  end

  def get_photo_url(photo)
    "https://farm#{photo['farm']}.staticflickr.com/#{photo['server']}/#{photo['id']}_#{photo['secret']}.jpg"
  end
end