# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CookingList.destroy_all
Comment.destroy_all
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all



puts "Seeding users"

    user1 = User.create!(username: "ken123", password_digest: "apple111", image_url: "https://content.fortune.com/wp-content/uploads/2018/07/gettyimages-961697338.jpg", name: "Mark Zuckerberg", bio: "I am the CEO of Facebook", recovery_password: "apple111" );
    user2 = User.create!(username: "virgin1", password_digest: "tiktok222", image_url: "https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f469ea85cc82fc8d6083f05%2F0x0.jpg", name: "Jeff Bezos", bio: "I was the CEO of Amazon", recovery_password: "tiktok222");

puts "Seeding recipes"

    recipe1 = Recipe.create!(
        preparation_time: rand(1...30), 
        calories: rand(0...5000), 
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F7843568.jpg&q=85", 
        video_url: "//players.brightcove.net/1033249144001/HyUr5pA17_default/index.html?videoId=6142576361001",
        name: "Hungarian Potato and Sausage Soup", 
        instructions: 
        "Step 1
        Melt butter in a soup pot over medium heat. Add sausage and cook and stir until lightly browned, about 3 minutes. Use a slotted spoon to remove sausage to a bowl, leaving behind any butter in the pot.
        
        Step 2
        Toss onion into the pot with 1 teaspoon salt. Cook and stir until onion just starts to turn translucent and picks up a brown color from the meat juices in the pan, 4 to 5 minutes. Add flour; cook and stir for 2 to 3 minutes. Add garlic and paprika; cook and stir until fragrant, about 1 minute, being careful not to burn the paprika.
        
        Step 3
        Stir in 5 cups chicken broth. Increase heat to high and bring to a simmer, stirring occasionally so flour does not stick to the bottom of the pot. Stir in cabbage and cook until it just loses its stiffness, about 2 minutes. Stir in potatoes and bring back to a simmer. Add black pepper, cayenne pepper, and bay leaf, plus a splash of chicken broth if desired. Bring back to a simmer.
        
        Step 4
        Stir soup and reduce heat to medium-low. Simmer, stirring occasionally, until potatoes are very soft and tender, about 30 minutes. Add sausage and vinegar and simmer for 10 minutes. Taste and adjust for salt.
        
        Step 5
        Remove from heat and ladle into bowls. Garnish with sour cream, green onions, and cayenne pepper.",
        description: "The savory flavor from smoked sausage and the earthy sweetness from onions and cabbage are balanced perfectly with a splash of vinegar and a bit of sour cream, all brought together by soft and tender potatoes — the only way this gets better is serving it with a nice hunk of buttered, crusty bread", 
        user: user1)

    recipe2 = Recipe.create!(
        preparation_time: rand(1...30), 
        calories: rand(0...5000), 
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5450529.jpg&w=595&h=595&c=sc&poi=face&q=85", 
        video_url: "//players.brightcove.net/1033249144001/HyUr5pA17_default/index.html?videoId=5464526542001",
        name: "Chopped Brussels Sprout Salad",
        instructions: 
        "Step 1
        Whisk shallot (onion), vinegar, oil, Dijon mustard, honey, salt, and pepper together in a small bowl.
        
        Step 2
        Place Brussels sprouts, apples, cranberries, almonds; pour vinegar mixture over and toss to combine.",
        description: "Don't be scared of raw Brussels sprouts - they are delicious!", 
        user: user1)

    recipe3 = Recipe.create!(
        preparation_time: rand(1...30), 
        calories: rand(0...5000), 
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4048264.jpg&w=596&h=596&c=sc&poi=face&q=85", 
        video_url: "//players.brightcove.net/1033249144001/HyUr5pA17_default/index.html?videoId=1739818871001",
        name: "Quick Chicken Piccata",
        instructions: 
        "Step 1
        Place chicken breasts between 2 layers of plastic wrap and pound to about 1/2-inch thick.
        
        Step 2
        Season both sides of chicken breasts with cayenne, salt, and black pepper; dredge lightly in flour and shake off any excess.
        
        Step 3
        Heat olive oil in a skillet over medium-high heat. Place chicken in the pan, reduce heat to medium, and cook until browned and cooked through, about 5 minutes per side; remove to a plate.
        
        Step 4
        Cook capers in reserved oil, smashing them lightly to release brine, until warmed though, about 30 seconds.
        
        Step 5
        Pour white wine into skillet. Scrape any browned bits from the bottom of the pan with a wooden spoon. Cook until reduced by half, about 2 minutes.
        
        Step 6
        Stir lemon juice, water, and butter into the reduced wine mixture; cook and stir continuously to form a thick sauce, about 2 minutes. Reduce heat to low and stir parsley through the sauce.
        
        Step 7
        Return chicken breasts to the pan cook until heated through, 1 to 2 minutes. Serve with sauce spooned over the top.",
        description: "These quick and easy pan-fried chicken breasts are topped with a simple pan sauce made with capers, butter, white wine, and lemon juice.", 
        user: user1)

    recipe4 = Recipe.create!(
        preparation_time: rand(1...30), 
        calories: rand(0...5000), 
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4517504.jpg&w=596&h=596&c=sc&poi=face&q=85", 
        video_url: "//players.brightcove.net/1033249144001/HyUr5pA17_default/index.html?videoId=1560991360001",
        name: "World's Best Lasagna",
        instructions: 
        "Step 1
        In a Dutch oven, cook sausage, ground beef, onion, and garlic over medium heat until well browned. Stir in crushed tomatoes, tomato paste, tomato sauce, and water. Season with sugar, basil, fennel seeds, Italian seasoning, 1 teaspoon salt, pepper, and 2 tablespoons parsley. Simmer, covered, for about 1 1/2 hours, stirring occasionally.
        
        Step 2
        Bring a large pot of lightly salted water to a boil. Cook lasagna noodles in boiling water for 8 to 10 minutes. Drain noodles, and rinse with cold water. In a mixing bowl, combine ricotta cheese with egg, remaining parsley, and 1/2 teaspoon salt.
        
        Step 3
        Preheat oven to 375 degrees F (190 degrees C).
        
        Step 4
        To assemble, spread 1 1/2 cups of meat sauce in the bottom of a 9x13-inch baking dish. Arrange 6 noodles lengthwise over meat sauce. Spread with one half of the ricotta cheese mixture. Top with a third of mozzarella cheese slices. Spoon 1 1/2 cups meat sauce over mozzarella, and sprinkle with 1/4 cup Parmesan cheese. Repeat layers, and top with remaining mozzarella and Parmesan cheese. Cover with foil: to prevent sticking, either spray foil with cooking spray, or make sure the foil does not touch the cheese.
        
        Step 5
        Bake in preheated oven for 25 minutes. Remove foil, and bake an additional 25 minutes. Cool for 15 minutes before serving.",
        description: "It takes a little work, but it is worth it.",
        user: user2)

    recipe5 = Recipe.create!(
        preparation_time: rand(1...30), 
        calories: rand(0...5000), 
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F1110711.jpg&w=596&h=399&c=sc&poi=face&q=85", 
        video_url: "//players.brightcove.net/1033249144001/HyUr5pA17_default/index.html?videoId=1546090122001",
        name: "Guacamole",
        instructions: 
        "Step 1
        In a medium bowl, mash together the avocados, lemon juice, and salt. Mix in onion, cilantro, tomatoes, and garlic. Stir in cayenne pepper. Refrigerate 1 hour for best flavor, or serve immediately.",
        description: "You can make this avocado salad smooth or chunky depending on your tastes.",
        user: user2)
    
    recipe6 = Recipe.create!(
        preparation_time: rand(1...30), 
        calories: rand(0...5000), 
        image_url: "https://assets.epicurious.com/photos/57990894bd7fde737c83776e/16:9/w_1280,c_limit/breakfast-crepes.jpg", 
        video_url: "//players.brightcove.net/1033249144001/HyUr5pA17_default/index.html?videoId=1545906487001",
        name: "Basic Crepes",
        instructions: 
        "Step 1
        In a large mixing bowl, whisk together the flour and the eggs. Gradually add in the milk and water, stirring to combine. Add the salt and butter; beat until smooth.
        
        Step 2
        Heat a lightly oiled griddle or frying pan over medium high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each crepe. Tilt the pan with a circular motion so that the batter coats the surface evenly.
        
        Step 3
        Cook the crepe for about 2 minutes, until the bottom is light brown. Loosen with a spatula, turn and cook the other side. Serve hot.",
        description: "Here is a simple but delicious crepe batter which can be made in minutes. It's made from ingredients that everyone has on hand.",
        user: user2)

    
puts "Seeding Ingredients"

    tomato = Ingredient.create!(name: "Tomato", calories: rand(0...1000), category: "Vegetable", image_url: "https://media.istockphoto.com/photos/tomato-isolated-on-white-background-picture-id466175630?k=6&m=466175630&s=612x612&w=0&h=fu_mQBjGJZIliOWwCR0Vf2myRvKWyQDsymxEIi8tZ38=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    potato = Ingredient.create!(name: "Potato", calories: rand(0...1000), category: "Vegetable", image_url: "https://siciliancookingplus.com/wp-content/uploads/2016/01/03085543-87de-47ab-a4eb-58e7e39d022e-620x372.jpeg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    sausage = Ingredient.create!(name: "Sausage", calories: rand(0...1000), category: "Meat", image_url: "https://media.istockphoto.com/photos/smoked-sausage-on-white-background-picture-id1128248586?k=20&m=1128248586&s=170667a&w=0&h=iCCMEd-sD1mafnUovSts11pizKjUfIzLHzUrE0xgnwM=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    water = Ingredient.create!(name: "Water", calories: 0, category: "Beverage", image_url: "https://media.istockphoto.com/photos/glass-of-water-picture-id184617944?k=20&m=184617944&s=170667a&w=0&h=zSnpnFW9EfwTJcHAQN_G-PD4wgwQeHgsSCTJ0iX_Qdw=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    chicken = Ingredient.create!(name: "Chicken", calories: rand(0...1000), category: "Meat", image_url: "https://media.istockphoto.com/photos/raw-chicken-breast-fillets-on-white-background-picture-id1134331649?k=20&m=1134331649&s=170667a&w=0&h=JKO582pnv1cByy46nQq2fZTv_8MnrUXhadtbKkIV_7I=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    onion = Ingredient.create!(name: "Onion", calories: rand(0...1000), category: "Vegetable", image_url: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Onion_white_background.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    vinegar = Ingredient.create!(name: "Vinager", calories: rand(0...1000), category: "Condiment", image_url: "https://us.123rf.com/450wm/akulamatiau/akulamatiau1511/akulamatiau151101156/47730179-white-vinegar-over-white-background.jpg?ver=6", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    olive_oil = Ingredient.create!(name: "Oil", calories: rand(0...1000), category: "Condiment", image_url: "https://media.istockphoto.com/photos/olive-oil-bottle-closeup-picture-id157644432?k=20&m=157644432&s=612x612&w=0&h=45rpYYZnW9EY8BSwN1BQ2MAKGZDgaIspzzZjIrXvX20=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    butter = Ingredient.create!(name: "Butter", calories: rand(0...1000), category: "Dairy", image_url: "https://media.istockphoto.com/photos/piece-of-butter-in-metal-box-on-white-background-picture-id900458286?k=20&m=900458286&s=170667a&w=0&h=rnihM8asxViC50XWmYxoVoxWxeBeEabWLIqjdvqAaEA=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    honey = Ingredient.create!(name: "Honey", calories: rand(0...1000), category: "Sweetener", image_url: "https://www.kindpng.com/picc/m/118-1182758_honey-png-transparent-background-transparent-transparent-background-honey.png", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    salt = Ingredient.create!(name: "Salt", calories: rand(0...1000), category: "Condiment", image_url: "https://niemagazine.com/wp-content/uploads/2014/07/bowl-of-salt.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    pepper = Ingredient.create!(name: "Pepper", calories: rand(0...1000), category: "Vegetable", image_url: "https://www.pngitem.com/pimgs/m/133-1336764_bell-pepper-png-photo-background-bell-peppers-transparent.png", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    mustard = Ingredient.create!(name: "Mustard", calories: rand(0...1000), category: "Sauce", image_url: "https://images.eatthismuch.com/site_media/img/127491_Shamarie84_6740f82a-e625-4c45-9eab-dd0b189480f9.jpeg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    brussel = Ingredient.create!(name: "Brussels Sprout", calories: rand(0...1000), category: "Vegetable", image_url: "https://www.liveeatlearn.com/wp-content/uploads/2016/03/brussels-sprouts-8-680-1.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    apple = Ingredient.create!(name: "Apple", calories: rand(0...1000), category: "Fruit", image_url: "https://s3.envato.com/files/183163748/590.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    cranberry = Ingredient.create!(name: "Cranberry", calories: rand(0...1000), category: "Fruit", image_url: "https://producemadesimple.ca/wp-content/uploads/2016/11/cranberries-99679817-600x469.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    almond = Ingredient.create!(name: "Almond", calories: rand(0...1000), category: "Nuts", image_url: "https://st.depositphotos.com/2087307/3942/i/600/depositphotos_39422361-stock-photo-almonds-with-leaves.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    black_pepper = Ingredient.create!(name: "Black Pepper", calories: rand(0...1000), category: "Condiment", image_url: "https://media.istockphoto.com/photos/ground-black-pepper-in-a-spoon-and-pepper-peas-on-a-white-background-picture-id1225846678?k=20&m=1225846678&s=612x612&w=0&h=RWiUuf8CLU5_80jG00R0_1xk1UBOLJyUNsglq7HH-aY=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    white_wine = Ingredient.create!(name: "White Wine", calories: rand(0...1000), category: "Beverage", image_url: "https://smartymockups.com/wp-content/uploads/2016/06/White_Wine_Bottle_Mockup_1ok.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    lemon = Ingredient.create!(name: "Lemon", calories: rand(0...1000), category: "Fruit", image_url: "https://st4.depositphotos.com/12376114/i/600/depositphotos_197364790-stock-photo-fresh-lemon-slice-isolated-white.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    beef = Ingredient.create!(name: "Beef", calories: rand(0...1000), category: "Meat", image_url: "https://media.istockphoto.com/photos/fillet-steak-beef-meat-picture-id475336398?k=20&m=475336398&s=612x612&w=0&h=gJbkS2Ki-yWrotk3Cqz2hrZTWQxZp6OsiCl-qDeD1kQ=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    garlic = Ingredient.create!(name: "Garlic", calories: rand(0...1000), category: "Vegetable", image_url: "https://img.freepik.com/free-photo/fresh-garlic-white-background_1339-17012.jpg?size=626&ext=jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    avocado = Ingredient.create!(name: "Avocado", calories: rand(0...1000), category: "Vegetable", image_url: "https://yimages360.s3.amazonaws.com/products/2020/09/5f68912703474/1x.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    cilantro = Ingredient.create!(name: "Cilantro", calories: rand(0...1000), category: "Vegetable", image_url: "https://t3.ftcdn.net/jpg/00/02/42/92/360_F_2429251_acdW1GQwKpqEk7zsOPQaSTU0tGHIop.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    cayenne_pepper = Ingredient.create!(name: "Cayenne Pepper", calories: rand(0...1000), category: "Condiment", image_url: "https://media.istockphoto.com/photos/spicy-chili-with-wooden-spoon-on-white-picture-id1220960155?k=20&m=1220960155&s=612x612&w=0&h=w5SdL-YINL1zqBIQCF4_a8Bjn9X_HVfbecnAzusdqBc=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    flour = Ingredient.create!(name: "Flour", calories: rand(0...1000), category: "Cereal", image_url: "https://t4.ftcdn.net/jpg/02/38/53/29/360_F_238532999_V6aWowq1ZyJbnM2DrLGSLLaFNMnXf3S1.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    egg = Ingredient.create!(name: "Egg", calories: rand(0...1000), category: "Dairy", image_url: "https://redwave.mv/wp-content/uploads/2020/04/I007042.jpg", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    milk = Ingredient.create!(name: "Milk", calories: rand(0...1000), category: "Dairy", image_url: "https://media.istockphoto.com/photos/milk-bottle-picture-id960341526?k=20&m=960341526&s=170667a&w=0&h=6jQlpFQN17WcquMn5-7YGNvFQszEHev9NoOB4C9U-wE=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));
    noddles = Ingredient.create!(name: "Noddles", calories: rand(0...1000), category: "Pasta", image_url: "https://media.istockphoto.com/photos/instant-noodle-in-a-bowl-isolated-on-white-picture-id466678212?k=20&m=466678212&s=612x612&w=0&h=alMqGPl_BtFUXX3p5Ltpwp5IZRtGmr4mHtCk46ZXek4=", price: rand(0...500), portion: rand(1...1000), quantity: rand(1..100));

puts "Seeding Comments"

    comment1 = Comment.create!(description: "I like this recipe", rating: rand(0...5), user: user1, recipe: recipe2);
    comment2 = Comment.create!(description: "Great Recipe!! Thank you for sharing", rating: rand(0...5), user: user2, recipe: recipe4);
    comment3 = Comment.create!(description: "Well Done!", rating: rand(0...5), user: user1, recipe: recipe3);
    comment4 = Comment.create!(description: "Do you know where can I buy the ingredients?", rating: rand(0...5), user: user2, recipe: recipe5);
    comment5 = Comment.create!(description: "This recipe is simple but really good", rating: rand(0...5), user: user1, recipe: recipe6);
    comment6 = Comment.create!(description: "I never know you can do that!", rating: rand(0...5), user: user1, recipe: recipe1);
    comment7 = Comment.create!(description: "The video is so helpful", rating: rand(0...5), user: user2, recipe: recipe3);
    comment8 = Comment.create!(description: "I going to try this recipe, it looks amazing!", rating: rand(0...5), user: user2, recipe: recipe1);

puts "Seeding Cooking lists"

    #recipe 1

    recipe1_tomato = CookingList.create!(recipe: recipe1, ingredient: tomato, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe1_potato = CookingList.create!(recipe: recipe1, ingredient: potato, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe1_sausage = CookingList.create!(recipe: recipe1, ingredient: sausage, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe1_water = CookingList.create!(recipe: recipe1, ingredient: water, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe1_chicken = CookingList.create!(recipe: recipe1, ingredient: chicken, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe1_onion = CookingList.create!(recipe: recipe1, ingredient: onion, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe1_cayenne_pepper = CookingList.create!(recipe: recipe1, ingredient: cayenne_pepper, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));

    #recipe 2

    recipe2_onion = CookingList.create!(recipe: recipe2, ingredient: onion, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe2_vinegar = CookingList.create!(recipe: recipe2, ingredient: vinegar, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe2_olive_oil = CookingList.create!(recipe: recipe2, ingredient: olive_oil, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe2_mustard = CookingList.create!(recipe: recipe2, ingredient: onion, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe2_honey = CookingList.create!(recipe: recipe2, ingredient: honey, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe2_salt = CookingList.create!(recipe: recipe2, ingredient: salt, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe2_pepper = CookingList.create!(recipe: recipe2, ingredient: pepper, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe2_brussel = CookingList.create!(recipe: recipe2, ingredient: brussel, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe2_apple = CookingList.create!(recipe: recipe2, ingredient: apple, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe2_cranberry = CookingList.create!(recipe: recipe2, ingredient: cranberry, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe2_almond = CookingList.create!(recipe: recipe2, ingredient: almond, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));

    #recipe 3

    recipe3_chicken = CookingList.create!(recipe: recipe3, ingredient: chicken, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe3_cayenne_pepper = CookingList.create!(recipe: recipe3, ingredient: cayenne_pepper, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe3_salt = CookingList.create!(recipe: recipe3, ingredient: salt, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe3_black_pepper = CookingList.create!(recipe: recipe3, ingredient: black_pepper, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe3_olive_oil = CookingList.create!(recipe: recipe3, ingredient: olive_oil, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe3_white_wine = CookingList.create!(recipe: recipe3, ingredient: white_wine, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe3_lemon = CookingList.create!(recipe: recipe3, ingredient: lemon, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe3_water = CookingList.create!(recipe: recipe3, ingredient: water, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe3_butter = CookingList.create!(recipe: recipe3, ingredient: butter, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));

    #recipe 4

    recipe4_sausage = CookingList.create!(recipe: recipe4, ingredient: sausage, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe4_beef = CookingList.create!(recipe: recipe4, ingredient: beef, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe4_onion = CookingList.create!(recipe: recipe4, ingredient: onion, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe4_garlic = CookingList.create!(recipe: recipe4, ingredient: garlic, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe4_tomato = CookingList.create!(recipe: recipe4, ingredient: tomato, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe4_water = CookingList.create!(recipe: recipe4, ingredient: water, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe4_noddles = CookingList.create!(recipe: recipe4, ingredient: noddles, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));

    #recipe 5 

    recipe5_avocado = CookingList.create!(recipe: recipe5, ingredient: avocado, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe5_lemon = CookingList.create!(recipe: recipe5, ingredient: lemon, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe5_salt = CookingList.create!(recipe: recipe5, ingredient: salt, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe5_cilantro = CookingList.create!(recipe: recipe5, ingredient: cilantro, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe5_onion = CookingList.create!(recipe: recipe5, ingredient: onion, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe5_tomato = CookingList.create!(recipe: recipe5, ingredient: tomato, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe5_garlic = CookingList.create!(recipe: recipe5, ingredient: garlic, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));

    #recipe 6

    recipe6_flour = CookingList.create!(recipe: recipe6, ingredient: flour, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe6_egg = CookingList.create!(recipe: recipe6, ingredient: egg, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe6_milk = CookingList.create!(recipe: recipe6, ingredient: milk, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe6_water = CookingList.create!(recipe: recipe6, ingredient: water, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe6_salt = CookingList.create!(recipe: recipe6, ingredient: salt, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));
    recipe6_butter = CookingList.create!(recipe: recipe6, ingredient: flour, ingredient_portion: rand(1...1000), ingredient_quantity: rand(1...100));

puts "Seeding Completed"