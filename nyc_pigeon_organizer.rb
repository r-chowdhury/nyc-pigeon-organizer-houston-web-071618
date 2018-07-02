def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |names|
        if !pigeon_list.has_key? (names)
          pigeon_list[names] = {}
        end 
        
        if !pigeon_list[names].has_key? (property)
          pigeon_list[names][property] = []
        end 
        
        if !pigeon_list[names][property].include?(attribute)
          pigeon_list[names][property].push(attribute.to_s)
        end
      end 
    end 
  end 
  return pigeon_list
end