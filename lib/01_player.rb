class Player

	attr_accessor :name, :count, :choice, :mark

	def initialize(p_name, p_choice, p_count, p_mark)
    @name = p_name
    @choice = p_choice
    @count = p_count
    @mark = p_mark
  end

end