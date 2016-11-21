# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: 'toby')
User.create(first_name: 'natalia')
User.create(first_name: 'teddy')
List.create(name: 'Hiking')
List.create(name: 'Biking')
List.create(name: 'Canoeing')
Category.create(name: 'Pack')
Category.create(name: 'Tent')
Category.create(name: 'Sleeping Bag')
Category.create(name: 'Bear Gear')
Category.create(name: 'Water Filtration')
Category.create(name: 'Cookware')
Item.create(name: 'banana')
Item.create(name: 'apple')
Item.create(name: 'broccoli')
Item.create(name: 'kale')
Item.create(name: 'chocolate')
Item.create(name: 'cookies')

Category.first.items.push(Item.first)
Category.first.items.push(Item.find(2))
Category.find(2).items.push(Item.find(3))
Category.find(2).items.push(Item.find(4))
Category.last.items.push(Item.find(5))
Category.last.items.push(Item.last)

List.first.categories.push(Category.first)
List.first.categories.push(Category.find(2))
List.first.categories.push(Category.find(3))
List.first.categories.push(Category.find(4))
List.first.categories.push(Category.find(5))
List.first.categories.push(Category.find(6))

UserListCategoryItem.create(user_id: 1, list_id: 1, category_id: 1, item_id: 1)
UserListCategoryItem.create(user_id: 1, list_id: 1, category_id: 1, item_id: 2)
