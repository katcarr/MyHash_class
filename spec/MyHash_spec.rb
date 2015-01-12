require('rspec')
require('MyHash')

describe(MyHash) do
  describe("#store") do
    it("stores a key and value into the MyHash class and returns the value") do
      test_hash = MyHash.new()
      expect(test_hash.store(1, "one")).to(eq("one"))
    end
    it("stores multiple keys and values into the MyHash class one at a time and
        returns the last value") do
      test_hash = MyHash.new()
      test_hash.store(1, "one")
      expect(test_hash.store(2, "two")).to(eq("two"))
    end
    it("replaces a key's previous value with a new value") do
      test_hash = MyHash.new()
      test_hash.store(1, "one")
      expect(test_hash.store(1, "two")).to(eq("two"))
    end
  end

  describe('#fetch') do
    it("fetches the corresponding value for a key") do
      test_hash = MyHash.new()
      test_hash.store(1,"one")
      test_hash.store(2,"two")
      expect(test_hash.fetch(1)).to(eq("one"))
    end
    it("fetches the new value for a key after value reassignment") do
      test_hash = MyHash.new()
      test_hash.store(1,"one")
      test_hash.store(1,"two")
      expect(test_hash.fetch(1)).to(eq("two"))
    end

    it("returns Key not found if the key entered is not found in the MyHash") do
      test_hash = MyHash.new()
      test_hash.store(1,"one")
      test_hash.store(2,"two")
      expect(test_hash.fetch(5)).to(eq("key not found"))
    end
  end
end
