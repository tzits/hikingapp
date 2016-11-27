# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: 'toby', email: 'toby@toby.com', password_digest: 'password')
User.create(first_name: 'natalia', email: 'natalia@natalia.com', password_digest: 'password')
User.create(first_name: 'teddy', email: 'teddy@teddy.com', password_digest: 'password')

List.create(name: 'Hiking')
# Item.create(name: '', brand: '', weight: , size: , unit: , price: , image: 'https://www.rei.com')
Category.create(name: 'Pack')
Item.create(name: 'Atmos', brand: 'Osprey', weight: 4.2, size: 65, price: 260, unit: 'liters', image: 'https://www.rei.com/media/5e79d337-3acb-4494-86e1-fc455cbf40b4?size=2000%2520')
Item.create(name: "Blaze A.C.", brand: 'Granite Gear', weight: 2.85, size: 60, price: 240, unit: 'liters', image: 'https://www.rei.com//media/c31b67f8-3754-4ed9-b8bb-b39090f2002f')
Item.create(name: 'ACT Lite', brand: 'Deuter', weight: 3.9, size: 60, price: 209, unit: 'liters' , image: 'https://www.rei.com/media/1d9791c0-0064-4ac6-a093-3d2456746a94?size=2000')
Item.create(name: 'Stout', brand: 'Gregory', weight: 3.75, size: 65, price: 200, unit: 'liters', image: 'https://www.rei.com/media/1fa6c11f-fc8e-4892-9f3e-cbae6d03105b')
Item.create(name: 'Zulu', brand: 'Gregory', weight: 3.55, size: 65, price: 230, unit: 'liters', image: 'https://www.rei.com/media/d5abd906-31c0-45cf-a79c-4f5647bce168')
Item.create(name: 'Flash', brand: 'REI', weight: 3.5 , size: 65 , price: 200, unit: 'liters', image: 'https://www.rei.com/media/0bf66b86-fa2a-4bfe-8d5e-ea57dd75679e')
Item.create(name: 'Exos', brand: 'Osprey', weight: 2.5 , size: 58 , unit: 'liters', price: 220 ,image: 'https://www.rei.com//media/065a3d68-aa00-4b90-9ee9-5cf688a4f95b')
Item.create(name: 'Crown VC', brand: 'Granite Gear', weight: 2.1 , size: 60, unit: 'liters', price: 200,image: 'https://www.rei.com//media/e56a7a29-c729-43b2-9242-e738228de0e0')
Item.create(name: 'Croz', brand: 'Vaude', weight: 3, size: 48, unit: 'liters', price: 180, image: 'https://images-na.ssl-images-amazon.com/images/I/41KQEeGy3WL._UX342_.jpg')
Category.first.items.push(Item.first)
Category.first.items.push(Item.find(2))
Category.first.items.push(Item.find(3))
Category.first.items.push(Item.find(4))
Category.first.items.push(Item.find(5))
Category.first.items.push(Item.find(6))
Category.first.items.push(Item.find(7))
Category.first.items.push(Item.find(8))
Category.first.items.push(Item.find(9))

Category.create(name: 'Tent')

Item.create(name: 'Laser Ultra', brand: 'Terra Nova', weight: 1.1, size: 1, unit: 'people', price: 1000, image: 'http://content.backcountry.com/images/items/900/TNV/TNV0001/ONECOL.jpg')
Item.create(name: 'Flylite', brand: 'MSR', weight: 1.6, size: 2, unit: 'people', price: 350, image: 'http://content.backcountry.com/images/items/900/CAS/CAS003I/BL.jpg')
Item.create(name: 'Specialist Duo Shelter', brand: 'Sea to Summit', weight: 1.2, size: 1, unit: 'people', price: 500, image: 'http://content.backcountry.com/images/items/900/STS/STS0122/ONECOL.jpg')
Item.create(name: 'Fly Creek HV UL 1', brand: 'Big Agnes', weight: 1.7, size: 1, unit: 'people', price: 350, image: 'http://content.backcountry.com/images/items/1200/BAG/BAG000V/SIL.jpg')
Item.create(name: 'Blaze 1', brand: 'Nemo', weight: 1.75, size: 1, unit: 'people', price: 370, image: 'http://content.backcountry.com/images/items/medium/NEM/NEM004A/ONECOL.jpg')
Item.create(name: 'Carbon Reflex 2', brand: 'MSR', weight: 1.8, size: 2, unit: 'people', price: 500, image: 'http://content.backcountry.com/images/items/900/CAS/CAS007F/RD.jpg')
Item.create(name: 'Fly Creek HV UL 2', brand: 'Big Agnes', weight: 1.9, size: 2, unit: 'people', price: 390, image: 'http://content.backcountry.com/images/items/900/BAG/BAG000W/SIL.jpg')
Item.create(name: 'Blaze 2P', brand: 'Nemo', weight: 2, size: 2, unit: 'people', price: 450, image: 'http://content.backcountry.com/images/items/900/NEM/NEM004B/ONECOL.jpg')
Item.create(name: 'Tensegrity 2 Elite', brand: 'Sierra Designs', weight: 2.2, size: 2, unit: 'people', price: 490, image: 'http://content.backcountry.com/images/items/900/SDS/SDS003O/SIDEYEDETN.jpg')
Item.create(name: 'Copper Spur UL 1', brand: 'Big Agnes', weight: 2.1, size: 1, unit: 'people', price: 380, image: 'http://content.backcountry.com/images/items/900/BAG/BAG001F/TERCOT.jpg')
Item.create(name: 'Quarter Dome 2', brand: 'REI', weight: 3.1, size: 2, unit: 'people', price: 300, image: 'https://www.rei.com/media/bd845230-579e-4871-9e29-096066939066')
Category.second.items.push(Item.find(10))
Category.second.items.push(Item.find(11))
Category.second.items.push(Item.find(12))
Category.second.items.push(Item.find(13))
Category.second.items.push(Item.find(14))
Category.second.items.push(Item.find(15))
Category.second.items.push(Item.find(16))
Category.second.items.push(Item.find(17))
Category.second.items.push(Item.find(18))
Category.second.items.push(Item.find(19))
Category.second.items.push(Item.find(20))

Category.create(name: 'Sleeping Bag')
Item.create(name: 'Flash', brand: 'REI', weight: 1.75, size: 29, unit: "F", price: 0, image: 'https://www.rei.com/media/13cfda70-4b63-42d0-96f2-91a7a920fc6d')
Item.create(name: 'Spark SPI', brand: 'Sea to Summit', weight: 0.85, size: 46, unit: "F", price: 0, image: 'https://www.rei.com/media/d04806c9-a99b-44eb-87b1-d74437ca2809')
Item.create(name: '', brand: '', weight: 0, size: 0, unit: "", price: 0, image: 'https://www.rei.com')
Item.create(name: '', brand: '', weight: 0, size: 0, unit: "", price: 0, image: 'https://www.rei.com')
Item.create(name: '', brand: '', weight: 0, size: 0, unit: "", price: 0, image: 'https://www.rei.com')
Category.third.items.push(Item.find(21))
Category.third.items.push(Item.find(22))
Category.third.items.push(Item.find(23))
Category.third.items.push(Item.find(24))
Category.third.items.push(Item.find(25))

Category.create(name: 'Bear Gear')
Item.create(name: 'Major Bear Bag', brand: 'Ursack', weight: 0.5, size: 925, unit: 'cu. in', price: 90, image: 'https://www.rei.com/media/b7f63c51-c6aa-4946-96f7-1ebda0c34459')
Item.create(name: 'BV500', brand: 'Bear Vault', weight: 2.6, size: 700, unit: 'cu. in', price: 80,image: 'https://www.rei.com/media/f04e4f7f-f82a-4b7d-987e-7a90ba158f2b')
Item.create(name: 'BV450', brand: 'Bear Vault', weight: 2.1, size: 440, unit: 'cu. in', price: 67,image: 'https://www.rei.com/media/f14fc199-86ba-46ae-ab10-34611ac9e52b?size=2000')
Item.create(name: 'Ultrasil Drysack', brand: 'Sea to Summit', weight: 0.1, size: 793, unit: 'cu. in', price: 22,image: 'https://www.rei.com/media/88c701de-0aed-447a-a353-10e053b30db4')
Category.fourth.items.push(Item.find(26))
Category.fourth.items.push(Item.find(27))
Category.fourth.items.push(Item.find(28))
Category.fourth.items.push(Item.find(29))

Category.create(name: 'Water Filtration')
Item.create(name: 'Aquamira', brand: 'Aquamira', weight: 0, size: 0, unit: 'N/A', price: 40, image: 'https://www.rei.com/media/664c143c-2d5e-45dc-b6fb-1edd30f38bbf')
Item.create(name: 'Sawyer Squeeze', brand: 'Sawyer', weight: 0.2, size: 0, unit: 'N/A', price: 70, image: 'https://www.rei.com/media/3d9c2dd5-3439-4edb-8807-8cd40b5ca7b5')
Item.create(name: 'Hiker Water Filter', brand: 'Katadyn', weight: 0.7, size: 0, unit: 'N/A', price: 15, image: 'https://www.rei.com/media/f4b0e169-77bd-4ef9-9b38-bc5e017e3c57')
Category.fifth.items.push(Item.find(30))
Category.fifth.items.push(Item.find(31))
Category.fifth.items.push(Item.find(32))

Category.create(name: 'Cookware')
Item.create(name: 'PocketRocket', brand: 'MSR', weight: 0.2 , size: 0 , unit: 'liters', price: 40, image: 'https://www.rei.com/media/a93f95c1-365c-4b82-ac67-cb96a25fb4ff')
Item.create(name: 'Jetboil Flash', brand: 'Jetboil', weight: 1, size: 2, unit: 'liters', price: 100, image: 'https://www.rei.com/media/86bf9207-aa8c-480d-bda0-f3ad7e1d0995')
Item.create(name: 'WindBurner', brand: 'MSR', weight: 1, size: 2, unit: 'liters', price: 130, image: 'https://www.rei.com/media/1f849c2e-3734-4078-a647-f1816f0132a2')
Category.find(6).items.push(Item.find(33))
Category.find(6).items.push(Item.find(34))
Category.find(6).items.push(Item.find(35))


List.create(name: 'Biking')
List.create(name: 'Canoeing')
Category.create(name: 'Bike')
Category.create(name: 'Helmet')
Category.create(name: 'Bike Bag')
Category.create(name: 'Canoe')

List.first.categories.push(Category.first)
List.first.categories.push(Category.find(2))
List.first.categories.push(Category.find(3))
List.first.categories.push(Category.find(4))
List.first.categories.push(Category.find(5))
List.first.categories.push(Category.find(6))


List.second.categories.push(Category.find(2))
List.second.categories.push(Category.find(3))
List.second.categories.push(Category.find(6))
List.second.categories.push(Category.find(7))
List.second.categories.push(Category.find(8))
List.second.categories.push(Category.find(9))
List.last.categories.push(Category.find(10))
List.last.categories.push(Category.find(2))
List.last.categories.push(Category.find(3))
List.last.categories.push(Category.find(5))
List.last.categories.push(Category.find(6))


UserListCategoryItem.create(user_id: 1, list_id: 1, category_id: 1, item_id: 1)
UserListCategoryItem.create(user_id: 1, list_id: 1, category_id: 1, item_id: 2)

Checklist.create(name: 'hiking list')
ChecklistItem.create(name: 'rope', checked: false, advice: 'good for bear lines', checklist_id: 1)
ChecklistItem.create(name: 'poles', checked: false, advice: 'essential to save your knees', checklist_id: 1)
ChecklistItem.create(name: 'sleeping pad', checked: false, advice: 'you could sleep on the ground, but this is more pleasant', checklist_id: 1)

Checklist.create(name: 'biking list')
Checklist.create(name: 'canoeing list')
User.first.checklists.push(Checklist.find(1))
User.first.checklists.push(Checklist.find(2))
User.first.checklists.push(Checklist.find(3))
