class Carousel < ActiveRecord::Base
  validates_presence_of :image
  before_save :default_order

  mount_uploader :image, ImagesUploader

  def self.permitted
    ignore = %w{ id created_at updated_at }
    @permitted ||= self.attribute_names.map { |name| name.to_sym unless ignore.include?(name) }.compact
  end

  private

  def default_order
    self.order = (self.order) ? self.order : 900
  end

end
