# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require "open-uri"

Bike.destroy_all
Reservation.destroy_all

user = User.all.first


#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
   bike = Bike.create!(title: 'Cube Racing Bicycle', description: 'I really love this bike, you can drive really fast and smooth!', price: 30, address: 'Sendlingerstraße 2 Munich', user: user)
   images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710088/_59_havqp3.jpg', 'https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710087/_59_1_e1wqkx.jpg']
   images.each do |image|
     file = URI.open(image)
     bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
   end

    bike = Bike.create!(title: '30 years old Racing Bike', description: 'I use this bike already many years but it still works really well.', price: 10, address: 'Harthauserstraße 5 Munich', user: user)
    images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710086/_59_2_t5ryvt.jpg', 'https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710086/_59_3_pya4yp.jpg']
    images.each do |image|
      file = URI.open(image)
      bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
    end

    bike = Bike.create(title: 'Colnago Mexico Bike', description: 'Not a lot to say you will like riding it.', price: 17, address: 'Kaiserstraße 8 Munich', user: user)
    images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710086/_59_4_n92dqt.jpg', 'https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710087/_59_5_u6o0oc.jpg']
    images.each do |image|
      file = URI.open(image)
      bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
    end

    bike = Bike.create(title: 'Blue Bike', description: 'Not the best bike but really cheap.', price: 5, address: 'Pachemstraße 3 Munich', user: user)
    images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710087/_59_6_lzgfng.jpg', 'https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710087/_59_7_jn4tms.jpg']
    images.each do |image|
      file = URI.open(image)
      bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
    end

    bike = Bike.create(title: 'Cervelo P2C Carbon Triathlon', description: 'Bike in really good condition.', price: 10, address: 'Türkenstraße 78 Munich', user: user)
    images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710087/_59_8_zn3gyx.jpg', 'https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710087/_59_9_micpjn.jpg']
    images.each do |image|
      file = URI.open(image)
      bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
    end

    bike = Bike.create(title: 'Woman Bike', description: 'This Bicycle is 70 years old but nevertheless it is nice riding it.', price: 4, address: 'Sadelerstraße 2 Munich', user: user)
    images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710087/_59_10_odemne.jpg', 'https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710087/_59_11_mqgvfn.jpg']
    images.each do |image|
      file = URI.open(image)
      bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
    end

    bike = Bike.create(title: 'Puky Bike for Kids', description: 'Perfect bike for the little ones.', price: 6, address: 'Prinzregenetenstraße 45 Munich', user: user)
    images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710087/_59_12_xz3exd.jpg', 'https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710088/_59_13_clxhwg.jpg']
    images.each do |image|
      file = URI.open(image)
      bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
    end

    bike = Bike.create(title: 'Vintage KTM Bicycle', description: 'It is better than it looks.', price: 7, address: 'Hohenzollernstraße 24 Munich', user: user)
    images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710088/_59_14_xcxgjz.jpg']
    images.each do |image|
      file = URI.open(image)
      bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
    end

    bike = Bike.create(title: 'Beach Cruiser Vintage Bike', description: 'You wanna look cool on a bike rent this one!', price: 14, address: 'Danzigerstraße 2 Munich', user: user)
    images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710088/_59_16_rhfkgc.jpg', 'https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710088/_59_15_di3mu2.jpg']
    images.each do |image|
      file = URI.open(image)
      bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
    end

    bike = Bike.create(title: 'Carbon KTM Lycan Elite', description: 'The perfect bike for a trip to the Mountains', price: 22, address: 'Kaufingerstraße 8 Munich', user: user)
    images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710088/_59_17_mndmlw.jpg', 'https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710088/_59_18_jsnrut.jpg']
    images.each do |image|
      file = URI.open(image)
      bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
    end

    bike = Bike.create(title: 'Dutchbike POPAL', description: 'Perfect for a little city cruise.', price: 19, address: 'Alexanderplatz 1 Berlin', user: user)
    images = ['https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710089/_59_19_y6hnay.jpg', 'https://res.cloudinary.com/dovh6vnvn/image/upload/v1596710089/_59_20_fwqaof.jpg']
    images.each do |image|
      file = URI.open(image)
      bike.photos.attach(io: file, filename: bike.title, content_type: 'image/jpg')
    end
