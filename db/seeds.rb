# activity1 = Activity.create(name: "Pick up Litter", description:"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", image:"https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/greece.jpg",organisation: organisation1)
# activity2 = Activity.create(name: "Participate in Fundraiser", description:"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", image:"https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/greece.jpg", organisation: organisation1)
# activity3 = Activity.create(name: "Animal Walfare", description:"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", image:"https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/greece.jpg", organisation: organisation1)
# activity4 = Activity.create(name: "Emergency Support", description:"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", image:"https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/greece.jpg", organisation: organisation1)
# *****************************************************************

require 'csv'
Activity.destroy_all
organisation1 = Organisation.create(name: "Organisation1")
csv_file = 'lib/assets/activity_database.csv'
@activities = []
CSV.foreach(csv_file, headers: :first_row, header_converters: :symbol) do |row|
  row[:id] = row[:id].to_i # Convert column to Integer
  row[:name] = row[:name]   # Convert column to boolean
  row[:description] = row[:description]
  row[:image] = row[:image]
  row[:organisation] = organisation1
  @activities << Activity.create(row)
end


csv_file_2 = 'lib/assets/personality_database.csv'
@personalities = []
CSV.foreach(csv_file_2, headers: :first_row, header_converters: :symbol) do |row|
  row[:id] = row[:id].to_i # Convert column to Integer
  row[:name] = row[:name]   # Convert column to boolean
  row[:description] = row[:description]
  row[:image] = row[:image]
  @personalities << Personality.create(row)
end

csv_file_3 = 'lib/assets/Type_CSV.csv'
@types = []
CSV.foreach(csv_file_3, headers: :first_row, header_converters: :symbol) do |row|
  row[:id] = row[:id].to_i # Convert column to Integer
  row[:name] = row[:name]   # Convert column to boolean
  row[:image] = row[:image]
  @types << Type.create(row)
end

csv_file_4 = 'lib/assets/Filter_CSV.csv'
@filters = []
CSV.foreach(csv_file_4, headers: :first_row, header_converters: :symbol) do |row|
  row[:id] = row[:id].to_i # Convert column to Integer
  row[:activity_id] = row[:activity_id].to_i   # Convert column to Integer
  row[:type_id] = row[:type_id].to_i   # Convert column to Integer
  @filters << Filter.create(row)
end


# fake user
User.create(name:"saki", email:"saki@gmail.com", password:"123456", personality_id: 1)
