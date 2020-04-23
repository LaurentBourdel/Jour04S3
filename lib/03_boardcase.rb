class BoardCase

	attr_accessor :case_value, :case_id

	def initialize(value,id)
			@case_value = value
			@case_id = id
  end

  def cas_value_str
			return @case_value.to_s
  end

  def cas_id_str
			return @case_id.to_s
  end

end