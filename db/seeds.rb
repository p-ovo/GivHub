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
