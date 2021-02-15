class Person
  def initialize(accidental_attributes)
    accidental_attributes.each do |term, definition|
      self.class.attr_accessor(term)
      self.send(("#{term}="), definition)
    end
  end
end