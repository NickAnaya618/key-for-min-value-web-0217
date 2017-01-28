# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  else
    smallest_key = nil
    name_hash.collect do |name, number|
      if smallest_key == nil || number < smallest_key
        smallest_key = number
      end
    end

    name_hash.each do |name, value|
      if value == smallest_key
        return name
      end
    end
  end
end
