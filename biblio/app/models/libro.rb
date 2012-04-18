class Libro < ActiveRecord::Base
	default_scope :order => 'titulo'
	has_many :autors
	before_destroy :ensure_not_referenced_by_any_line_item
	
	def ensure_not_referenced_by_any_autor
		if autor.empty?
			return true
		else
			errors.add(:base, 'necesita autores')
			return false
		end
	end


end
