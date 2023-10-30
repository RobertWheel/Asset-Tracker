# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Employee.create({
    :first_name => "Employee 5",
    :last_name => "Hong"
})

Employee.create({
    :first_name => "Employee 4",
    :last_name => "Rodriguez"
})

Employee.create({
    :first_name => "Employee 3",
    :last_name => "noe"
})

Employee.create({
    :first_name => "Employee 2",
    :last_name => "Doe"
})

Employee.create({
    :first_name => "Employee 1",
    :last_name => "Rueda"
})




Manufacturer.create({
     :name => "Apple",
     :website => "apple.com"
})
Manufacturer.create({
     :name => "Microsoft",
     :website => "Microsoft.com"
})
Manufacturer.create({
     :name => "hp",
     :website => "hp.com"
})
Manufacturer.create({
     :name => "Dell",
     :website => "Dell.com"
})
Manufacturer.create({
     :name => "Samsung",
     :website => "Samsung.com"
})

