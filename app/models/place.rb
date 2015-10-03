class Place < ActiveRecord::Base
	belongs_to :user
    geocoded_by :address
    after_validation :anyerror?

    validates :name,:address,:description, :presence => true, :length => { :minimum => 3 }

private
    def anyerror?
      if self.errors.any?
        return
      else
        geocode
      end
    end
end
