ComfyGallery.configure do |config|

  # Just like CMS, photos are uploaded through Paperclip and can support filesystem or s3 storage.
  #   config.upload_photo_options = { :storage => :filesystem }

  # set the cms admin path if you have changed it for CMS
  #   config.admin_route_prefix = 'admin'

  # Controller that should be used for admin area
  #   config.admin_controller = 'ApplicationController'

  # Form builder
  #   config.form_builder = 'ComfyGallery::FormBuilder'

  Gallery::Gallery.attr_accessible :title, :identifier, :description, :full_width, :full_height, :force_ratio_full, :thumb_width, :thumb_height, :force_ratio_thumb
  Gallery::Photo.attr_accessible :gallery, :title, :image, :description
end
