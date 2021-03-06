images_seeds_path = Pathname('db/seeds/images_seeds')

User.create! fullname: 'Armand Fardeau',
             email: 'fardeauarmand@gmail.com',
             password: 'adminadmin',
             password_confirmation: 'adminadmin'

user_zero = User.create! fullname: 'John Doe',
                         avatar: File.new(Rails.root.join(images_seeds_path, 'john_doe.jpg')),
                         email: 'johndoe@admin.com',
                         phone_number: '0147498143',
                         password: 'adminadmin',
                         password_confirmation: 'adminadmin'

office_zero = Office.create! office_type: 'Flat',
                             privacy_type: 'Entire place',
                             capacity: 4,
                             boards_number: 1,
                             meeting_room: 1,
                             listing_name: 'The best place to work',
                             summary: 'A very beautiful place, for concentration and mind consuming work.',
                             address: '22 rue de Rivoli 75001 Paris',
                             is_wifi: true,
                             is_tv: false,
                             is_locker: true,
                             is_pet_friendly: true,
                             is_coffee: true,
                             is_heating: true,
                             is_air: false,
                             is_kitchen: true,
                             price: 90,
                             active: true,
                             user_id: user_zero.id
office_zero.photos.create(image: File.new(Rails.root.join(images_seeds_path, 'coworking1.jpg')))

user_one = User.create! fullname: 'Jane Doe',
                        avatar: File.new(Rails.root.join(images_seeds_path, 'jane_doe.jpeg')),
                        email: 'janedoe@test.com',
                        phone_number: '0147498142',
                        password: 'adminadmin',
                        password_confirmation: 'adminadmin'

office_one = Office.create! office_type: 'House',
                            privacy_type: 'Private room',
                            capacity: 3,
                            boards_number: 2,
                            meeting_room: 2,
                            listing_name: 'A lovely place for business',
                            summary: 'Get back to work in our co-working !',
                            address: '22 rue du Chatelet 75001 Paris',
                            is_wifi: true,
                            is_tv: true,
                            is_locker: false,
                            is_pet_friendly: false,
                            is_coffee: true,
                            is_heating: true,
                            is_air: true,
                            is_kitchen: true,
                            price: 45,
                            active: true,
                            user_id: user_one.id
office_one.photos.create(image: File.new(Rails.root.join(images_seeds_path, 'coworking2.jpeg')))

user_two = User.create! fullname: 'Remy Bataille',
                        avatar: File.new(Rails.root.join(images_seeds_path, 'remy_bataille.png')),
                        email: 'remybataille@test.com',
                        phone_number: '0147498142',
                        password: 'adminadmin',
                        password_confirmation: 'adminadmin'

office_two = Office.create! office_type: 'Classic office',
                            privacy_type: 'Shared place',
                            capacity: 20,
                            boards_number: 20,
                            meeting_room: 20,
                            listing_name: 'The 71 in Montreuil',
                            summary: 'The 71 is the new fancy place to work in Montreuil.',
                            address: '71 Rue Robespierre, 93100 Montreuil',
                            is_wifi: true,
                            is_tv: true,
                            is_locker: true,
                            is_pet_friendly: false,
                            is_coffee: true,
                            is_heating: true,
                            is_air: true,
                            is_kitchen: true,
                            price: 120,
                            active: true,
                            user_id: user_two.id
office_two.photos.create(image: File.new(Rails.root.join(images_seeds_path, 'coworking3.jpg')))
