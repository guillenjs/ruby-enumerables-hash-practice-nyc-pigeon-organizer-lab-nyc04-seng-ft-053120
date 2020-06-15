require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  # new = []
  # new2 = []
  #  data.each do|key, value|
  #     new << key
  #     new2 << value
  #   end

data.each_with_object({}) do |(k, v), result| #goes through each hash and value to return a hash
  v.each do |inner_key, inner_value| #this block will go in the inner key, inner value thats holds the names
      inner_value.each do |names|# this block will go through each name that we have
        if !result[names]
          result[names] = {}
        end
          if !result[names][k]
            result[names][k] = []
          end
          result[names][k] << inner_key.to_s

      end
    end
  end
end
