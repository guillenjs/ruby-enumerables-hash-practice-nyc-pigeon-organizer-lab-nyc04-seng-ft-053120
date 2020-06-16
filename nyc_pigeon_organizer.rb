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
binding.pry
        if !result[names]# if the combination of result[names] doesnt exist
          result[names] = {} #then result name goes into hash
        end
          if !result[names][k] #if the combination of !result[names][k] doesnt exist
            result[names][k] = []#then combination goes into array
          end
          result[names][k] << inner_key.to_s #return new key data combination and push the inner key as values

      end
    end
  end
end
