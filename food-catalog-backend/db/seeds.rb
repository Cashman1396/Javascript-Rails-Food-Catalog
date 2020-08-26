# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Catalog.destroy_all
Food.destroy_all

entrees, desserts, drinks = Catalog.create([
  {name: "Entrees"}, {name: "Desserts"}, {name: "Drinks"}
])

entrees.foods.create([
  {
    name: "Lemon Poppy Seed Muffin", 
    cost: 2.25, 
    description: "Lemon poppy seed muffin.",
    image_url: "assets/images/lemon-poppyseed-muffin.jpeg"
  },
  {
    name: "Dugtrio Sandwich Trio",
    cost: 1.60,
    description: "Dugtrio Sandwich Trio",
    image_url: "assets/images/dugtrio-sandwich.jpg"
  },
  {
    name: "Gossifleur Combo Plate",
    cost: 3.95,
    description: "Delicious combo plate in the form of Gossifleur",
    image_url: "assets/images/gossifleur-plate.jpg"
  },
  {
    name: "Cheesy Rowlet Pizza",
    cost: 2.35,
    description: "A cheese pizza that can lift you off your feet",
    image_url: "assets/images/cheesyrowletpizza.jpg"   
   },
   {
    name: "Gratin a la Pumpkaboo",
    cost: 3.75,
    description: "A gratin as generously sized as a large Pumpkaboo. This will surely satisfy your hunger!",
    image_url: "assets/images/gratinpumpkaboo.jpg"
   },
   {
    name: "Yummy Yamper Pasta",
    cost: 4.18,
    description: "A pasta bolognese depicting a playful Yamper. This cute and yummy dish will surely delight your taste buds and heart!",
    image_url: "assets/images/yamper-pasta.jpg"
   }
])

  desserts.foods.create([
  {
    name: "Sour Cream and Onion Chips", 
    cost: 0.75,
    description: "Sour Cream and Onion Potato Chips",
    image_url: "assets/images/sourcreamonion.jpg"
  },
  {
    name: "Fluffy Eevee Pancakes",
    cost: 1.00,
    description: "Bouncy pancakes that look like eevee",
    image_url: "assets/images/eevee-pancakes.jpg"
  },
  {
    name: "Swablu Shaved Ice",
    cost: 1.50,
    description: "Shaved ice shaped like a Swablu. Make sure you eat up before it melts!",
    image_url: "assets/images/swablushavedice.jpg"
  },
  {
    name: "Burnt-Caramel Vulpix Sundae",
    cost: 2.50,
    description: "A sweet and bitter dessert that depicts the cuteness and beauty of Vulpix. It tastes as good as it looks",
    image_url: "assets/images/vulpix-sundae.jpg"
  },
  {
    name: "Combee Waffles with Honey",
    cost: 2.10,
    description: "Sweet waffles in the form of some cute bees",
    image_url: "assets/images/combeewaffles.jpg"
  },
  {
    name: "Rainbow Oricorio Popcorn",
    cost: 3.15,
    description: "Rainbow assorted popcorn of dancing birds",
    image_url: "assets/images/oricorio-popcorn.jpg"
  },
  {
    name: "Strawberry Cheesecake", 
    cost: 3.75, 
    description: "New York style cheesecake served with strawberry compote.",
    image_url: "assets/images/strawberry-cheesecake.jpeg"
  },
  {
    name: "Skillet Chocolate Chip Cookie", 
    cost: 3.75, 
    description: "Chocolate chip cookie baked in cast-iron skillet topped with vanilla ice cream, whipped cream, chocolate drizzle and a cherry on top.",
    image_url: "assets/images/Skillet-Chocolate-Chip-Cookie-4-of-14.jpg"
  },
  {
    name: "Frozen Yogurt",
    cost: 1.50,
    description: "Frozen Yogurt as known as Froyo",
    image_url: "assets/images/Froyo.jpg"
  },
  {
    name: "Crepes",
    cost: 5.50,
    description: "A thin folded dough dessert that can have many different combinations",
    image_url: "assets/images/crepes.jpg"
  },
  {
    name: "Chocolate Ice Cream",
    cost: 4.50,
    description: "A delicious chocolate that is very sweet",
    image_url: "assets/images/chocoicecream.jpg"
  },
  {
    name: "Key Lime Pie",
    cost: 6.50,
    description: "A sweet lime pie and pops in your mouth",
    image_url: "assets/images/keylime.jpg"
  }


])

  drinks.foods.create([
  {
    name: "Iced Coffee", 
    cost: 2.00,
    description: "Coffee brewed double-strength via French press method served in 16oz glass over ice.",
    image_url: "assets/images/iced-coffee.jpg"
    },
    {
    name: "Nutty Buneary Frappe",
    cost: 1.00,
    description: "A refreshing frappé with cookies shaped like Buneary's ears. The combination of the sweet cream and toasted nuts is superb",
    image_url: "assets/images/buneary-frappe.jpg"
   },
   {
    name: "Lilligant Floral Tea",
    cost: 0.75,
    description: "A refreshing drink for pokemon",
    image_url: "assets/images/lilligant-tea.jpg"   
   },
   {
    name: "Hot Litwick Cocoa",
    cost: 3.25,
    description: "A hot chocolate in the shape of a candle",
    image_url: "assets/images/hotlitwickcocoa.jpg"
   },
   {
    name: "Bubble Tea",
    cost: 4.75,
    description: "A lovely drink that can have many different combinations (Image is Taro Flavored)",
    image_url: "assets/images/taro-tea.jpg"
   },
   {
    name: "Hot Coffee", 
    cost: 1.50,
    description: "Hot coffee brewed via French press method served in a 12oz mug.",
    image_url: "assets/images/hot-coffee.jpg"
  },
  {
    name: "Bouncy Brionne Soda",
    cost: 5.50,
    description: "A refreshing soda inspired by Brionne dancing in the water. Enjoy the bouncy texture of the gummies",
    image_url: "assets/images/bouncysoda.jpg"
  },
  {
    name: "Miltank Mix au Lait",
    cost: 4.75,
    description: "Fresh Moomoo Milk is used in this mix au lait. The sweet and tart flavor of the berries really stands out",
    image_url: "assets/images/miltankaulait.jpg"
  },
  {
    name: "Poppin' Pachirisu Float",
    cost: 4.99,
    description: "A soda float that's zappy like Pachirisu's electricity! Only a pro can top it off with even more ice cream",
    image_url: "assets/images/poppingpachirisufloat.jpg"
  }
])

