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
   Software.create(
     :name => "Software #{index + 1}",
     :license_count => rand(1..5),
    )   
end

5.times do |index|
   Device.create(
     :name => "Smart Phone #{index + 1}",
     :manufacturer => Manufacturer.first,
     :category => Category.first,
     :employee => Employee.all[index % Employee.count]
    )   
end



5.times do |index|
   device = Device.create(
     :name => "Ipad #{index + 1}",
     :manufacturer => Manufacturer.second,
     :category => Category.second,
     :employee => Employee.all[index % Employee.count]
    )   
end

3.times do
   Employee.all.each do |employee|
     employee.softwares << Software.find(rand(1..5))
   end
end
