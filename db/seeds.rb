# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Function: object creation with images
def create_objects_with_images(object_attributes, object_title, images_list)
  object_attributes.each_with_index do |attributes, index|
    new_object = object_title.create(attributes)
    images_list[index].each_with_index do |url, index|
      if index == 0
        new_image = new_object.images.new(main: true)
      else
        new_image = new_object.images.new
      end
      new_image.remote_photo_url = url
      new_image.save
    end
  end
end

# Clear the DB
Place.destroy_all
Event.destroy_all
Book.destroy_all
Category.destroy_all
Tag.destroy_all

# All places attributes
place_attributes = [
  {
    title: "Komo",
    subtitle: "poke & smoothie bowls",
    content: "It seems like in Hawaii, food is all about acai and poke bowls, from breakfast till sundown, including in between surf lessons. At Komo, both are served all day long, from Tuesday to Saturday, non-stop. It was during a trip to Hawaii that Lauren first got to discover and try both, everywhere, all the time. And back to Hawaii she went, once the idea of Komo was clear in her mind, so that she could pick up all the inspiration she needed.<br/>
<br/>
As a food lover who’d worked in the hospitality business since she could remember and got trained in the coolest eateries in Brussels – Knees to Chin and Bao Bang Bang among others -, she chose to partner with two of her closest friends, Olivia and Juliette, to launch her own food concept: a smoothie and poke bowls bar, just like in Hawaii. And the girls haven’t missed a single reference. From the surf board turned into a table, the little plastic belly dancers on the shelves, and the multiple shark objects and drawings – it feels just as if you’d walk into a surf shack. The place is fresh, colorful, and the girls are super nice and welcoming – pretty much everything you could ask from this type of place. Well not everything, what matters most still is inside those bowls. From Hawaii, they’ve kept the base: warm rice, marinated fish – which makes all the difference apparently -, avocado, edamame and exotic fruits. The rest of the add-ons will help you reach your five fruit and veggie target. It’s quite straight to the point, as colorful as the interior, and simply delicious. For 14€ for the larger version, you’ve got yourself one of the best healthy lunch-deals of the city, hands down. In the morning and afternoon, Komo is the place to go to grab a smoothie bowl, made with acai berries, banana or even avocado; a great and healthy option to replace our more traditional and extra-sweet breakfasts and snacks. And there as well, it’s no surprise by now: it’s just delicious.",
    address: "36 Rue Defacqz, 1050 Bruxelles",
    phone_number: "02 751 00 38",
    website: "http://www.komobowl.be/",
    opening_hours: "From Monday to Friday, from 10am to 3pm and from 6pm to 10pm<br/>
Saturday from 11am to 3pm",
    price_indication: "Poke bowls: 11€ – 14€<br/>
Smoothie bowls: 8.50€",
    booking_link: "http://www.komobowl.be/contact.html",
    deliveroo_link: "https://deliveroo.be/en/menu/brussels/chatelain/komo",
    brunch: false,
    terrace: false,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "Café Tulipant",
    subtitle: "local café",
    content: "Strategically located on Place Fernand Cocq, right in the heart of Ixelles, Café Tulipant has been open for only about just a week. And though the construction works by its entrance currently make it a little tricky for customers to access, its future perfectly sun-exposed terrace, however, seems promising enough to compete with the Belga itself.<br/>
<br/>
Inside, the old floor tiles from the previous restaurant have been kept, the walls have been scraped to reveal bricks darkened by time as well as several paint and wallpaper layers beneath it. By the front door, a heavy red curtain protects customers from the cold, and by the back, a beautiful stone bar welcomes cocktail making in the evening. On the left, an open kitchen, and on its windowsill, a tulip bouquet. The Café Tulipant takes its name from the previous Auberge Tulipant which once stood in place of Ixelles’ City Hall, before a beautiful tulip garden. Bits and pieces of poetry and romantism from the days has been spread across the Café. We can’t help but smile when, going through the drinks menu, we come across the sentence “I’ve been staring at you for so long, come join me”, hidden between two lines of craft beers, or when we hear the beautiful notes of “Ne me quittes pas” by Jacques Brel playing in the room. As for the food, the Belgian spaghetti Bolognese surely has no business here. Geoffroy Baraud, the young self-taught chef, is determined to make a name for himself and for his extremely creative and elegant cuisine. Each day, he wakes up with a single goal in mind : make his customers happy. A clear mission accomplished when his dessert was brought to our table : a choux filled with 65 Brazilian chocolate ganache, served with apple caramel, matcha meringue and pear and mango compote (5€). A very promising café indeed.",
    address: "25 Place Fernand Cocq, 1050 Bruxelles",
    phone_number: "02 851 31 80",
    website: "https://cafetulipant.be/",
    opening_hours: "From Monday to Wednesday, from 11am to 1am<br/>
Thursday and Friday, from 11am to 2am<br/>
Saturday from 10am to 2am<br/>
Sunday from 10am to 11pm",
    price_indication: "Daily special: 12€",
    booking_link: "https://cafetulipant.be/contact/",
    deliveroo_link: "",
    brunch: true,
    terrace: true,
    monday_night: true,
    sunday_night: true
  },
  {
    title: "Luka",
    subtitle: "delicate and hearty food",
    content: "It’s with her dad Luis, originally from Portugal, that Kamala decided to open Luka, uniting a syllable from each of their name in a place that would be just like them.<br/>
<br/>
Warm and welcoming, these are the two words that popped in our minds the first time we visited this canteen with deep blue walls. Luis, standing behind his counter, will greet you with a big smile on his face as soon as you step in, and explain the daily menu written on the blackboard. Though it changes everyday, the menu has a fixed structure : you’ll always find a special, a soup, a sandwich, a quiche or pizza, and a fresh spring roll. Everything is made daily by Kamala, depending on the seasons and her inspiration.<br/>
<br/>
Breakfast, Saturday brunch and delicious desserts complete the pitcure. Luis has us try the Polvorones, a specialty from Andalusia, the region where he is from. The pastries are usually prepared for Christmas, but Kamala loves them so much that she’s decided to serve them all year long. Like her dad says, “they’re simply violent”.<br/>
Their branding and visual identity matches the color of the walls. Here, everything is blue, blue, blue. We love the pretty illustrations on the cards and menus which perfectly reflect the moto of the house ; joyful and delicate food.<br/>
Truth is, even though it’s delicious, Luka’s spirit is about much more than just its food.",
    address: "260 Chaussée d’Ixelles, 1050 Bruxelles",
    phone_number: "02 646 75 47",
    website: "https://www.facebook.com/restoluka/",
    opening_hours: "Tuesday and Wednesday from 12am to 2:30pm<br/>
From Thursday to Saturday from 12am to 2:30pm and from 7pm to 9:30pm",
    booking_link: "https://lukabruxelles.be/en/reservation",
    deliveroo_link: "https://deliveroo.be/en/menu/brussels/flagey/luka",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: false
  },
  {
    title: "Comptoir Rodin",
    subtitle: "canteen & coffee",
    content: "Hidden between the walls of what is left of the old military hospital, the Comptoir Rodin is the type of place you’d need to know about paying a visit. From the outside, the tower rather reminds us of the casernes on boulevard Général Jacques, and it’s only after stepping inside and climbing the first set of stairs that you’ll discover this warm and cosy new-age canteen.<br/>
<br/>
Right at the entrance, a little satue of Rodin, a tribute to the name of the street, will help you navigate throughout the space. Around it on the floor, arrows are pointing to the counter, the veranda, or the dining room, for those who may have lost their way. The inside, entirely renovated for the project, reminds us of the warm and cosy room of a theatre, where you’d sip on a glass of wine while waiting for act II. Heavy red velvet curtains surround the windows, brick walls left naked give the place a rather cosy feeling and mismatched leather seats complete the picture. The big windows of this four-facade house do the rest : the Comptoir is cosy, but always full of light.<br/>
At the counter, that’s where you’ll order before being served in the dining room, or in the beautiful veranda. We chose between a range of sandwiches, soups, hot, cold and hot and cold bowls. The bowls were a real success. The hot bowl (11€) – beef meatballs, yoghurt sauce, grilled vegetables, pine nuts, cilantro and wheat – was the definition of comfort food to us. Spicy, hearty and delicious. Same went for the hot-and-cold bowl (also 11€), with spicy roasted cauliflower, eggplants, pumpkin and chickpeas. But the Comptoir is open from early morning to evening, and aside its delicious bowls, it also makes for the perfect spot for breakfast, a sweet break, or a few hours of work along with a coffee.",
    address: "8 Avenue Auguste Rodin, 1050 Bruxelles",
    phone_number: "02 203 00 14",
    website: "http://comptoir-rodin.be/",
    opening_hours: "From Tuesday to Friday, from 8:30am to 3:30pm<br/>
Saturday and Sunday, from 10:30am to 4pm",
    booking_link: "http://comptoir-rodin.be/en/contact/",
    deliveroo_link: "",
    brunch: true,
    terrace: true,
    monday_night: false,
    sunday_night: false
  },
  {
    title: "Café Flora",
    subtitle: "local bar",
    content: "The renovation of the magnificent Aegidium building, completely abandoned in the late 80’s, had been long overdue. Built in 1905 in the center of Parvis de Saint-Gilles, with its beautiful ballrooms and theatres, its main purpose used to be highly cultural. Today, we can only find what is left of it, with beautiful bits and pieces of mural paintings, stained glass or original tiles. At its front, right on the Parvis, a mythical bar used to stand: Café Flora.<br/>
<br/>
After being transformed into a bank, a mutual, and a bunch of other things, the renovation of the initial Café Flora was a huge step in this much larger renovation project. Behind the controls: Thomas and Pascal, whose faces we directly recognize from Crab Club and Dillens, among others. After working as managers in numerous restaurants and bars in Brussels, the two friends had been dreaming of opening their very own bar. In 2018, they launched “T’es pas Prêt”, as a test pop-up on the same premises, to validate their project. Helped by the famous architect Lionel Jadot and the furniture designers J&J Atelier, they finally reopen a brand-new and shiny Café Flora in 2019. The space is huge and impressive; its colorful velvet touches remind us of Milanese design and its furniture of the Memphis design movement from the 80’s. Food and drinks-wise, the bar and kitchen are open from breakfast (from €4 to €9,50) to cocktails (from €7 to €10).<br/>
<br/>
From the Parvis, Café Flora is hard to miss: its bright yellow terrace shines from early morning until nightfall.",
    address: "16A Sint-Gillisvoorplein, 1060 Bruxelles",
    website: "https://www.facebook.com/cafeflora1060/",
    opening_hours: "From Sunday to Wednesday, from 8:30am to 11pm<br/>
Thursday from 8:30am till midnight<br/>
Friday and Saturday from 8:30am till 2am",
    price_indication: "Evening snacks: 6.50€ – 15€<br/>
Cocktails: 7€ - 10€",
    booking_link: "https://www.facebook.com/cafeflora1060/",
    deliveroo_link: "",
    brunch: false,
    terrace: true,
    monday_night: true,
    sunday_night: true
  },
  {
    title: "Tero",
    subtitle: "small plates to share",
    content: "There were three reasons altogether which made us book at table at TERO last week. First, the fact that it's already a successful venue in Bièrges, cooking mostly with ingredients from its very own farm. The second is that their food concept – small plates to share – is (slowly) taking over Brussels with places such as Humphrey, Crab Club or Ötap, and is something we are more than thrilled about.<br/>
And last but not least, what they had done with the space convinced us we had to go and try. Aside from being a restaurant working with organic, seasonal and local produce, it's a gigantic space, such as the ones you'd rather see in London, with a stunning and perfectly thought-of decoration. The ceilings are high, letting tons of natural light pass through, and the place is both huge and cosy at the same time. Simply a first in our little capital.<br/>
On the menu side, we ended up being quite disappointed with the veggies, which although they were perfectly cooked (the celeriac simply melted in our mouths), clearly lacked generosity and seasoning. On the fish and meat side, it was more of a success with the Lustin poultry with sage and pumpkin (13€), full of flavors and really tender, and the great home-smoked mackerel with olive sherbet (14€). The clams were delicious as well, but were also lacking that little something more in the sauce. We ended lunch with a vegan dark chocolate mousse (8€), with a texture as dense as the one of a ganache, without neither eggs nor milk, but with the intense flavor of dark chocolate. A very impressive dessert and know-how which clearly made up for the rest of the meal. A place to come back to in a while, when the team in the kitchen is a little bit more together and ready to match the first venue's reputation.",
    address: "1 Rue Saint-Bernard, 1060 Bruxelles",
    phone_number: "02 347 79 46",
    website: "https://www.tero-restaurant.com/",
    opening_hours: "From Tuesday to Friday, from 10am to 2pm<br/>
From Tuesday to Saturday, from 7pm to 10pm",
    booking_link: "https://www.tero-restaurant.com/contact",
    deliveroo_link: "https://deliveroo.be/en/menu/brussels/saint-gilles/tero-bruxelles#",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: false
  },
  {
    title: "Café des Minimes",
    subtitle: "cultural bar and restaurant",
    content: "We already used to stop by for an espresso served with a Carambar candybar, back when it was still the restaurant L'Arrière Pays. It was simply hard not to: the terrace on the little paved square seemed to be calling out to us, asking us to have a seat either in the sun or in the shade from the huge tree right in its center. Since it became Café des Minimes, the little square has become a destination by itself.<br/>
We meet friends for a hearty, seasonal and delicious lunch, prepared by the chef Régis (ex cook from Tero and Kitchen 151). We tried the sweet potato waffle with a soft boiled egg, Brussels Shiitake and lemon whipped cream (15€), and the slow-cooked chicken supreme with braised chicory and baked apple (16€). Everything was just so, so good. And for smaller cravings, or lower budgets, they also have a 'tartine' and a soup, by themselves or combined, for just 10€. In the evenings, things get real serious as the lunch menu is replaced by a tapas list, paired with delicious homemade cocktails (from 7 to 10,50€) and natural wines. Whether it's for the food or the drinks, the intention here is to work with local and small producers. A great example is the Spritz des Minimes (7€), reworked with red vermouth from Biercée. Every week, there is a jazz concert on Wednesdays, a dj set to dance to on Fridays, and a rock concert on Sundays. Once a month, be sure to book your seat for comedy club night on Tuesday, and for a four-hands dinner with a guest chef on Monday. No wonder that you'll find exactly what you're looking for the rest of the time as well; just pick between coffee, tapas, lunch, cocktails or excellent local craft beers. And have it all on the sunny little paved square of course." ,
    address: "60 Rue des Minimes, 1000 Bruxelles",
    phone_number: "02 355 37 11",
    website: "http://cafedesminimes.be/",
    opening_hours: "From Tuesday to Sunday, from noon to 1am<br/>
Friday and Saturday until 2am" ,
    price_indication: "Lunch: 10€ - 18€" ,
    booking_link: "https://cafedesminimes.com/contact/",
    deliveroo_link: "https://deliveroo.be/en/menu/brussels/sablon/cafe-des-minimes",
    brunch: true,
    terrace: true,
    monday_night: false,
    sunday_night: true
  },
  {
    title: "Fernand Obb",
    subtitle: "belgian street-food counter",
    content: "Bringing a contemporary twist to Brussels' most loved street-food icons was the one goal Cédric set himself to when opening Fernand Obb. And though you'll surely spot the word 'fricadelle' in big letters on the black menu, this is gastronomy we're talking about, miles away from the fricadelles you might have had in Brussels' most authentic fritkots.<br/>
But this is not just about the fricadelle. Next to it on the board, you'll find shrimp croquettes – the exact same ones who've won the award of best shrimp croquettes in Brussels just a few months ago -, cheese croquettes, 'américain', all sorts of burgers, and even some home-smoked Scottish salmon served with its pistolet (11€).Pair the whole thing with some 'ouille ouille' spicy sauce, and you'll reach Belgian food heaven. But though the food is great and everything is homemade, Fernand Obb insists on remaining accessible to everyone. The whole concept of the place is to serve authentic food, and to remain authentic to its beloved customers. Here, true old-timers blend in with the younger crowd, with families joining in the weekends. And in the summer, the whole lot sits together in the sunny garden at the back, and enjoy their shrimp croquettes with a glass of white from Tarzan.<br/>
Symbolic references from the area have been included everywhere, from the colourful tile painting of a water carrier – Saint-Gilles' symbol -, to the name of the place itself. Obb comes from the old local expression 'Ob Bruxelles', formerly used to refer to Saint-Gilles. And Fernand, you might ask? Well it's the name of Cédric's cat, nothing less.",
    address: "27 Rue de Tamines, 1060 Bruxelles",
    phone_number: "02 771 91 08",
    website: "http://fernand-obb.be/",
    opening_hours: "Monday from 6pm to 10pm<br/>
From Tuesday to Friday, from 11:30am to 3pm and from 6pm to 10pm<br/>
Saturday from 11:30am to 10pm",
    price_indication: "Shrimp croquette: 7.50€",
    booking_link: "http://fernand-obb.be/",
    deliveroo_link: "",
    brunch: false,
    terrace: true,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "La Meute" ,
    subtitle: "meat point",
    content: "La Meute is the story of three friends. Two brothers, Alexis and Arnaud, who after having launched two successful donburi bars, partner with their friends Jim take on a new challenge. Challenge succeeded. At La Meute, as the name says (the herd in French), we'll meet our best meat-lover friends to enjoy an easy and laid back dinner.<br/>
The concept is quite straightforward : the three partners want to offer delicious and quality meat to their customers, without ever having to break the bank. The famous 'meute' is a an Irish breed, from Wexford more specifically, and is raised in the Belgian pastures of Veurne, a few kilometers away from our dearest North Sea coast.<br/>
Inside, it's small and cosy, the tables are close and the atmosphere welcoming. It's perfect before a movie, or a drink in Flagey, but it's just as good to hang out for hours chatting with a group of friends. Aside from the carnivores who'll find what they're looking for in the contrefilet-fries-coleslaw-homemade sauce combo (20€), the vegetarians won't be left out with the veggie plate of the day (16€), neither will the wine lovers with the natural wine list from Basin (from 3,80€ by the glass). We love this place with its butcher-shop like decoration, its huge front window lighting up even the greyest winter days, and the great value for money of its short but deadly efficient menu.",
    address: "6 Rue Lesbroussart, 1050 Bruxelles",
    phone_number: "04 76 75 42 86",
    website: "https://restaurantlameute.business.site/",
    opening_hours: "From Tuesday to Saturday, from noon to 2pm and from 7pm to 10pm",
    price_indication: "Menu: 20€" ,
    booking_link: "https://restaurantlameute.business.site/",
    deliveroo_link: "",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: false
  },
  {
    title: "Nuovo Rosso",
    subtitle: "authentic italian pasta",
    content: "Nuovo Rosso is the kind of place we should have told you about a long time ago. The place every single ragu di salsiccia enthusiast loves to hear about, and in turn discreetly share with only their favorite friends. The neighborhood Italian, the one that never disappoints.<br/>
Here, it's in the plate that the magic happens, or should we say in the pan, literally. The minute-made pastas are brought to the table in large steaming pans, to share with your friends, or feast on all by yourself.<br/>
The specialty, you might have guessed, is the Pappardelle al ragu di salsiccia (17€), by far the best in Brussels, at least according to us. They're prepared with Italian sausage, red wine and red onions. A must-try. Not far behind, the Paccheri del Prete (17€), with eggplants, cherry tomatoes and mozzarella cheese. And if you're here to celebrate something special, go for the Pappardelle All'Astice (28€), with tomato sauce, garlic, white wine and half a lobster! Still alive about a minute before, you'd hardly find a fresher beast. Careful though to pre-order it by phone when you make your reservation, as they run out fast.<br/>
Nuovo Rosso is a place we love, and recommend with closed eyes. It's not the place you come to for the decoration, but it's definitely the place you come to for an authentic and generous pasta dinner, surrounded by Italians and devoted neighborhood regulars.",
    address: "Rue Bosquet 62, 1060 Bruxelles",
    phone_number: "02 538 89 28",
    website: "https://www.facebook.com/nuovorosso/",
    opening_hours: "From Monday to Friday, from noon to 2pm and from 7pm to 10:30pm<br/>
Saturday from 7pm to 10:30pm",
    booking_link: "https://www.facebook.com/nuovorosso/",
    deliveroo_link: "",
    brunch: false,
    terrace: true,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "My Tannour",
    subtitle: "syrian canteen",
    content: "Walking into My Tannour, the first things you’ll spot are the big clay ovens to the left, half-burried into sand. If you come close enough, you’ll see the big flames licking the surfaces, and, standing right behind working the dough, Georges.<br/>
  Though his parents are from Amernia and Lebannon, Georges was born and brought up in Syria, where he got to watch the women from his village make and cook bread in big ovens : the tannours. The menu from C’Chicounou, his first venue across the street, carries clear influences of his origins, but at My Tannour, the recipes are from Syria, and Syria only. Well except for a few touches here and there, like the usual white flour which has been replaced by a wholemeal one, with 8 different types of wheat in total.<br/>
  As we make our way to the back of the restaurant, we discover the second most important item guaranteeing the quality of the food : yet another oven. This one has been custom-made from cast-iron, and carries out the slow cooking of significant quantities of meat. Three stories, and burning at the bottom, a massive wood-fire. It will take it 5 hours to cook chicken, and between 10 to 16 hours to cook beef or lamb. We can already feel our mouths watering.<br/>
  On the menu, stuffed breads – renamed tannours by Georges after their own specific oven – are waiting for us. We order a falafel tannour (5€) – minute-made, both falafels and bread – , and a chicken tannour plate (6,50€), along with some extra grilled veggies ( 30 cents per extra, far from being overpriced to say the least).
  And what else can we say : the concept is brilliant and the food delicious. We can only recommend you go see for yourself.",
    address: "98 Rue de la Brasserie, 1050 Bruxelles",
    website: "https://www.facebook.com/mytannour/",
    price_indication: "Falafel Tannour: 5€",
    booking_link: "https://www.facebook.com/mytannour/",
    deliveroo_link: "",
    brunch: false,
    terrace: true,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "Bar du Canal",
    subtitle: "smørrebrød & natural wines",
    content: "We weren’t really expecting to find Smørrebrød (pronounce “s’marble”), those Danish black bread toasts covered with millions of delicious things, when we walked into Le Bar du Canal. Neither were we expecting to find over 80 different references of natural wines, carefully picked by Bjark and his sommelier Léa Roussel, and supplied by Mathieu from Vins Naturels. In this light-filled corner bar, not really on Dansaert anymore but not quite on the canal either, the only thing we were really expecting was a cool neighborhood bar, where we’d be warmly welcome for a drink after a long day.<br/>
  And we were not disappointed. As we sat under the hanging plants and the green enamel lamps, we couldn’t help but notice the striking difference with the outside. Outside, the rain was pouring hard, the traffic was intense and the cars’ headlights were slowly blending with the street lights. Inside, the atmosphere is warm and laid back, miles away from the chaos, and though the night’s not quite here yet, it seems to be precisely the right time for a drink. Time to look at the menu too. Cheese and ham boards are here (15-16€), and so are the Fine de Claire oysters (13€). Not so surprising as we learn that before taking over Bar du Canal, Bjark had launched the oyster and Smørrebrød bar right next to La Mer du Nord. This time though, we’re mainly interested by the famous black breads: beef tartar with egg yolk and horseradish (10€), asparagus with radish and feta (9€), or smoked salmon tartar with herring eggs (10€). We follow Bjark’s advice and order the asparagus. And a board of mixed ham and cheese too, with an English blue cheese-cheddar leaving us speechless, paired with two glasses of 100 Grolleau by Catherine and Pierre Breton, a delicious fruity red, simply perfect. The place is great, and so is the food and the wine. We just can’t wait to be back.",
    address: "208 Rue Antoine Dansaert, 1000 Bruxelles",
    phone_number: "02 355 53 73",
    website: "https://www.facebook.com/barducanal/",
    opening_hours: "From Tuesday to Saturday, from 12pm to midnight<br/>
Sunday from 3pm to 10pm",
    price_indication: "Smoked salmon tartar with herring eggs: 10€",
    booking_link: "https://www.facebook.com/barducanal/",
    deliveroo_link: "",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: true
  },
  {
    title: "Café Caberdouche",
    subtitle: "local bar",
    content: "As our breaded chicken salad lays before us, we are thrown back a couple of years earlier, when the word had yet a a slightly different meaning. With its tomates cut into wedges and its perfectly diagonal cucumber slices, the salads at Café Caberdouche have that little something to remind us of our childhood, and most specifically, of our beloved Belgian roots.<br/>
  This is not the city center, nor even the Marolles neighbourhood, but an area lesser known, with a no less enchanting name: Notre Dame aux Neige (which translates into Our Snow Lady, or something like that). Café Caberdouche, with its sunny terrace who would almost make the Belga blush, has got everything we’re looking for in a bar. Bright spaces, pretty benches covered in emerald green velvet, friendly staff and a menu that has got what you’re looking for – from morning till very early morning – including a brunch buffet every Sunday (17,50€).<br/>
  For lunch, apart from the salads, the ham and cheese toasts, the lasagnas and vegetable plates available every day, Caberdouche also offer two inspired lunch specials – sea bass with lime sauce, chicken à la “chasseur”, Buddha bowls with sweet potatoes, to name a few – with always a vegetarian option (13-15€). As for drinks, we promise you won’t be lost: from Sptitz to Cosmo, without missing on natural wines and a long Belgian beer list. No wonder as we are sitting in an old café from Brussels – having kept only the name Caberdouche, a somewhat friendly name given in the days to the rather questionable cafés who used to fill the little square.",
    address: "8 Place de la Liberté, 1000 Bruxelles",
    phone_number: "02 356 14 05",
    website: "https://www.caberdouche.com/",
    opening_hours: "Everyday from 9am to midnight",
    price_indication: "Lunch special: 13 - 15€",
    booking_link: "https://www.caberdouche.com/contact/",
    deliveroo_link: "",
    brunch: true,
    terrace: true,
    monday_night: true,
    sunday_night: true
  },
  {
    title: "Le Phare du Kanaal",
    subtitle: "néo-cantine et bar de quartier",
    content: "Le Phare du Kanaal is a charming bar and lunch spot, located « on the other side of the canal », as most people from uptown like to name the area. And we’ve got to admit, that though the Phare opened over four years ago, we have only been in the neighborhood so many times. Last time we came, we were lucky to meet Hanna, the founder of this beautiful spot.<br/>
  She told us that, as a Parisian, little did she think about how isolated she might be when she initially found the place. And we’re glad. Before setting her headquarters, the Phare used to be yet another Chien Vert fabric showroom. The owner, as a true and dedicated boat fan, had the façade painted with a huge boat at sea. He even went further and made the wooden floor slightly tilted to give the customers the impression to be on a boat. Next time you feel like the floor isn’t straight, now you know why. As soon as she opened, Hanna partnered with Julien, initially to help her on the food side. Now it’s Simon – ex-Contrebande – who runs the kitchen, offering only seasonal and local ingredients in his daily specials. On the wall, a “wall of farm” poster features all of their superstar local suppliers. On the first floor, a co-working space welcomes about twenty freelancers, who come and go according to their needs thanks to their “swimming pool pass” (130€ for 10 entries). A gorgeous project we fully support.",
    address: "40 Quai des Charbonnages, 1080 Bruxelles",
    phone_number: "02 410 06 84",
    website: "http://lepharedukanaal.com/",
    opening_hours: "From Monday to Friday, from 9am to 8pm<br/>
Saturday from 11am to 6pm",
    price_indication: "Lunch: 15€",
    booking_link: "http://lepharedukanaal.com/contact-us/",
    deliveroo_link: "",
    brunch: true,
    terrace: true,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "Vini Divini",
    subtitle: "italian enoteca",
    content: "Saying eating at Vincenzo’s to refer to eating at Vini Divini, would make all the sense in the world. The chef from Naples welcomes his customers in his tiny restaurant – literally the size of two parking spots – as if it were his own home. Vini Divini has been opened for over 21 years now, and if you still haven’t heard of it, it might just be due to its size and the difficulty to get a table among the regulars in its extremely intimate setting. To get a table, make sure to book 2-3 weeks in advance, 4 to eat at the counter on the weekends.<br/>
  Once inside, let the chef and his team guide you. Vincenzo and Elise – his sous-chef for 13 years now – offer inspired and seasonal Italian cuisine in a five-course tasting menu (60€) to about 20 customers per night. All around us, wine bottles fill the shelves all the way to the ceiling, satisfying even the biggest Italian wines enthusiasts. We start with a Proseco glass (included in the menu), while observing each detail of the happy mess around us. The atmosphere is fantastic: the music is loud, the restaurant is full – like every single night – and the place is extremely charming and filled with good vibes only. All around, customers are drinking and laughing, as dishes slowly start to arrive on the tables. The menu starts with a buffala, quickly followed with Bouchot mussels, delicious ravioli filled with ricotta cheese and boletus mushrooms and served in a butter-sage sauce, then an amazing line-caught sea bass we still remember. The hit of the show: the lemon pie, with a lemon curd like we never had the chance to try before. An institution, to say the least.",
    address: "28 Rue du Berger, 1050 Bruxelles",
    phone_number: "04 77 26 14 87",
    website: "http://vini-divini.eu/",
    opening_hours: "From Monday to Saturday, from 7pm to 10:15pm",
    price_indication: "Brunch in the hotel le berger: 35€",
    booking_link: "http://vini-divini.eu/",
    deliveroo_link: "https://deliveroo.be/en/menu/brussels/saint-boniface/vini-divini#",
    brunch: false,
    terrace: false,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "Petit Mercado",
    subtitle: "grocery store, wine bar, lunch spot",
    content: "Petit Mercado was born in the minds of Pia and Mano after a long trip to Argentina. Inspired by the numerous markets where locals would spend more time having a drink with their neighbors, chatting over the latest news than actually doing groceries, they decided to open a local grocery store slash wine bar and eatery, as soon as they would return. Their vision when opening Petit Mercado in the heart of Saint-Gilles: hunt for the best suppliers and offer organic, artisanal and locally grown produce to their customers.<br/>
In the shelves and in the boxes by the window, you’ll find organic veggies and fruits by the Terroirist, tin cans from Galicia, Velvet coffee roasted in Belgium, natural and organic wines by Titulus, Vino Vivo or Cave Coop, a cool selection of books from Candide, and on the tables and on the walls, beautiful hand-made ceramics by Matières Nomades. In the kitchen, Massi, ex-Café des Minimes and ex-Le Local, has a strong seasonal and zero-waste vision, starting with the lunch menu – two sandwiches also available in plates, a savory pie and a sweet pie – all made from the produce available in the store. In the evening – but all throughout the day too actually – people come and go to have a seat at the big counter, sipping on a glass of wine or elderflower juice, nibbling on pork terrine from Les Caves d’Alex (9€), pizzetta with ricotta cheese and honey (10€), or a bunch of other very cool small plates to share.<br/>
We already really love this Petit Mercado who opened just a few days ago, its strong and super promising vision, beautiful space and and extremely welcoming team.",
    address: "82 Rue de l'Hôtel des Monnaies, 1060 Bruxelles",
    website: "https://www.facebook.com/lepetitmercadobxl/",
    opening_hours: "From Tuesday to Saturday, from 10am to 9:30pm<br/>
Sunday from 10am to 6pm",
    price_indication: "Lunch: 6€ – 13€<br/>
To share with drinks: 3€ – 10€<br/>
Wine by the glass: 4€ – 7€",
    booking_link: "https://www.facebook.com/lepetitmercadobxl/",
    deliveroo_link: "",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: false
  },
  {
    title: "Le Fabiola",
    subtitle: "wine bar",
    content: "If you already knew the Cheese and Wine Café, you won’t bel lost walking into Le Fabiola. Inside, most of the interior has remained unchanged, from the red brick walls to the long shared wooden tables. On the walls, shelves filled with wine bottles, and lots of references to our previous Queen Fabiola, making this place now unique.<br/>
When Thibault and Olivier first got into wines, over 12 years ago, only very few places in Brussels seemed to be specialized in the area. After both living for a few years in Spain, they decided to combine best of both worlds: Spanish wines, white pudding from Lièges, and pictures of queen Fabiola all around, a symbol of our Belgian culture.<br/>
But their offer doesn’t stop there. When opening the Fabiola six years ago now, they also brought back the Gin and Tonics trend from Spain, when it had only just started, as well as the concept of tapas. Today, they still have a cool selection of gins of offer, and their tapas range has grown a lot too. Other than white pudding, there is also pan con tomate, burrata, serrano ham, grilled camembert cheese served with honey and chorizo – clearly the hit of the house -, and about a dozen more. Wines are mostly Spanish, with a few from France, a few in direct trade, and a nice selection of natural and organic wines, growing every year. We love taking a seat on the little terrace outside to catch the last rays of sun, sipping on a glass of Vividor, a red wine we discovered here and love (27€ the bottle), watching the people go by.",
    address: "52 Rue Lesbroussart, 1050 Bruxelles",
    website: "https://www.facebook.com/LEFABIOLA/",
    opening_hours: "From Monday to Saturday, from 5:30pm to midnight",
    price_indication: "Wine by the glass: 4.5€ – 7€<br/>
Tapas: 3€ – 25€",
    booking_link: "https://www.facebook.com/LEFABIOLA/",
    deliveroo_link: "",
    brunch: false,
    terrace: false,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "Titulus",
    subtitle: "wine bar & wine shop",
    content: "When Titulus opened in Brussels in September 2011, it was clearly a pioneer for importing and distributing natural wines. It was also from the start the perfect place to enjoy a glass of wine, along with delicious food carefully picked out by Baptiste, Vivien and Philippe, the three passionate founders, who’ve always put quality first. On the wineshop side, you’ll find bottles at every price, starting by the “Têtes” series (8,90€ the bottle), produced by the founders themselves since 2013, when they took over the vines from Domaine des Baigneux in their native region of Tourraine.<br/>
Since then, they’ve been producing their own red, white, rosé and natural sparkling wine, so as to master every single side of this complex craftsmanship. Besides the “Tête Red” and “Tête Blanche”, two of our favorites, you’ll also find over 350 references, which you can either buy to take away or drink on the spot for a fixed extra of 8 euros. But you won’t come to Titulus just to drink. The three friends have partnered with the best providers to make sure their food list would be just as qualitative as their wine list : cheeses from Julien Hazard, bread from Hopla Geiss, cold cuts and meet pies from Alimentation or daily homemade ceviche. Every week, they also serve a special – chicken stew, confit duck leg or braised beef with bearnaise to name a few – put in a jar by a chef in Anjou then served along with crudités from Färm and fresh bread. During the season, you’ll also find fresh oysters at Titulus every single Thursday. Definitely our go-to place for a drink with friends or to find the perfect bottle for an extraordinary dinner.",
    address: "167A Chaussée de Wavre, 1050 Bruxelles",
    phone_number: "02 512 98 30",
    website: "http://www.titulus.be/",
    opening_hours: "Monday from 5pm to 10pm<br/>
From Tuesday to Saturday, from 12am to 10pm",
    price_indication: "Wine by the glass: 4€ - 9€<br/>
To eat: 3.50€ – 17€",
    booking_link: "https://www.titulus.be/",
    deliveroo_link: "",
    brunch: false,
    terrace: true,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "Monk",
    subtitle: "authentic belgian bar",
    content: "We fell in love at Monk. We fell in love with this man, who’s been coming here for over 25 years, and who knows the story of the place “better than the waitress”. We fell in love with this other man, who comes here for a soup every single day, when he’s not picking up a sandwich across the street, to eat it here along with a beer. We fell in love for the een bekke vanalles platter – a little bit of everything – its Orval cheese, its pâté de champagne, and its huge meatball pierced with a bunch of toothpick across the sandwich paper.<br/>
We fell in love for this eclectic and cosmopolitan customer base, changing as the day passes. There are three Monks, says the first man. The one from the morning, the one from the afternoon and the one from the evening. We also fell in love for its Belgian beer selection, and its huge tap beer offer. We fell in love for that not-so-young-anymore couple, coming every day at 11am sharp to enjoy a glass of white. We fell in love with the ancient woodworks, built long before the Monk even existed, and the words “à la couronne” carved onto it, giving us hints about the previous owners. And then we also fell in love for those long nights drinking and dancing, where we rush to eat their spaghetti Bolognese right before their kitchen closes, after having had one too many drinks already. We fell for this bar and the life it conveys, the stories it tells, the culture it passes on through each one of its customer, each of its Belgian beers, and every ballekes bites. We love the feeling of slowly making this place our own, like these men have done before us. Its more than a beer that we come to find when we walk into Monk, it’s a piece of the soul from Brussels.",
    address: "42 Rue Sainte-Catherine, 1000 Bruxelles",
    phone_number: "02 511 75 11",
    website: "http://www.monk.be/",
    opening_hours: "From Monday to Saturday, from 12pm to 3pm and from 6pm to 11pm<br/>
Sunday from 6pm to 11pm",
    price_indication: "Beers: 2.20€ – 5.50€<br/>
Mixed platter: 12€",
    booking_link: "http://www.monk.be/en",
    deliveroo_link: "",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: true
  },
  {
    title: "Ethylo",
    subtitle: "cocktail bar",
    content: "Inside, it feels as though we’re in a speakeasy dating from the prohibition period in the U.S. back in the late 20’s. The wallpaper, the barman’s suspenders, the gramophone by the window and the huge vintage tv transformed into a high table all highly contribute to the feeling. We immediately feel like taking place at one of those low marble tables, in this cosy and intimate venue.<br/>
On the menu, a short list of cocktails: 7 signature cocktails, 7 classics (from 8 to 13€), and two mocktails (6€), making it easier to make a decision. We let the waitress guide us and order the weekly special, a Umami cocktail made from Tequila, mango shrub and soy sauce. Romain tells us how he loves picking flavors for his cocktails in the food he discovers. For this one, he was inspired by an Asian dish. He cooked mango with shallots then let the mixture macerate in sugar before adding wine vinegar to it. The result is just delicious. His specialty: anything that can be homemade in his workshop below. Shrubs, syrups, fruit juices, liquors and infused alcohol; nothing’s is forgotten, not even the homemade aquafaba saved from the homemade humos. But what he wanted most when opening Ethylo was the ability to offer quality spirits, which he just loves selecting, at affordable prices. Before opening the bar with his two partners, Romain learned a big part of the job at Green Lab. Then, at Copain, close by, where he quickly realized that the demand for cocktail in the area was really high. A good thing and a perfect timing too, as he had been dreaming of opening his own cosy cocktail place for 5 to 6 years already. And this how Ethylo was born.",
    address: "2 Rue Josse Impens, 1030 Bruxelles",
    phone_number: "02 307 37 31",
    website: "https://www.ethylo.be/",
    opening_hours: "From Tuesday to Thursday, from 6pm to 1am<br/>
From Friday to Saturday, from 6pm to 2am",
    price_indication: "Cocktails: 8€ – 13.50€",
    booking_link: "https://www.ethylo.be/",
    deliveroo_link: "",
    brunch: false,
    terrace: false,
    monday_night: false,
    sunday_night: false
  }
]

# All places pictures URLs
places_photo_url_list = [
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576418/Brussels%20Kitchen/Komo/komo_main_z3urjs.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576418/Brussels%20Kitchen/Komo/komo1_clppxh.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576418/Brussels%20Kitchen/Komo/komo2_rdui0g.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576483/Brussels%20Kitchen/Tulipant/tulipant_main_pcemmv.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576483/Brussels%20Kitchen/Tulipant/tulipant1_gugb4l.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576483/Brussels%20Kitchen/Tulipant/tulipant2_amy4o1.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576427/Brussels%20Kitchen/Luka/luka_main_w4yuit.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576427/Brussels%20Kitchen/Luka/luka1_n4bmwc.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576427/Brussels%20Kitchen/Luka/luka2_z8yust.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576350/Brussels%20Kitchen/Comptoir_Rodin/comptoir_rodin_main_ovxmja.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576350/Brussels%20Kitchen/Comptoir_Rodin/comptoir_rodin1_wlk3c6.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576350/Brussels%20Kitchen/Comptoir_Rodin/comptoir_rodin2_anrl8l.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576407/Brussels%20Kitchen/Flora/flora_main_i7md8p.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576408/Brussels%20Kitchen/Flora/flora1_bfy0di.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576408/Brussels%20Kitchen/Flora/flora2_namasz.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576474/Brussels%20Kitchen/Tero/tero_main_ew6wx9.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576474/Brussels%20Kitchen/Tero/tero1_ehxfl2.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576474/Brussels%20Kitchen/Tero/tero2_r5041a.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576447/Brussels%20Kitchen/Minimes/minimes_main_gj4vtk.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576446/Brussels%20Kitchen/Minimes/minimes1_smefrr.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576447/Brussels%20Kitchen/Minimes/minimes2_ehibyv.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576397/Brussels%20Kitchen/Fernand_Obb/fernand_obb_main_tsmkze.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576397/Brussels%20Kitchen/Fernand_Obb/fernand_obb1_az8zil.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576397/Brussels%20Kitchen/Fernand_Obb/fernand_obb2_k42nt9.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576436/Brussels%20Kitchen/La_Meute/meute_main_c89ujw.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576436/Brussels%20Kitchen/La_Meute/meute1_etx2o8.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576435/Brussels%20Kitchen/La_Meute/meute2_xygw1n.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576465/Brussels%20Kitchen/Nuovo_Rosso/nuovo_rosso_main_vlk0in.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576465/Brussels%20Kitchen/Nuovo_Rosso/nuovo_rosso1_amwwyj.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576465/Brussels%20Kitchen/Nuovo_Rosso/nuovo_rosso2_cgcjil.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576386/Brussels%20Kitchen/My_tannour/my_tannour_main_hojsv7.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576386/Brussels%20Kitchen/My_tannour/my_tannour_1_vkopoc.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576386/Brussels%20Kitchen/My_tannour/my_tannour_2_vvfmmj.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576348/Brussels%20Kitchen/Bar_du_canal/barducanal_main_yaihny.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576348/Brussels%20Kitchen/Bar_du_canal/barducanal_1_huvk0z.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576348/Brussels%20Kitchen/Bar_du_canal/barducanal_2_rb8pof.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576401/Brussels%20Kitchen/Cafe_caberdouche/cafe_caberdouche_main_r7ahmu.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576400/Brussels%20Kitchen/Cafe_caberdouche/cafe_caberdouche_1_sk2nga.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576400/Brussels%20Kitchen/Cafe_caberdouche/cafe_caberdouche_2_gwvi2h.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576428/Brussels%20Kitchen/Phare_kanaal/phare_kanaal_main_ohfjht.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576428/Brussels%20Kitchen/Phare_kanaal/phare_kanaal_1_cq19ex.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576428/Brussels%20Kitchen/Phare_kanaal/phare_kanaal_2_kms1s0.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576415/Brussels%20Kitchen/Vini_divini/vini_divini_main_kaoetl.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576415/Brussels%20Kitchen/Vini_divini/vini_divini_1_rkrxqx.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576415/Brussels%20Kitchen/Vini_divini/vini_divini_2_y6k1v9.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576445/Brussels%20Kitchen/Petit_mercado/petit_mercado_main_ukzd56.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576445/Brussels%20Kitchen/Petit_mercado/petit_mercado_1_mpuqnq.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576445/Brussels%20Kitchen/Petit_mercado/petit_mercado_2_qvuzhl.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576457/Brussels%20Kitchen/Fabiola/fabiola_main_di3ug0.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576457/Brussels%20Kitchen/Fabiola/fabiola_1_z6y9t5.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576457/Brussels%20Kitchen/Fabiola/fabiola_2_al151r.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576469/Brussels%20Kitchen/Titulus/titulus_main_nrot4f.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576469/Brussels%20Kitchen/Titulus/titulus_1_dkkv4i.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576469/Brussels%20Kitchen/Titulus/titulus_2_xlbkub.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576456/Brussels%20Kitchen/Monk/monk_main_thod9s.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576456/Brussels%20Kitchen/Monk/monk1_xtna9v.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576457/Brussels%20Kitchen/Monk/monk2_usvowl.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576386/Brussels%20Kitchen/Ethylo/ethylo_main_pihy7m.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576386/Brussels%20Kitchen/Ethylo/ethylo1_ngwys4.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573576386/Brussels%20Kitchen/Ethylo/ethylo2_wlddaf.jpg"],
]

# Create places and their images
create_objects_with_images(place_attributes, Place, places_photo_url_list)

# Create categories and tags
Category::CATEGORIES.each { |category| Category.create(name: category) }
Tag::TAGS.each { |tag| Tag.create(name: tag) }

# Assign categories and tags to places
Place.all.each do |place|
  random1 = [1, 2].sample
  random2 = [1, 2, 3].sample

  random1.times do
    random_category = Category.all.sample
    if CategoriesPlace.where(category_id: random_category.id, place_id: place.id).empty?
      CategoriesPlace.create(category_id: random_category.id, place_id: place.id)
    end
  end

  random2.times do
    random_tag = Tag.all.sample
    if PlacesTag.where(place_id: place.id, tag_id: random_tag.id).empty?
      PlacesTag.create(place_id: place.id, tag_id: random_tag.id)
    end
  end
end

# All events attributes
event_attributes = [
  {
    title: "Eatcolor 2017",
    subtitle: "monochrome dinner experience",
    content: "Beginning of november 2017, we held our pop-up restaurant EATCOLOR at MAD, right in the heart of Brussels.<br/>
    Already launched once in 2013, EATCOLOR is a pop-up restaurant welcoming 4 extremely talented chefs, within a surprising and custom-made decor. But it’s mostly a restaurant where guests have the rare opportunity to try a single-colored 7 course menu, from amuse-bouche to dessert.<br/><br/>
    For this 2017 edition, we were lucky to welcome each night the amazing El Camion food-truck and his chef, Joël Geismar, matching the colours of his super creative appetizers with the color of each menu. The genius Maarten Van Essche, who blew our mind from beginning to end with an extraordinary black menu, the extremely talented Toshiro Fujii, whose orange menu was as delicate and elegant as can be, the crazy duo of Nicolas Scheidt and Luis Alonso, and their colourless menu which was anything but tasteless, and the creative Kenzo Nakata, recently named best young chef 2018 by Gault & Millau, with a green menu that kept us holding our breath from the first till the very last course.<br/><br/>
    Intrigued? Put on your headphones, turn the sound up, put the video on HD and hit play!<br/><br/>But none of this would’ve been the same without the precious help and welcome of the MAD, where we were able to create 4 magical days of pure gastronomy. Without Vivien and Baptiste, the talented wine makers and founders of Titulus and their wine pairings without which none of the menus would have matched such excellence. Without the presence and work of Joana and François, from Fika and Café Capitale, and their origin filtered coffee which delicately ended each dinner. And without the priceless help of Asa Selection, Maes Inox, Marcolini and the talented Eprod team behind this video!",
    event_date: DateTime.parse("2017-11-21 19:00:00"),
    address: "10 Place du Nouveau Marché aux Grains, 1000 Bruxelles",
    state: "happened",
    tickets_link: ""
  },
  {
    title: "Brussels’ Kitchen Book Launch",
    subtitle: "book launch party",
    content: "Our Book launch was a week ago already! Here is a sneak peak into the party we threw to celebrate.<br/><br/>
    We hope you had the opportunity to feast on the delicious kimchi pork buns and gyozas from Umamido, the flowery ravioli from Humphrey, the amazing choux from Chouconut, and the marvellous pasteis de nata from Forcado, all of it served to you by the wonderful Deliveroo team! That you took a million selfies thanks to SharingBox, and that you had the chance to discover (or rediscover) the great organic beers from Ginette, and the no-less organic and sexy soft drinks from Lovibond – Fritz Kola, Vigo Kombucha, Club Mate, and their latest drink and also our favorite : Yoko Matcha.<br/><br/>
    Lovibond who also took of making sure you listened to the best sound all night long. Thanks guys ! <3<br/><br/>
    But most of all we hope you enjoyed the night and are currently folding the pages of our book to plan your future nights out!<br/><br/>
    If you haven’t got your own copy already and want to get it home delivered, it’s right this way.
To be informed of our future events and get invited to our next parties, it’s right here.
The dishes you have tried during the launch – the pork buns from Umamido, the pasteis from Forcado, the choux from Chouconut – are available for delivery here.
(You can’t seem to find Chouconut on our website, it’s normal. They’re part of the 15 places which you can read about exclusively in our book 😉)
",
    event_date: DateTime.parse("2017-09-10 19:00:00"),
    address: "18 Rue Duquesnoy, 1000 Bruxelles",
    state: "happened",
    tickets_link: ""
  },
  {
    title: "BK’s Table",
    subtitle: "guest table",
    content: "The BK’s Tables are now over, BUT, we continue to welcome you into our homes! It will be slightly different as this time, we will invite a chef as well, to cook a gastronomic 4-course tasting menu for you. All info on this new dinner series called “Viens chez moi, j’invite un chef”, here.<br/><br/>
    The concept : a dinner for 16 people, at Chloe’s place, in a laid-back and friendly atmosphere. A four course menu, mainly centered around seasonal vegetables, local and organic, along with wine pairings.The tables take place twice a month, on a Thursday and the Friday right after that. Want to join us and be our guest in our own home?<br/><br/>
    The next tables are :<br/>
– Friday 15th of December<br/><br/>
See you soon?<br/><br/>
All the photos of our previous tables right here.<br/>
Thanks to Our Daily Bottle for the wine pairing, to Delhaize for the organic products and to The Little Green Shop for making this table as green as it could be.<br/>
Also a big thanks to Hailing Wang for the great video.",
    event_date: DateTime.parse("2017-03-16 19:30:00"),
    address: "Place Sainte-Croix, 1050 Bruxelles",
    price_indication: "50€ per person",
    state: "happened",
    tickets_link: "info@brusselskitchen.com"
  },
  {
    title: "Wild Plants & Flowers Gathering",
    subtitle: "Sunday Brunch",
    content: "We’d had the idea for a while already. Then finally, last tuesday, the first Brussel’s Kitchen roof top terrace drink happened at Henri & Agnes. After picking out flowers and plants in the forest this weekend, a couple or research in various books and a few tests, we prepared tons of delicious treats with wild plants.<br/>
Our guest had the occasion to try bear garlic pesto, hazelnut puree, sorrel dip, nettle butter (my favorite), fresh goat cheese with ground ivy, rose meringue, vervain fruit salad, elderberry syrup…All of this happened with a beautiful view of Brussels, with a beautiful changing light as the sun was slowly starting to disappear behind the clouds. It was also the occasion to learn how to make deliciously flower flavored salt.<br/>
<br/>
A big thanks to Dille & Kamille for their pretty aprons offered to our guests, and which Christelle and I wore the entire evening, to Dandoy for their delicious cookies, and to San Pellegrino for their forever presence.<br/>
<br/>
And a particular thanks to Hailing Wang, our very talented photographer of the night, for her oh so amazing work. Here is her facebook page and her website.",
    event_date: DateTime.parse("2014-05-26 11:00:00"),
    address: "48 Rue Véronèse, 1000 Bruxelles",
    details: "From 11am to 7pm",
    state: "happened",
    tickets_link: ""
  },
  {
    title: "Eatcolor 2013",
    subtitle: "monochrome dinner experience",
    content: "Beginning of november 2013, we held our pop-up restaurant EATCOLOR at MAD, right in the heart of Brussels.<br/>
Already launched once in 2010, EATCOLOR is a pop-up restaurant welcoming 4 extremely talented chefs, within a surprising and custom-made decor. But it’s mostly a restaurant where guests have the rare opportunity to try a single-colored 7 course menu, from amuse-bouche to dessert.<br/>
<br/>
For this 2013 edition, we were lucky to welcome each night the amazing El Camion food-truck and his chef, Joël Geismar, matching the colours of his super creative appetizers with the color of each menu. The genius Maarten Van Essche, who blew our mind from beginning to end with an extraordinary black menu, the extremely talented Toshiro Fujii, whose orange menu was as delicate and elegant as can be, the crazy duo of Nicolas Scheidt and Luis Alonso, and their colourless menu which was anything but tasteless, and the creative Kenzo Nakata, recently named best young chef 2018 by Gault & Millau, with a green menu that kept us holding our breath from the first till the very last course.<br/>
<br/>
Intrigued? Put on your headphones, turn the sound up, put the video on HD and hit play!<br/>
<br/>
But none of this would’ve been the same without the precious help and welcome of the MAD, where we were able to create 4 magical days of pure gastronomy. Without Vivien and Baptiste, the talented wine makers and founders of Titulus and their wine pairings without which none of the menus would have matched such excellence. Without the presence and work of Joana and François, from Fika and Café Capitale, and their origin filtered coffee which delicately ended each dinner. And without the priceless help of Asa Selection, Maes Inox, Marcolini and the talented Eprod team behind this video!",
    event_date: DateTime.parse("2013-10-22 19:00:00"),
    address: "10 Place du Nouveau Marché aux Grains, 1000 Bruxelles",
    state: "happened",
    tickets_link: ""
  },
  {
    title: "BRUSSELS’ KITCHEN 1 Year Party",
    subtitle: "let's celebrate our first anniversary",
    content: "We threw a party to celebrate Brussel’s Kitchen’s first anniversary!<br/>
Thursday, you guys were almost 200 celebrating this event with us, and nothing could have made us happier. Once again, if we’re here today, it’s because of you! <3<br/>
<br/>
We worked our asses off to prepare that party, and we really hope you enjoyed it! Between the chili popcorns, madeleines, hundreds of stamps to stamp and the whole organization, we spent a huge time on it. But after this thursday evening, it was just really worth it!<br/>
<br/>
So great to meet you guys for real and to hear all your compliments…We’re still all touched and so surprised that everything went so well! This already puts some pressure on us for next year…hehe.<br/>
<br/>
This night wouldn’t have been possible without our precious partners. So we want to thank Blue Pepper, Michel & Augustin, Kombucha Wonderdrink, San Pellegrino, Kusmi Tea, Vedett, Take Eat Easy and Delhaize but also Le Petit Canon, La Maison Renardy, La Cuisine de Flore, Pimpinelle, Unico, L’hotel du Berger, Vini Divini and Ici who made those gifts possible.<br/>
<br/>
But especially a HUGE thanks to Joel, chef at El Camion, who made amazing local and organic foods that evening. Organic hot dog with black radish, asparagus, arugula and boletus mayonnaise, that was just amazing, and a great parmesan cheese, potato and arugula soup. Thank you Arthur and Diego, Colonel Up and Mister Down, for the great sound and atmosphere, thank you Geraldine Calbert and Hopop Studio for the exposed and intensely used furniture, and finally, a huge thanks to 354 photographers who kindly lent us their photo studio!<br/>
I know it sounds a lot like an award ceremony but I really did have to thank all those great people who made that night possible!<br/>
<br/>
And to finish, here is a 20% off discount on all purchase on www.kusmitea.com with the code KUSMIBK (valid until the 30.04.2013, may not be combined with any other offers or promotions).",
    event_date: DateTime.parse("2013-03-31 19:00:00"),
    address: "22 Rue du Marché Aux Herbes, 1000 Bruxelles",
    state: "happened",
    tickets_link: ""
  },
  {
    title: "Pizza Waffle",
    subtitle: "new food concept",
    content: "Friday, Max and Kevin celebrated their photo studio’s first anniversary, 354 photographers. They had asked some artist friends to create an exhibition for the occasion.<br/>
<br/>
Sarah and I were in charge of the food, and we decided to try a recipe we’d found here. This blog is just gorgeous. We’re not such big fans of the fashion articles, but all the recipes are usually amazing and pushed to the extreme luxury and refinement, without being too hard to realize. Meet Luxirare.<br/>
<br/>
We were inspired by her article on the waffle machine to make “pizza waffles” which had a crazy success.<br/>
We simply didn’t move from behind the bar for five hours straight, and we even ended up with a huge waiting list. (our second machine broke down after only an hour, you can only imagine the rush.)<br/>
<br/>
Anyways, it was really easy, apparently really good (we only had a small piece to try), and super fast. You’ll just need a waffle machine, pizza dough (I highly recommend the one from Lidle, they’re already square shaped, much easier), and your favorite pizza ingredients to fill in. Here, besides the mozzarella and tomato sauce, we used parma ham, grilled zucchini and peppers, mushrooms, basil and arugula. And to drink, some raspberries in a cava glass, so easy.",
    event_date: DateTime.parse("2012-06-03 19:00:00"),
    address: "455 Chaussée de Boondael, 1050 Ixelles",
    state: "happened",
    tickets_link: ""
  },
  {
    title: "Brussels' Kitchen's 2nd book launch",
    subtitle: "brussels’ kitchen’s second book launch event",
    content: "On Sunday September 29th, we celebrated the launch of Brussels’ Kitchen’s second book, the second book that I wrote, at MAD Brussels.<br/>
<br/>
It was simply incredible having so many of you there – and on a rainy Sunday night that is! The queue to get the book signed simply never seemed to empty, and I ended up finding out most about what actually happened during the night when discovering the beautiful photos taken by Vivi. It was a rare moment of joy and magic, the kind that happens only a few times in a lifetime, and for that THANK YOU.<br/>
<br/>
Thank you for coming, thank you for all of your kind words when announcing the release of this second book, thank you for everything. And a huge thank you to the MAD, for letting us use their amazing MAD Café, and its huge terrace, which was simply perfect, even under the rain. This night couldn’t have been possible without them so again, THANK YOU.",
    event_date: DateTime.parse("2019-10-07 19:00:00"),
    address: "10 Place du Nouveau Marché aux Grains, 1000 Bruxelles",
    details: "Delivery to Belgium only",
    price_indication: "19.95€ + 4€ (delivery fees)",
    state: "happened",
    tickets_link: "https://www.brusselskitchen.com/produit/les-nouvelles-adresses-food-style-2019-fr-en?lang=en"
  },
  {
    title: "Viens Chez Moi",
    subtitle: "october 27th & 28th 2019",
    content: "The dinners “Viens chez moi, j’invite un chef” are back! 🥂<br/>
<br/>
The concept: Every month, I will welcome you into my very own apartment for a unique type of dinner. One chef, an open kitchen, a perfectly sun-exposed terrace for drinks, an amazing 4-course gastronomic tasting menu and a table for 16 people! Atmosphere? Cosy, intimate and chill! What better to ask for?<br/>
<br/>
This October, I’m inviting two different sets of chefs and hosting two dinners in my apartment!<br/>
<br/>
• On the 27th of October, I’m inviting Ben & Alice, from one of our favorite restaurants, Brut. Opened less than a year ago by the couple and Alice’s brother, the restaurant soon made a reputation for itself and it is now extremely hard to get a table! Book for their very special dinner at mine, right here.<br/>
<br/>
• On the 28th of October,  I’m inviting Stefan Jacobs, from the newly opened restaurant Hors-Champs. We had already had the occasion to try his amazing cuisine a couple of times, first at Bertinchamps, then at the pop up restaurant Chez Marie in Flagey. For only a few days now, Stefan has been welcoming customers in his very own place, Hors-Champs, in Gembloux.  Book for his dinner in my apartment, right here.<br/>
<br/>
<br/>
On October 27th and 28th, both chefs will prepare a 4-course tasting menu for 16 people, served along with sparkling wines and wine pairings, in an exclusive setting.<br/>
<br/>
It’s in Flagey, Sunday 17th and Monday 28th of October.<br/>
<br/>
Are you coming?<br/>
<br/>
• Bookings for the 27th with Alice & Ben from Brut<br/>
<br/>
• Bookings for the 28th with Stefan from Hors-Champs<br/>
<br/>
• What and How much: 4-course tasting menu + apetizer with a glass of sparkling wine + wine pairings from Titulus, bread by Mama, water and origin coffee from Belga & Co, all for 75€.<br/>
<br/>
• Where: near Flagey, the exact address will be given to you once you have made the reservation.<br/>
<br/>
See you very soon!<br/>
<br/>
To Titulus for this long-lasting and strong partnership, and for their great wine pairings, to Mama for the excellent bread, to Vivi Pham Photography for the gorgeous pictures, to Belga & Co for the delicious Colombian filter coffee, to Heetch for allowing our guests to go home safely and to the Brussels’ Kitchen team, making sure everything goes smoothly, always <3",
    event_date: DateTime.parse("2019-10-28 19:00:00"),
    address: "Place Sainte-Croix, 1050 Bruxelles",
    details: "Shared table of 16 people",
    price_indication: "4 course tasting menu + apetizer + sparkling wine + wine pairings: 75€",
    state: "happened" ,
    tickets_link: "https://www.eventbrite.com/e/viens-chez-moi-jinvite-benoit-stas-alice-pollet-tickets-76872486677"
  },
  {
    title: "Le Brunch Club",
    subtitle: "Once a month, experience an amazing brunch in Brussels",
    content: "The Brunch Club is back with new dates for 2019!💫<br/>
<br/>
<br/>
Each month, Brussels’ Kitchen gathers 7 chefs from Brussels around a unique vegetarian tasting menu in 7 courses, paired with natural wines from Titulus Pictus, organic cold pressed juices from Misuko and coffee from Belga & Co.<br/>
Two shifts of 40 guests, at 11am and 2pm, in a laid-back and warm atmosphere, at Humphrey.<br/>
<br/>
Next Brunch Clubs for 2019 below. Find also each brunch on facebook under tab “events” of our facebook page right here.<br/>
<br/>
– February 17th 2019 – watch the story here<br/>
– March 24th 2019 – watch the story here<br/>
– April 21st 2019 – watch the story here<br/>
– May 12th 2019 – watch the story here<br/>
– June 16th 2019 – watch the story here<br/>
– July 14th 2019 – watch the story here<br/>
– August 25th 2019 – watch the story here<br/>
– October 6th 2019 – watch the story here<br/>
– November 3rd 2019 – book here<br/>
– December 8th 2019 – book here<br/>
– January 19th 2020 – book here<br/>
– February 16th 2020 – book here<br/>
– March 8th 2020 – book here<br/>
– April 12th 2020 – book here<br/>
– May 10th 2020 – book here<br/>
<br/>
Bookings for August 25th here 💫 Want to offer a Brunch Club experience to your loved ones? Ask for our gift cards 🎁<br/>
<br/>
Practical info :<br/>
• Where : at Humphrey restaurant, rue Saint-Laurent 36-38, 1000 Bruxelles<br/>
• What : a vegetarian tasting menu in 7 courses, drinks included (juice, natural wines, coffee)<br/>
• How much : 45€ pp",
    event_date: DateTime.parse("2019-12-08 11:00:00"),
    address: "38 Rue Saint-Laurent, 1000 Bruxelles",
    price_indication: "45€ pp (drinks included)",
    state: "upcoming",
    tickets_link: "https://www.eventbrite.com/e/le-brunch-club-8-decembre-tickets-65642355051"
  }
]

# All events pictures URLs
events_photo_url_list = [
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816657/Brussels%20Kitchen/EVENTS/Eatcolor_2017/Eatcolor_2017_main_sjdx9j.png", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816660/Brussels%20Kitchen/EVENTS/Eatcolor_2017/Eatcolor_2017_1_vrn1vl.png", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816645/Brussels%20Kitchen/EVENTS/Eatcolor_2017/Eatcolor_2017_2_mnp6jh.png"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816431/Brussels%20Kitchen/EVENTS/1st_book_launch/1st_book_main_z9gmtq.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816433/Brussels%20Kitchen/EVENTS/1st_book_launch/1st_book_1_a8udid.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816430/Brussels%20Kitchen/EVENTS/1st_book_launch/1st_book_2_p6nxic.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816523/Brussels%20Kitchen/EVENTS/BKs_table/BK_table_main_yokmkh.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816525/Brussels%20Kitchen/EVENTS/BKs_table/BK_table_1_h3nx6w.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816522/Brussels%20Kitchen/EVENTS/BKs_table/BK_table_2_yibmlg.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816726/Brussels%20Kitchen/EVENTS/Wild_plants/Wild_plants_main_fpy8gw.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816727/Brussels%20Kitchen/EVENTS/Wild_plants/Wild_plants_1_fjlrox.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816724/Brussels%20Kitchen/EVENTS/Wild_plants/Wild_plants_2_ifchc8.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816608/Brussels%20Kitchen/EVENTS/Eatcolor_2013/Eatcolor_2013_main_itxior.png", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816615/Brussels%20Kitchen/EVENTS/Eatcolor_2013/Eatcolor_2013_1_lnf7n1.png", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816610/Brussels%20Kitchen/EVENTS/Eatcolor_2013/Eatcolor_2013_2_ho80or.png"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816469/Brussels%20Kitchen/EVENTS/1st_year_party/1_year_main_fpxxid.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816469/Brussels%20Kitchen/EVENTS/1st_year_party/1_year_1_stye4b.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816469/Brussels%20Kitchen/EVENTS/1st_year_party/1_year_2_kqwymn.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816683/Brussels%20Kitchen/EVENTS/Pizza_waffle/Pizza_waffle_main_anz8if.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816683/Brussels%20Kitchen/EVENTS/Pizza_waffle/Pizza_waffle_1_afwfh5.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816683/Brussels%20Kitchen/EVENTS/Pizza_waffle/Pizza_waffle_2_hbenyv.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816493/Brussels%20Kitchen/EVENTS/2nd_book_launch/2nd_book_main_zpdefb.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816496/Brussels%20Kitchen/EVENTS/2nd_book_launch/2nd_book_1_hzgiws.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816492/Brussels%20Kitchen/EVENTS/2nd_book_launch/2nd_book_2_zea2fj.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816708/Brussels%20Kitchen/EVENTS/Viens_chez_moi/Viens_chez_moi_main_dhvbux.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816707/Brussels%20Kitchen/EVENTS/Viens_chez_moi/Viens_chez_moi_1_jebdmv.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816708/Brussels%20Kitchen/EVENTS/Viens_chez_moi/Viens_chez_moi_2_h39kcy.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816554/Brussels%20Kitchen/EVENTS/Brunch_club/Brunch_club_main_ixpxn5.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816563/Brussels%20Kitchen/EVENTS/Brunch_club/Brunch_club_1_uc9csp.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573816565/Brussels%20Kitchen/EVENTS/Brunch_club/Brunch_club_2_z5ld4i.jpg"]
]

# Create events and their images
create_objects_with_images(event_attributes, Event, events_photo_url_list)

# All books attributes
book_attributes = [
  {
    title: "The best places to eat out in style (2017)",
    unit_price: 23.95,
    product_sku: 1
  },
  {
    title: "New hotspots to eat out in style (2019)",
    unit_price: 23.95,
    product_sku: 2
  }
]

# All books pictures URLs
books_photo_url_list = [
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573820547/Brussels%20Kitchen/BOOKS/book_1/book1_main_yw59sm.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573820549/Brussels%20Kitchen/BOOKS/book_1/book1_1_acho49.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573820547/Brussels%20Kitchen/BOOKS/book_1/book1_2_mq8hzc.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573820552/Brussels%20Kitchen/BOOKS/book_1/book1_3_kuecmk.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573820548/Brussels%20Kitchen/BOOKS/book_1/book1_4_t3cwhe.jpg"],
  ["https://res.cloudinary.com/dft6gfv0c/image/upload/v1573820564/Brussels%20Kitchen/BOOKS/book_2/book2_main_mv9khl.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573820565/Brussels%20Kitchen/BOOKS/book_2/book2_1_qzva8w.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573820564/Brussels%20Kitchen/BOOKS/book_2/book2_2_e4ubxz.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573820564/Brussels%20Kitchen/BOOKS/book_2/book2_3_mbw0wh.jpg", "https://res.cloudinary.com/dft6gfv0c/image/upload/v1573820565/Brussels%20Kitchen/BOOKS/book_2/book2_4_mrbsik.jpg"]
]

# Create books and their images
create_objects_with_images(book_attributes, Book, books_photo_url_list)
