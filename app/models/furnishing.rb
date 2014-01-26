class Furnishing < ActiveRecord::Base

  validates_presence_of :name, :description, :furnishing_type, :shape, :seats

  mount_uploader :image_main, ImagesUploader
  mount_uploader :image_rollover, ImagesUploader
  mount_uploader :image_dimensions, ImagesUploader
  mount_uploader :image_other, ImagesUploader

  def self.permitted
    ignore = %w{ id created_at updated_at }
    @permitted ||= self.attribute_names.map { |name| name.to_sym unless ignore.include?(name) }.compact
  end

end
