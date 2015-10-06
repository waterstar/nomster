class Place < ActiveRecord::Base
	belongs_to :user
    has_many :comments
    has_many :photos
    geocoded_by :address
    after_validation { geocode if self.errors.empty? }

    validates :name,:address,:description, :presence => true, :length => { :minimum => 3 }
end
