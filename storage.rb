class Storage
  attr_reader :name
  attr_accessor :size

  def initialize(name)
    @name = name
    @size = 0
  end
end
