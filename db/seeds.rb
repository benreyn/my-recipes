# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
chefs = Chef.create([{chefname: "bob", email: "bob@example.com"},
                     {chefname: "john", email: "john@example.com"},
                     {chefname: "bill", email: "bill@example.com"}])

chef = Chef.first
(1..3).each do |n|
  chef.recipes.create(name: "example-recipe-#{n}",
                      summary: "summary for example-recipe-#{n}",
                      description: "Steps for example-recipe-#{n}
                                    step 1. Do some stuff
                                    step 2. Do some more stuff
                                    step 3. Finish it up")
end
chef = Chef.find(2)
(4..6).each do |n|
  chef.recipes.create(name: "example-recipe-#{n}",
                      summary: "summary for example-recipe-#{n}",
                      description: "Steps for example-recipe-#{n}
                                    step 1. Do some stuff
                                    step 2. Do some more stuff
                                    step 3. Finish it up")
end
chef = Chef.last
(7..10).each do |n|
  chef.recipes.create(name: "example-recipe-#{n}",
                      summary: "summary for example-recipe-#{n}",
                      description: "Steps for example-recipe-#{n}
                                    step 1. Do some stuff
                                    step 2. Do some more stuff
                                    step 3. Finish it up")
end
