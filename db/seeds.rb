# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([{email: 'js02575@surrey.ac.uk', password: '123shi'}, { email: '1773780642@126.com', password: '111111', admin:true }])

Product.create(title: 'Lemon Drizzle Loaf Cake, 500g Roll over image', description: 'A classic lemon drizzle cake, With a light lemon icing, Suitable for vegetarians Contains almonds', image_url: 'lemoncake.jpg', price: 7.90, selection: 'cakes' )
Product.create(title: 'Roll over image to zoom in Sukrin Chocolate Cake Mix 410g', description: 'Calorie Reduced,Low Carbohydrates, High Fibre, High Protein No Added Sugar', image_url: 'chocolatecake.jpg', price: 6.99, selection: 'cakes')
Product.create(title: 'Milka Cake and Choc Biscuit Cake 175 g', description: 'Soft Sponge Cakes with Alpine Milk Chocolate Pieces and with a Filling with Chocolate', image_url: 'choccake.jpg', price: 1.00, selection: 'cakes')

Product.create(title: 'Double chocolate Candy, Sharing Bag, Sweets Gift, 1 kg', description: 'Made with roasted peanuts and real milk chocolate all wrapped in a thin crispy colourful shell', image_url: 'mmchocolate.jpg', price: 6.00, selection: 'chocolates')
Product.create(title: 'Green & Blacks Organic Milk Miniature Chocolate Gift Collection 180g', description: 'Country of Origin - United Kingdom; Specialty: Organic; Safety warning: No', image_url: 'milkchocolate.jpg', price: 3.50, selection: 'chocolates')
Product.create(title: 'Maltesers Truffles Chocolate Gift Box, Christmas Chocolate Gift, Stocking Fillers 455g', description: 'Individually wrapped creamy, crunchy, truffly goodness in a glamorous box', image_url: 'Truffleschocolate.jpg', price: 6.77, selection: 'chocolates')

Product.create(title: 'Foxs Fabulous Chunky Cookies 6 x 180g', description: 'New, More Delicious Recipe, now the cookies contain more chocolate than ever.2 x 180g ', image_url: 'Foxcookies.jpg', price: 9.99, selection: 'cookies')
Product.create(title: 'Maryland Big &amp; Chunky Milk &amp; Dark Choc Chunk Cookies, 180g', description: 'The classic Maryland Cookie gone BIG & CHUNKY with milk', image_url: 'MaryBigcookies3.jpg', price: 1.00, selection: 'cookies')
Product.create(title: 'Maltesers Truffles Chocolate Gift Box, Christmas Chocolate Gift, Stocking Fillers 455g', description: 'Individually wrapped creamy, crunchy, truffly goodness in a glamorous box', image_url: 'Marycookies.jpg', price: 1.10, selection: 'cookies')

#product_list = {
  #[ "Lemon Drizzle Loaf Cake, 500g Roll over image", "A classic lemon drizzle cake, With a light lemon icing, Suitable for vegetarians Contains almonds", "assets/images/lemoncake.jpg", 7.90,  "cakes"],
  #[ "Roll over image to zoom in Sukrin Chocolate Cake Mix 410g", "Calorie Reduced,Low Carbohydrates, High Fibre, High Protein No Added Sugar", "assets/images/chocolatecake.jpg",  6.99,  "cakes"],
  #[ "Milka Cake and Choc Biscuit Cake 175 g", "Soft Sponge Cakes with Alpine Milk Chocolate Pieces and with a Filling with Chocolate", "assets/images/choccake.jpg",  1.00, "cakes"],
  #[ "Double chocolate Candy, Sharing Bag, Sweets Gift, 1 kg",  "Made with roasted peanuts and real milk chocolate all wrapped in a thin crispy colourful shell", "assets/images/mmchocolate.jpg",  6.00,  "chocolates"],
  #[ "Green & Blacks Organic Milk Miniature Chocolate Gift Collection 180g",  "Country of Origin - United Kingdom; Specialty: Organic; Safety warning: No", "assets/images/milkchocolate.jpg", 3.50, "chocolates"],
  #[ " Maltesers Truffles Chocolate Gift Box, Christmas Chocolate Gift, Stocking Fillers 455g", "Individually wrapped creamy, crunchy, truffly goodness in a glamorous box",  "app/assets/images/Truffleschocolate.jpg", 6.77, "chocolates"],
  #[ "Foxs Fabulous Chunky Cookies 6 x 180g",  "New, More Delicious Recipe, now the cookies contain more chocolate than ever.2 x 180g ",  "assets/images/Foxcookies.jpg", 9.99, "cookies"],
  #[ "Maryland Big &amp; Chunky Milk &amp; Dark Choc Chunk Cookies, 180g", "The classic Maryland Cookie gone BIG & CHUNKY with milk",  "assets/images/MaryBigcookies3.jpg",  1.00, "cookies"],
  #[ "Maltesers Truffles Chocolate Gift Box, Christmas Chocolate Gift, Stocking Fillers 455g",  "Individually wrapped creamy, crunchy, truffly goodness in a glamorous box", "assets/images/Marycookies.jpg", 1.10, "cookies"]
 #}

 #product_list.each do |title, description, image_url, price, selection|
#   Product.create(title: title, description: description, image_url: image_url, price: price, selection: selection)
 #end
