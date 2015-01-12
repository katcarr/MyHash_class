class MyHash
  define_method(:initialize) do
    @my_hash_array = []
  end

  define_method(:store) do |key,value|

    @my_hash_array.each do |key_value_pair|
      if key_value_pair[0] == key
        key_value_pair[1] = value
        return value
      end
    end

    key_value_array = []

    key_value_array.push(key)
    key_value_array.push(value)

    @my_hash_array.push(key_value_array)

    value
  end

  define_method(:fetch) do |key|
    @my_hash_array.each do |key_value_pair|
      if key == key_value_pair[0]
        return key_value_pair[1]
      end
    end
    "key not found"
  end



end
