class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  def self.permitted
    ignore = %w{ id created_at updated_at }
    @permitted ||= self.attribute_names.map { |name| name.to_sym unless ignore.include?(name) }.compact
  end

end
