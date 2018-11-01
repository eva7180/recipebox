require 'uploads'

class Recipe < ApplicationRecord
	belongs_to :user, optional: true

	has_many :ingredients, inverse_of: :recipe
	has_many :directions, inverse_of: :recipe
	accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :directions, reject_if: proc { |attributes| attributes['step'].blank? }, allow_destroy: true
	
	validates :title, :description, presence: :true

	has_one_attached :image

	validate :image_format


	def image_variant
  	variation =
    ActiveStorage::Variation.new(Uploads.resize_to_fill(width: 400, height: 400, blob: image.blob))
  	ActiveStorage::Variant.new(image.blob, variation)
	end


	private

	def image_format
  	return unless image.attached?
  	return if image.blob.content_type.start_with? 'image/'
  	image.purge_later
  	errors.add(:image, ': File type is not allowed')
	end

end
