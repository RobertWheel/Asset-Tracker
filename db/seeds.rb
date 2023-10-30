# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


5.times do |index|
  employee = Employee.create(

  :first_name => "Employee ",
  :last_name => " #{index + 1}"

  )
end


manufacturer_hashes = [ 
  {
    :name => "Apple",
    :website => "apple.com"
  },
  {
     :name => "Microsoft",
     :website => "Microsoft.com"
  },
  {
    :name => "hp",
    :website => "hp.com"
  },
  {
    :name => "Dell",
    :website => "Dell.com"
  },
  {
    :name => "Samsung",
    :website => "Samsung.com"
  }
]

Manufacturer.create(manufacturer_hashes)


category_hashes = [ 
  {
    :name => "Smart Phone",
  },
  {
     :name => "Ipad",
  },
  {
    :name => "Desktop",
  },
  {
    :name => "Laptop",
  },
  {
    :name => "TV",
  }
]

Category.create(category_hashes)




5.times do |index|
   software = Software.create(
     :name => "Software #{index + 1}",
     :license_count => rand(1..5),
    )   

   employee = Employee.all[index % Employee.count]
   software.employees << employee
end








5.times do |index|
   device = Device.create(
     :name => "Device #{index + 1}",
     :manufacturer => Manufacturer.first,
     :category => Category.first,
     :employee => Employee.all[index % Employee.count]
    )   
end


