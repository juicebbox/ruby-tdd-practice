class Factory
  attr_reader :name, :max_storage, :level, :experience, :exp_to_next_level

  def initialize(name, max_storage = 5)
    @name = name
    @max_storage = max_storage
    @level = 1
    @experience = 0
    @exp_to_next_level = 100
    @storages = []
  end

  def add_storage(size = @max_storage, name = '')
    @max_storage -= size
    storage = Storage.new(get_storage_name(name))
    storage.size = size
    @storages << storage
  end

  def storages
    names = ''
    @storages.each do |storage|
      ", " if !names.empty?
      names += storage.name
    end
    names
  end
  
  private

  def get_storage_name(name)
    return @name + ' Storage' if name.empty?
    name
  end
end
