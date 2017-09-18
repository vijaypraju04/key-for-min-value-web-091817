# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  return nil if name_hash == {}
  temp_key = ""
  temp_value = ""
  name_hash.each do |key, value| #blake: 500
    if (temp_value == "") #if first time we run and temp_value hasnt been assigned, assign it
      temp_key = key
      temp_value = value

    elsif (value < temp_value) #if we have a temp_value, compare the current value to it
      temp_key = key
      temp_value = value
    end
  end
  temp_key
end
