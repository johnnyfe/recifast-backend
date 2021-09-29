# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user.destroy_all
recipe.destroy_all
ingredient.destroy_all

puts "Seeding users"

    user1 = User.create!(username: "ken123", password_digest: "apple111", image_url: "https://content.fortune.com/wp-content/uploads/2018/07/gettyimages-961697338.jpg", name: "Mark Zuckerberg", bio: "I am the CEO of Facebook");
    user2 = User.create!(username: "virgin1", password_digest: "tiktok222", image_url: "https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f469ea85cc82fc8d6083f05%2F0x0.jpg", name: "Jeff Bezos", bio: "I was the CEO of Amazon");

puts "Seeding recipes"

    recipe1 = Recipe.create!(
        preparation_time: rand(1...30), 
        calories: rand(0...5000), 
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F7843568.jpg&q=85", 
        video_url: "//players.brightcove.net/1033249144001/HyUr5pA17_default/index.html?videoId=6142576361001"
        name: "Hungarian Potato and Sausage Soup" 
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
        Remove from heat and ladle into bowls. Garnish with sour cream, green onions, and cayenne pepper."
        description: "The savory flavor from smoked sausage and the earthy sweetness from onions and cabbage are balanced perfectly with a splash of vinegar and a bit of sour cream, all brought together by soft and tender potatoes — the only way this gets better is serving it with a nice hunk of buttered, crusty bread", 
        user: user1)

    recipe2 = Recipe.create!(
        preparation_time: rand(1...30), 
        calories: rand(0...5000), 
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5450529.jpg&w=595&h=595&c=sc&poi=face&q=85", 
        video_url: "//players.brightcove.net/1033249144001/HyUr5pA17_default/index.html?videoId=5464526542001",
        name: "Chopped Brussels Sprout Salad"
        instructions: 
        "Step 1
        Whisk shallot, vinegar, oil, Dijon mustard, honey, salt, and pepper together in a small bowl.
        
        Step 2
        Place Brussels sprouts, apples, cranberries, almonds, sunflower seeds, and pumpkin seeds in a bowl; pour vinegar mixture over and toss to combine."
        description: "Don't be scared of raw Brussels sprouts - they are delicious!", 
        user: user1)

        