class ImageUploader < CarrierWave::Uploader::Base
  storage :file

  include CarrierWave::MiniMagick

  process :resize_to_fit => [800, 800]

  version :thumb do
    process :resize_to_fill => [200,200]
  end
end
