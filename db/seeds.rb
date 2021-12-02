# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([{admin: '1773780642@126.com'}, {password: '111111'}])

Product.create(name: 'Lemon Drizzle Loaf Cake, 500g Roll over image', description: 'A classic lemon drizzle cake, With a light lemon icing, Suitable for vegetarians Contains almonds', image_url: 'assets/images/lemoncake.jpg', price: 7.90, selection: 'cakes' )
Product.create(name: 'Roll over image to zoom in Sukrin Chocolate Cake Mix 410g', description: 'Calorie Reduced,Low Carbohydrates, High Fibre, High Protein No Added Sugar', image_url: 'assets/images/chocolatecake.jpg', price: 6.99, selection: 'cakes')
Product.create(name: 'Milka Cake and Choc Biscuit Cake 175 g', description: 'Soft Sponge Cakes with Alpine Milk Chocolate Pieces and with a Filling with Chocolate', image_url: 'assets/images/choccake.jpg', price: 1.00, selection: 'cakes')

Product.create(name: 'Double chocolate Candy, Sharing Bag, Sweets Gift, 1 kg', description: 'Made with roasted peanuts and real milk chocolate all wrapped in a thin crispy colourful shell', image_url: 'assets/images/mmchocolate.jpg', price: 6.00, selection: 'chocolates')
Product.create(name: 'Green & Blacks Organic Milk Miniature Chocolate Gift Collection 180g', description: 'Country of Origin - United Kingdom; Specialty: Organic; Safety warning: No', image_url: 'assets/images/milkchocolate.jpg', price: 3.50, selection: 'chocolates')
Product.create(name: 'Maltesers Truffles Chocolate Gift Box, Christmas Chocolate Gift, Stocking Fillers 455g', description: 'Individually wrapped creamy, crunchy, truffly goodness in a glamorous box', image_url: 'app/assets/images/Truffleschocolate.jpg', price: 6.77, selection: 'chocolates')

Product.create(name: 'Foxs Fabulous Chunky Cookies 6 x 180g', description: 'New, More Delicious Recipe, now the cookies contain more chocolate than ever.2 x 180g ', image_url: 'assets/images/Foxcookies.jpg', price: 9.99, selection: 'cookies')
Product.create(name: 'Maryland Big &amp; Chunky Milk &amp; Dark Choc Chunk Cookies, 180g', description: 'The classic Maryland Cookie gone BIG & CHUNKY with milk', image_url: 'assets/images/MaryBigcookies3.jpg', price: 1.00, selection: 'cookies')
Product.create(name: 'Maltesers Truffles Chocolate Gift Box, Christmas Chocolate Gift, Stocking Fillers 455g', description: 'Individually wrapped creamy, crunchy, truffly goodness in a glamorous box', image_url: 'assets/images/Marycookies.jpg', price: 1.10, selection: 'cookies')
