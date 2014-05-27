class Student < ActiveRecord::Base
	has_many :shopping_lists
	has_many :courses, :through => :shopping_lists

	validates_presence_of :studentId
	validates_presence_of :name

end
