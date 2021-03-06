# This is a practice TDD project
# First I have absolutely no idea of what would i create.
# I do this for two main reasons:
# - practice what I have read so far about TDD and ruby
# - have fun

describe Factory do
  let (:factory) {Factory.new ('Test Factory')}

  context 'initialization' do

    it 'can be created and given name' do
      factory
    end

    it "can show it's name" do
      expect(factory.name).to eq 'Test Factory'
    end

    it "can have level" do
      expect(factory.level).to eq 1
    end

    it "can have maximum storage size" do
      expect(factory.max_storage).to eq 5
    end

    it "can have production experience" do
      expect(factory.experience).to eq 0
    end

    it "can show how much experience is needed to next level" do
      expect(factory.exp_to_next_level).to eq 100
    end
  end

  context 'storage' do
    it "can add a new storage" do
      factory.add_storage
    end

    it "can show all storages' names" do
      factory.add_storage
      expect(factory.storages).to eq 'Test Factory Storage'
    end
  end
end

describe Storage do
  let (:storage) {Storage.new('Test Factory Storage')}
  context 'Initialization' do
    it 'can be initialized by name' do
      storage
    end

    it "can show it's name" do
      expect(storage.name).to eq('Test Factory Storage')
    end
  end

  context '#size' do
    it 'can be accessed' do
      expect(storage.size).to eq 0
    end

    it 'can be changed' do
      storage.size = 10
      expect(storage.size).to eq 10
    end
  end
end
