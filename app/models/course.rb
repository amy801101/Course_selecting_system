class Course < ActiveRecord::Base
	has_many :shopping_lists
	has_many :students, :through => :shopping_lists
end
