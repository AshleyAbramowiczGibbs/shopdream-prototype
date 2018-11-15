# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)


User.create!(email: 'ashley@email.com', password: 'password', first_name: 'Ashley', last_name: 'Abramowicz', city: 'Chicago', zipcode: '60610')
User.create!(email: 'josh@email.com', password: 'password', first_name: 'Josh', last_name: 'Gibbs', city: 'Washington', zipcode: '20001')
User.create!(email: 'sarah@email.com', password: 'password', first_name: 'Sarah', last_name: 'Petty', city: 'Ann Arbor', zipcode: '48104')
User.create!(email: 'becca@email.com', password: 'password', first_name: 'Becca', last_name: 'Malina', city: 'Los Angeles', zipcode: '90210')
User.create!(email: 'cayla@email.com', password: 'password', first_name: 'Cayla', last_name: 'Sher', city: 'New York', zipcode: '10002')


Style.create!(image_url: "https://images.asos-media.com/products/free-people-just-my-stripe-sweater/10718238-1-pink?$XXL$&wid=513&fit=constrain", user_id: 1)
Style.create!(image_url: "https://www.lulus.com/images/product/w_560/2602162_476032.jpg", user_id: 1)
Style.create!(image_url: "https://www.gap.com/webcontent/0014/585/394/cn14585394.jpg", user_id: 3)
Style.create!(image_url: "https://slimages.macysassets.com/is/image/MCY/products/0/optimized/10008500_fpx.tif?op_sharpen=1&wid=500&hei=613&fit=fit,1&$filtersm$", user_id: 2)
Style.create!(image_url: "https://slimages.macysassets.com/is/image/MCY/products/7/optimized/8689127_fpx.tif?op_sharpen=1&wid=500&hei=613&fit=fit,1&$filtersm$", user_id: 2)
Style.create!(image_url: "https://tvtropes.org/pmwiki/pmwiki.php/Film/BreakfastAtTiffanys", user_id: 4)
Style.create!(image_url: "https://n.nordstrommedia.com/id/160bec7f-27d3-4e1e-a6c2-605d11be879b.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196&quality=70", user_id: 4)



ItemTag.create!(style_id: 1, name: "stripped orange and pink sweater")
ItemTag.create!(style_id: 1, name: "grey high waisted jeans")
ItemTag.create!(style_id: 2, name: "navy midi dress")
ItemTag.create!(style_id: 2, name: "nude sandals")
ItemTag.create!(style_id: 2, name: "cat eye sunglasses")
ItemTag.create!(style_id: 3, name: "navy tshirt dress")
ItemTag.create!(style_id: 4, name: "black winter coat")
ItemTag.create!(style_id: 5, name: "Breakfast At Tiffany's Dress")
ItemTag.create!(style_id: 6, name: "Black lace dress")


PotentialPurchase.create!(item_tag_id: 1, image_url: "https://www.londomondo.com/collections/streetwear-top-sweater/products/56493?variant=5574433275935", price: 79.00, description: "Wooden Ships - Fuzzy Heart Crew Sweater (FUZZY/Pink)")
PotentialPurchase.create!(item_tag_id: 1, image_url: "https://img.goodzer.com/peregimator/?size=medium&valign=center&sign=263f43fa&image=https%3A//bananarepublic.gap.com/webcontent/0015/929/205/cn15929205.jpg", price: 99.99, description: "Heritage Athletic Tapered Gray Rigid Jean")
PotentialPurchase.create!(item_tag_id: 6, image_url: "https://img.goodzer.com/peregimator/?size=medium&valign=center&sign=6e70e0e9&image=https%3A//www.shopakira.com/media/catalog/product/cache/1/small_image/600x906.75/9df78eab33525d08d6e5fb8d27136e95/n/i/nice-for-what-dress_burgundy_1.jpg)", price: 44.90, description: "NICE FOR WHAT DRESS")

