# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Clear the DB
Place.destroy_all
Event.destroy_all
Book.destroy_all
Category.destroy_all
Tag.destroy_all

# All places attributes
attributes = [
  {
    title: "Komo",
    subtitle: "poke & smoothie bowls",
    content: "It seems like in Hawaii, food is all about acai and poke bowls, from breakfast till sundown, including in between surf lessons. At Komo, both are served all day long, from Tuesday to Saturday, non-stop. It was during a trip to Hawaii that Lauren first got to discover and try both, everywhere, all the time. And back to Hawaii she went, once the idea of Komo was clear in her mind, so that she could pick up all the inspiration she needed.

As a food lover who’d worked in the hospitality business since she could remember and got trained in the coolest eateries in Brussels – Knees to Chin and Bao Bang Bang among others -, she chose to partner with two of her closest friends, Olivia and Juliette, to launch her own food concept: a smoothie and poke bowls bar, just like in Hawaii. And the girls haven’t missed a single reference. From the surf board turned into a table, the little plastic belly dancers on the shelves, and the multiple shark objects and drawings – it feels just as if you’d walk into a surf shack. The place is fresh, colorful, and the girls are super nice and welcoming – pretty much everything you could ask from this type of place. Well not everything, what matters most still is inside those bowls. From Hawaii, they’ve kept the base: warm rice, marinated fish – which makes all the difference apparently -, avocado, edamame and exotic fruits. The rest of the add-ons will help you reach your five fruit and veggie target. It’s quite straight to the point, as colorful as the interior, and simply delicious. For 14€ for the larger version, you’ve got yourself one of the best healthy lunch-deals of the city, hands down. In the morning and afternoon, Komo is the place to go to grab a smoothie bowl, made with acai berries, banana or even avocado; a great and healthy option to replace our more traditional and extra-sweet breakfasts and snacks. And there as well, it’s no surprise by now: it’s just delicious.",
    address: "36 Rue Defacqz,
    1050 Ixelles",
    phone_number: "02 751 00 38",
    website: "http://www.komobowl.be/",
    opening_hours: "from monday to friday, from 10am to 3pm and from 6pm to 10pm
saturday from 11am to 3pm",
    price_indication: "poke bowls : 11€ – 14€, smoothie bowls : 8,50€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: false,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "Café Tulipant",
    subtitle: "local café",
    content: "Strategically located on Place Fernand Cocq, right in the heart of Ixelles, Café Tulipant has been open for only about just a week. And though the construction works by its entrance currently make it a little tricky for customers to access, its future perfectly sun-exposed terrace, however, seems promising enough to compete with the Belga itself.

Inside, the old floor tiles from the previous restaurant have been kept, the walls have been scraped to reveal bricks darkened by time as well as several paint and wallpaper layers beneath it. By the front door, a heavy red curtain protects customers from the cold, and by the back, a beautiful stone bar welcomes cocktail making in the evening. On the left, an open kitchen, and on its windowsill, a tulip bouquet. The Café Tulipant takes its name from the previous Auberge Tulipant which once stood in place of Ixelles’ City Hall, before a beautiful tulip garden. Bits and pieces of poetry and romantism from the days has been spread across the Café. We can’t help but smile when, going through the drinks menu, we come across the sentence “I’ve been staring at you for so long, come join me”, hidden between two lines of craft beers, or when we hear the beautiful notes of “Ne me quittes pas” by Jacques Brel playing in the room. As for the food, the Belgian spaghetti Bolognese surely has no business here. Geoffroy Baraud, the young self-taught chef, is determined to make a name for himself and for his extremely creative and elegant cuisine. Each day, he wakes up with a single goal in mind : make his customers happy. A clear mission accomplished when his dessert was brought to our table : a choux filled with 65 Brazilian chocolate ganache, served with apple caramel, matcha meringue and pear and mango compote (5€). A very promising café indeed.",
    address: "25 Place Fernand Cocq,
    1050 Ixelles",
    phone_number: "02 851 31 80",
    website: "https://cafetulipant.be/",
    opening_hours: "from monday to wednesday, from 11am to 1am
thursday and friday, from 11am to 2am
saturday from 10am to 2am and sunday from 10am to 11pm",
    price_indication: "plat du jour: 12€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: true,
    terrace: true,
    monday_night: true,
    sunday_night: true
  },
  {
    title: "Luka",
    subtitle: "delicate and hearty food",
    content: "It’s with her dad Luis, originally from Portugal, that Kamala decided to open Luka, uniting a syllable from each of their name in a place that would be just like them.

Warm and welcoming, these are the two words that popped in our minds the first time we visited this canteen with deep blue walls. Luis, standing behind his counter, will greet you with a big smile on his face as soon as you step in, and explain the daily menu written on the blackboard. Though it changes everyday, the menu has a fixed structure : you’ll always find a special, a soup, a sandwich, a quiche or pizza, and a fresh spring roll. Everything is made daily by Kamala, depending on the seasons and her inspiration.

Breakfast, Saturday brunch and delicious desserts complete the pitcure. Luis has us try the Polvorones, a specialty from Andalusia, the region where he is from. The pastries are usually prepared for Christmas, but Kamala loves them so much that she’s decided to serve them all year long. Like her dad says, “they’re simply violent”.
Their branding and visual identity matches the color of the walls. Here, everything is blue, blue, blue. We love the pretty illustrations on the cards and menus which perfectly reflect the moto of the house ; joyful and delicate food.
Truth is, even though it’s delicious, Luka’s spirit is about much more than just its food.",
    address: "260 Chaussee d’Ixelles,
    1050 Ixelles",
    phone_number: "02 646 75 47",
    website: "https://www.facebook.com/restoluka/",
    opening_hours: "open tuesday and wednesday from 12 to 2:30pm,
from thursday to saturday from 12 to 2:30pm and from 7 to 9:30pm",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: false
  },
  {
    title: "Comptoir Rodin",
    subtitle: "canteen & coffee",
    content: "Hidden between the walls of what is left of the old military hospital, the Comptoir Rodin is the type of place you’d need to know about paying a visit. From the outside, the tower rather reminds us of the casernes on boulevard Général Jacques, and it’s only after stepping inside and climbing the first set of stairs that you’ll discover this warm and cosy new-age canteen.

Right at the entrance, a little satue of Rodin, a tribute to the name of the street, will help you navigate throughout the space. Around it on the floor, arrows are pointing to the counter, the veranda, or the dining room, for those who may have lost their way. The inside, entirely renovated for the project, reminds us of the warm and cosy room of a theatre, where you’d sip on a glass of wine while waiting for act II. Heavy red velvet curtains surround the windows, brick walls left naked give the place a rather cosy feeling and mismatched leather seats complete the picture. The big windows of this four-facade house do the rest : the Comptoir is cosy, but always full of light.
At the counter, that’s where you’ll order before being served in the dining room, or in the beautiful veranda. We chose between a range of sandwiches, soups, hot, cold and hot and cold bowls. The bowls were a real success. The hot bowl (11€) – beef meatballs, yoghurt sauce, grilled vegetables, pine nuts, cilantro and wheat – was the definition of comfort food to us. Spicy, hearty and delicious. Same went for the hot-and-cold bowl (also 11€), with spicy roasted cauliflower, eggplants, pumpkin and chickpeas. But the Comptoir is open from early morning to evening, and aside its delicious bowls, it also makes for the perfect spot for breakfast, a sweet break, or a few hours of work along with a coffee.",
    address: "8 Avenue Auguste Rodin,
    1050 Ixelles",
    phone_number: "02 203 00 14",
    website: "http://comptoir-rodin.be/",
    opening_hours: "from tuesday to friday, from 8:30am to 3:30pm
saturday & sunday, from 10:30am to 4pm",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: true,
    terrace: true,
    monday_night: false,
    sunday_night: false
  },
  {
    title: "Café Flora",
    subtitle: "local bar",
    content: "The renovation of the magnificent Aegidium building, completely abandoned in the late 80’s, had been long overdue. Built in 1905 in the center of Parvis de Saint-Gilles, with its beautiful ballrooms and theatres, its main purpose used to be highly cultural. Today, we can only find what is left of it, with beautiful bits and pieces of mural paintings, stained glass or original tiles. At its front, right on the Parvis, a mythical bar used to stand: Café Flora.


After being transformed into a bank, a mutual, and a bunch of other things, the renovation of the initial Café Flora was a huge step in this much larger renovation project. Behind the controls: Thomas and Pascal, whose faces we directly recognize from Crab Club and Dillens, among others. After working as managers in numerous restaurants and bars in Brussels, the two friends had been dreaming of opening their very own bar. In 2018, they launched “T’es pas Prêt”, as a test pop-up on the same premises, to validate their project. Helped by the famous architect Lionel Jadot and the furniture designers J&J Atelier, they finally reopen a brand-new and shiny Café Flora in 2019. The space is huge and impressive; its colorful velvet touches remind us of Milanese design and its furniture of the Memphis design movement from the 80’s. Food and drinks-wise, the bar and kitchen are open from breakfast (from €4 to €9,50) to cocktails (from €7 to €10).

From the Parvis, Café Flora is hard to miss: its bright yellow terrace shines from early morning until nightfall.",
    address: "Sint-Gillisvoorplein 16A,
    1060 Brussels",
    website: "https://www.facebook.com/cafeflora1060/",
    opening_hours: "from sunday to wednesday from 8:30 to 11pm
on thursday from 8:30 till midnight
friday and saturday from 8:30 till 2am",
    price_indication: "evening snacks : 6,50€ – 15€
cocktails : 7€- 10€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: true,
    sunday_night: true
  },
  {
    title: "Tero",
    subtitle: "small plates to share",
    content: "There were three reasons altogether which made us book at table at TERO last week. First, the fact that it's already a successful venue in Bièrges, cooking mostly with ingredients from its very own farm. The second is that their food concept – small plates to share – is (slowly) taking over Brussels with places such as Humphrey, Crab Club or Ötap, and is something we are more than thrilled about.
And last but not least, what they had done with the space convinced us we had to go and try. Aside from being a restaurant working with organic, seasonal and local produce, it's a gigantic space, such as the ones you'd rather see in London, with a stunning and perfectly thought-of decoration. The ceilings are high, letting tons of natural light pass through, and the place is both huge and cosy at the same time. Simply a first in our little capital.
On the menu side, we ended up being quite disappointed with the veggies, which although they were perfectly cooked (the celeriac simply melted in our mouths), clearly lacked generosity and seasoning. On the fish and meat side, it was more of a success with the Lustin poultry with sage and pumpkin (13€), full of flavors and really tender, and the great home-smoked mackerel with olive sherbet (14€). The clams were delicious as well, but were also lacking that little something more in the sauce. We ended lunch with a vegan dark chocolate mousse (8€), with a texture as dense as the one of a ganache, without neither eggs nor milk, but with the intense flavor of dark chocolate. A very impressive dessert and know-how which clearly made up for the rest of the meal. A place to come back to in a while, when the team in the kitchen is a little bit more together and ready to match the first venue's reputation.",
    address: "1 Rue Saint-Bernard,
    1060 Bruxelles",
    phone_number: "02 347 79 46",
    website: "https://www.tero-restaurant.com/",
    opening_hours: "open from tuesday to friday from 10am to 2pm
    and from tuesday to saturday from 7 to 10pm",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: false
  },
  {
    title: "Café des Minimes",
    subtitle: "cultural bar and restaurant",
    content: "We already used to stop by for an espresso served with a Carambar candybar, back when it was still the restaurant L'Arrière Pays. It was simply hard not to: the terrace on the little paved square seemed to be calling out to us, asking us to have a seat either in the sun or in the shade from the huge tree right in its center. Since it became Café des Minimes, the little square has become a destination by itself.
We meet friends for a hearty, seasonal and delicious lunch, prepared by the chef Régis (ex cook from Tero and Kitchen 151). We tried the sweet potato waffle with a soft boiled egg, Brussels Shiitake and lemon whipped cream (15€), and the slow-cooked chicken supreme with braised chicory and baked apple (16€). Everything was just so, so good. And for smaller cravings, or lower budgets, they also have a 'tartine' and a soup, by themselves or combined, for just 10€. In the evenings, things get real serious as the lunch menu is replaced by a tapas list, paired with delicious homemade cocktails (from 7 to 10,50€) and natural wines. Whether it's for the food or the drinks, the intention here is to work with local and small producers. A great example is the Spritz des Minimes (7€), reworked with red vermouth from Biercée. Every week, there is a jazz concert on Wednesdays, a dj set to dance to on Fridays, and a rock concert on Sundays. Once a month, be sure to book your seat for comedy club night on Tuesday, and for a four-hands dinner with a guest chef on Monday. No wonder that you'll find exactly what you're looking for the rest of the time as well; just pick between coffee, tapas, lunch, cocktails or excellent local craft beers. And have it all on the sunny little paved square of course." ,
    address: "60 Rue des Minimes,
    1000 bruxelles",
    phone_number: "02 355 37 11",
    website: "http://cafedesminimes.be/",
    opening_hours: "open from tuesday to sunday from noon to 1am
   friday and saturday untill 2 am" ,
    price_indication: "lunch : from 10€ to 18€" ,
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: true,
    terrace: true,
    monday_night: false,
    sunday_night: true
  },
  {
    title: "Fernand Obb",
    subtitle: "belgian street-food counter",
    content: "Bringing a contemporary twist to Brussels' most loved street-food icons was the one goal Cédric set himself to when opening Fernand Obb. And though you'll surely spot the word 'fricadelle' in big letters on the black menu, this is gastronomy we're talking about, miles away from the fricadelles you might have had in Brussels' most authentic fritkots.
But this is not just about the fricadelle. Next to it on the board, you'll find shrimp croquettes – the exact same ones who've won the award of best shrimp croquettes in Brussels just a few months ago -, cheese croquettes, 'américain', all sorts of burgers, and even some home-smoked Scottish salmon served with its pistolet (11€).Pair the whole thing with some 'ouille ouille' spicy sauce, and you'll reach Belgian food heaven. But though the food is great and everything is homemade, Fernand Obb insists on remaining accessible to everyone. The whole concept of the place is to serve authentic food, and to remain authentic to its beloved customers. Here, true old-timers blend in with the younger crowd, with families joining in the weekends. And in the summer, the whole lot sits together in the sunny garden at the back, and enjoy their shrimp croquettes with a glass of white from Tarzan.
Symbolic references from the area have been included everywhere, from the colourful tile painting of a water carrier – Saint-Gilles' symbol -, to the name of the place itself. Obb comes from the old local expression 'Ob Bruxelles', formerly used to refer to Saint-Gilles. And Fernand, you might ask? Well it's the name of Cédric's cat, nothing less.",
    address: "27 Rue de Tamines,
    1060 Bruxelles",
    phone_number: "02 771 91 08",
    website: "http://fernand-obb.be/",
    opening_hours: "on monday from 6pm to 10pm
from tuesday to friday from 11:30am to 3pm, and from 6pm to 10pm
on saturday from 11:30am to 10pm",
    price_indication: "shrimp croquette: 7,50€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "La Meute" ,
    subtitle: "meat point",
    content: "La Meute is the story of three friends. Two brothers, Alexis and Arnaud, who after having launched two successful donburi bars, partner with their friends Jim take on a new challenge. Challenge succeeded. At La Meute, as the name says (the herd in French), we'll meet our best meat-lover friends to enjoy an easy and laid back dinner.
The concept is quite straightforward : the three partners want to offer delicious and quality meat to their customers, without ever having to break the bank. The famous 'meute' is a an Irish breed, from Wexford more specifically, and is raised in the Belgian pastures of Veurne, a few kilometers away from our dearest North Sea coast.
Inside, it's small and cosy, the tables are close and the atmosphere welcoming. It's perfect before a movie, or a drink in Flagey, but it's just as good to hang out for hours chatting with a group of friends. Aside from the carnivores who'll find what they're looking for in the contrefilet-fries-coleslaw-homemade sauce combo (20€), the vegetarians won't be left out with the veggie plate of the day (16€), neither will the wine lovers with the natural wine list from Basin (from 3,80€ by the glass). We love this place with its butcher-shop like decoration, its huge front window lighting up even the greyest winter days, and the great value for money of its short but deadly efficient menu.",
    address: "Rue Lesbroussart 6,
    1050 Ixelles",
    phone_number: "0476 75 42 86",
    website: "https://restaurantlameute.business.site/",
    opening_hours: "open from tuesday from saturday from noon to 2pm et from 7 to 10pm",
    price_indication: "menu : 20€" ,
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: false
  },
  {
    title: "Nuovo Rosso",
    subtitle: "authentic italian pasta",
    content: "Nuovo Rosso is the kind of place we should have told you about a long time ago. The place every single ragu di salsiccia enthusiast loves to hear about, and in turn discreetly share with only their favorite friends. The neighborhood Italian, the one that never disappoints.
Here, it's in the plate that the magic happens, or should we say in the pan, literally. The minute-made pastas are brought to the table in large steaming pans, to share with your friends, or feast on all by yourself.
The specialty, you might have guessed, is the Pappardelle al ragu di salsiccia (17€), by far the best in Brussels, at least according to us. They're prepared with Italian sausage, red wine and red onions. A must-try. Not far behind, the Paccheri del Prete (17€), with eggplants, cherry tomatoes and mozzarella cheese. And if you're here to celebrate something special, go for the Pappardelle All'Astice (28€), with tomato sauce, garlic, white wine and half a lobster! Still alive about a minute before, you'd hardly find a fresher beast. Careful though to pre-order it by phone when you make your reservation, as they run out fast.
Nuovo Rosso is a place we love, and recommend with closed eyes. It's not the place you come to for the decoration, but it's definitely the place you come to for an authentic and generous pasta dinner, surrounded by Italians and devoted neighborhood regulars.",
    address: "Rue Bosquet 62,
    1060 Bruxelles",
    phone_number: "02 538 89 28",
    website: "https://www.facebook.com/nuovorosso/",
    opening_hours: "open from monday to friday from noon to 2pm
and from 7 to 10:30 pm. Saturday from 7pm to 10:30pm",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "My Tannour",
    subtitle: "syrian canteen",
    content: "Walking into My Tannour, the first things you’ll spot are the big clay ovens to the left, half-burried into sand. If you come close enough, you’ll see the big flames licking the surfaces, and, standing right behind working the dough, Georges.
  Though his parents are from Amernia and Lebannon, Georges was born and brought up in Syria, where he got to watch the women from his village make and cook bread in big ovens : the tannours. The menu from C’Chicounou, his first venue across the street, carries clear influences of his origins, but at My Tannour, the recipes are from Syria, and Syria only. Well except for a few touches here and there, like the usual white flour which has been replaced by a wholemeal one, with 8 different types of wheat in total.
  As we make our way to the back of the restaurant, we discover the second most important item guaranteeing the quality of the food : yet another oven. This one has been custom-made from cast-iron, and carries out the slow cooking of significant quantities of meat. Three stories, and burning at the bottom, a massive wood-fire. It will take it 5 hours to cook chicken, and between 10 to 16 hours to cook beef or lamb. We can already feel our mouths watering.
  On the menu, stuffed breads – renamed tannours by Georges after their own specific oven – are waiting for us. We order a falafel tannour (5€) – minute-made, both falafels and bread – , and a chicken tannour plate (6,50€), along with some extra grilled veggies ( 30 cents per extra, far from being overpriced to say the least).
  And what else can we say : the concept is brilliant and the food delicious. We can only recommend you go see for yourself.",
    address: "98 Rue de la brasserie,
    1050 Ixelles",
    website: "https://www.facebook.com/mytannour/",
    price_indication: "Falafel Tannour: 5€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "Bar du Canal",
    subtitle: "smørrebrød & natural wines",
    content: "We weren’t really expecting to find Smørrebrød (pronounce “s’marble”), those Danish black bread toasts covered with millions of delicious things, when we walked into Le Bar du Canal. Neither were we expecting to find over 80 different references of natural wines, carefully picked by Bjark and his sommelier Léa Roussel, and supplied by Mathieu from Vins Naturels. In this light-filled corner bar, not really on Dansaert anymore but not quite on the canal either, the only thing we were really expecting was a cool neighborhood bar, where we’d be warmly welcome for a drink after a long day.
  And we were not disappointed. As we sat under the hanging plants and the green enamel lamps, we couldn’t help but notice the striking difference with the outside. Outside, the rain was pouring hard, the traffic was intense and the cars’ headlights were slowly blending with the street lights. Inside, the atmosphere is warm and laid back, miles away from the chaos, and though the night’s not quite here yet, it seems to be precisely the right time for a drink. Time to look at the menu too. Cheese and ham boards are here (15-16€), and so are the Fine de Claire oysters (13€). Not so surprising as we learn that before taking over Bar du Canal, Bjark had launched the oyster and Smørrebrød bar right next to La Mer du Nord. This time though, we’re mainly interested by the famous black breads: beef tartar with egg yolk and horseradish (10€), asparagus with radish and feta (9€), or smoked salmon tartar with herring eggs (10€). We follow Bjark’s advice and order the asparagus. And a board of mixed ham and cheese too, with an English blue cheese-cheddar leaving us speechless, paired with two glasses of 100 Grolleau by Catherine and Pierre Breton, a delicious fruity red, simply perfect. The place is great, and so is the food and the wine. We just can’t wait to be back.",
    address: "208 Rue Antoine Dansaert,
    1000 Brussels",
    phone_number: "02 355 53 73",
    website: "https://www.facebook.com/barducanal/",
    opening_hours: "from tuesday to saturday, from 12pm to midnight
  sunday, from 3pm to 10pm",
    price_indication: "Smoked salmon tartar with herring eggs: 10€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: true
  },
  {
    title: "Café Caberdouche",
    subtitle: "local bar",
    content: "As our breaded chicken salad lays before us, we are thrown back a couple of years earlier, when the word had yet a a slightly different meaning. With its tomates cut into wedges and its perfectly diagonal cucumber slices, the salads at Café Caberdouche have that little something to remind us of our childhood, and most specifically, of our beloved Belgian roots.
  This is not the city center, nor even the Marolles neighbourhood, but an area lesser known, with a no less enchanting name: Notre Dame aux Neige (which translates into Our Snow Lady, or something like that). Café Caberdouche, with its sunny terrace who would almost make the Belga blush, has got everything we’re looking for in a bar. Bright spaces, pretty benches covered in emerald green velvet, friendly staff and a menu that has got what you’re looking for – from morning till very early morning – including a brunch buffet every Sunday (17,50€).
  For lunch, apart from the salads, the ham and cheese toasts, the lasagnas and vegetable plates available every day, Caberdouche also offer two inspired lunch specials – sea bass with lime sauce, chicken à la “chasseur”, Buddha bowls with sweet potatoes, to name a few – with always a vegetarian option (13-15€). As for drinks, we promise you won’t be lost: from Sptitz to Cosmo, without missing on natural wines and a long Belgian beer list. No wonder as we are sitting in an old café from Brussels – having kept only the name Caberdouche, a somewhat friendly name given in the days to the rather questionable cafés who used to fill the little square.",
    address: "8 Place de la liberté,
    1000 Bruxelles",
    phone_number: "02 356 14 05",
    website: "https://www.caberdouche.com/",
    opening_hours: "open everyday from 9am to midnight",
    price_indication: "lunch special : 13-15€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: true,
    terrace: true,
    monday_night: true,
    sunday_night: true
  },
  {
    title: "Le Phare du Kanaal",
    subtitle: "néo-cantine et bar de quartier",
    content: "Le Phare du Kanaal is a charming bar and lunch spot, located « on the other side of the canal », as most people from uptown like to name the area. And we’ve got to admit, that though the Phare opened over four years ago, we have only been in the neighborhood so many times. Last time we came, we were lucky to meet Hanna, the founder of this beautiful spot.
  She told us that, as a Parisian, little did she think about how isolated she might be when she initially found the place. And we’re glad. Before setting her headquarters, the Phare used to be yet another Chien Vert fabric showroom. The owner, as a true and dedicated boat fan, had the façade painted with a huge boat at sea. He even went further and made the wooden floor slightly tilted to give the customers the impression to be on a boat. Next time you feel like the floor isn’t straight, now you know why. As soon as she opened, Hanna partnered with Julien, initially to help her on the food side. Now it’s Simon – ex-Contrebande – who runs the kitchen, offering only seasonal and local ingredients in his daily specials. On the wall, a “wall of farm” poster features all of their superstar local suppliers. On the first floor, a co-working space welcomes about twenty freelancers, who come and go according to their needs thanks to their “swimming pool pass” (130€ for 10 entries). A gorgeous project we fully support.",
    address: "40 Quai des charbonnages,
    1080 Molenbeek",
    phone_number: "02 410 06 84",
    website: "http://lepharedukanaal.com/",
    opening_hours: "from monday to friday, from 9am to 8pm
  saturday, from 11am to 6pm",
    price_indication: "lunch : 15€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: true,
    terrace: true,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "Vini Divini",
    subtitle: "italian enoteca",
    content: "Saying eating at Vincenzo’s to refer to eating at Vini Divini, would make all the sense in the world. The chef from Naples welcomes his customers in his tiny restaurant – literally the size of two parking spots – as if it were his own home. Vini Divini has been opened for over 21 years now, and if you still haven’t heard of it, it might just be due to its size and the difficulty to get a table among the regulars in its extremely intimate setting. To get a table, make sure to book 2-3 weeks in advance, 4 to eat at the counter on the weekends.
  Once inside, let the chef and his team guide you. Vincenzo and Elise – his sous-chef for 13 years now – offer inspired and seasonal Italian cuisine in a five-course tasting menu (60€) to about 20 customers per night. All around us, wine bottles fill the shelves all the way to the ceiling, satisfying even the biggest Italian wines enthusiasts. We start with a Proseco glass (included in the menu), while observing each detail of the happy mess around us. The atmosphere is fantastic: the music is loud, the restaurant is full – like every single night – and the place is extremely charming and filled with good vibes only. All around, customers are drinking and laughing, as dishes slowly start to arrive on the tables. The menu starts with a buffala, quickly followed with Bouchot mussels, delicious ravioli filled with ricotta cheese and boletus mushrooms and served in a butter-sage sauce, then an amazing line-caught sea bass we still remember. The hit of the show: the lemon pie, with a lemon curd like we never had the chance to try before. An institution, to say the least.",
    address: "28 Rue du berger,
    1050 Ixelles",
    phone_number: "04 77 26 14 87",
    website: "http://vini-divini.eu/",
    opening_hours: "from monday to saturday, from 7pm to 10:15pm",
    price_indication: "brunch in the hotel le berger: 35€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: false,
    monday_night: true,
    sunday_night: false
  },
  {
    title: "Petit Mercado",
    subtitle: "grocery store, wine bar, lunch spot",
    content: "Petit Mercado was born in the minds of Pia and Mano after a long trip to Argentina. Inspired by the numerous markets where locals would spend more time having a drink with their neighbors, chatting over the latest news than actually doing groceries, they decided to open a local grocery store slash wine bar and eatery, as soon as they would return. Their vision when opening Petit Mercado in the heart of Saint-Gilles: hunt for the best suppliers and offer organic, artisanal and locally grown produce to their customers.
In the shelves and in the boxes by the window, you’ll find organic veggies and fruits by the Terroirist, tin cans from Galicia, Velvet coffee roasted in Belgium, natural and organic wines by Titulus, Vino Vivo or Cave Coop, a cool selection of books from Candide, and on the tables and on the walls, beautiful hand-made ceramics by Matières Nomades. In the kitchen, Massi, ex-Café des Minimes and ex-Le Local, has a strong seasonal and zero-waste vision, starting with the lunch menu – two sandwiches also available in plates, a savory pie and a sweet pie – all made from the produce available in the store. In the evening – but all throughout the day too actually – people come and go to have a seat at the big counter, sipping on a glass of wine or elderflower juice, nibbling on pork terrine from Les Caves d’Alex (9€), pizzetta with ricotta cheese and honey (10€), or a bunch of other very cool small plates to share.
We already really love this Petit Mercado who opened just a few days ago, its strong and super promising vision, beautiful space and and extremely welcoming team.",
    address: "Rue de l'Hôtel des Monnaies 82,
    1060 Bruxelles",
    website: "https://www.facebook.com/lepetitmercadobxl/",
    opening_hours: "from tuesday to saturday from 10am to 9:30pm
on sundays from 10am to 6pm",
    price_indication: "lunch : 6€ – 13€€
to share with drinks : 3€ – 10€
wine by the glass : 4€ – 7€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: false,
  },
  {
    title: "Le Fabiola",
    subtitle: "wine bar",
    content: "If you already knew the Cheese and Wine Café, you won’t bel lost walking into Le Fabiola. Inside, most of the interior has remained unchanged, from the red brick walls to the long shared wooden tables. On the walls, shelves filled with wine bottles, and lots of references to our previous Queen Fabiola, making this place now unique.
When Thibault and Olivier first got into wines, over 12 years ago, only very few places in Brussels seemed to be specialized in the area. After both living for a few years in Spain, they decided to combine best of both worlds: Spanish wines, white pudding from Lièges, and pictures of queen Fabiola all around, a symbol of our Belgian culture.
But their offer doesn’t stop there. When opening the Fabiola six years ago now, they also brought back the Gin and Tonics trend from Spain, when it had only just started, as well as the concept of tapas. Today, they still have a cool selection of gins of offer, and their tapas range has grown a lot too. Other than white pudding, there is also pan con tomate, burrata, serrano ham, grilled camembert cheese served with honey and chorizo – clearly the hit of the house -, and about a dozen more. Wines are mostly Spanish, with a few from France, a few in direct trade, and a nice selection of natural and organic wines, growing every year. We love taking a seat on the little terrace outside to catch the last rays of sun, sipping on a glass of Vividor, a red wine we discovered here and love (27€ the bottle), watching the people go by.",
    address: "Rue Lesbroussart 52,
    1050 Ixelles",
    website: "https://www.facebook.com/LEFABIOLA/",
    opening_hours: "from monday to saturday, from 17h30 to minuit",
    price_indication: "wine by the glass : 4,5€ – 7€
tapas : 3€ – 25€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: false,
    monday_night: true,
    sunday_night: false,
  },
  {
    title: "Titulus",
    subtitle: "wine bar & wine shop",
    content: "When Titulus opened in Brussels in September 2011, it was clearly a pioneer for importing and distributing natural wines. It was also from the start the perfect place to enjoy a glass of wine, along with delicious food carefully picked out by Baptiste, Vivien and Philippe, the three passionate founders, who’ve always put quality first. On the wineshop side, you’ll find bottles at every price, starting by the “Têtes” series (8,90€ the bottle), produced by the founders themselves since 2013, when they took over the vines from Domaine des Baigneux in their native region of Tourraine.
Since then, they’ve been producing their own red, white, rosé and natural sparkling wine, so as to master every single side of this complex craftsmanship. Besides the “Tête Red” and “Tête Blanche”, two of our favorites, you’ll also find over 350 references, which you can either buy to take away or drink on the spot for a fixed extra of 8 euros. But you won’t come to Titulus just to drink. The three friends have partnered with the best providers to make sure their food list would be just as qualitative as their wine list : cheeses from Julien Hazard, bread from Hopla Geiss, cold cuts and meet pies from Alimentation or daily homemade ceviche. Every week, they also serve a special – chicken stew, confit duck leg or braised beef with bearnaise to name a few – put in a jar by a chef in Anjou then served along with crudités from Färm and fresh bread. During the season, you’ll also find fresh oysters at Titulus every single Thursday. Definitely our go-to place for a drink with friends or to find the perfect bottle for an extraordinary dinner.",
    address: "167a Chaussée de Wavre,
    1050 Bruxelles",
    phone_number: "02 512 98 30",
    website: "http://www.titulus.be/",
    opening_hours: "open monday from 5 to 10pm and from tuesday to saturday from 12 to 10pm",
    price_indication: "wine by the glass: 4€-9€ / to eat: 3,50€ – 17€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: true,
    sunday_night: false,
  },
  {
    title: "Monk",
    subtitle: "authentic belgian bar",
    content: "We fell in love at Monk. We fell in love with this man, who’s been coming here for over 25 years, and who knows the story of the place “better than the waitress”. We fell in love with this other man, who comes here for a soup every single day, when he’s not picking up a sandwich across the street, to eat it here along with a beer. We fell in love for the een bekke vanalles platter – a little bit of everything – its Orval cheese, its pâté de champagne, and its huge meatball pierced with a bunch of toothpick across the sandwich paper.
We fell in love for this eclectic and cosmopolitan customer base, changing as the day passes. There are three Monks, says the first man. The one from the morning, the one from the afternoon and the one from the evening. We also fell in love for its Belgian beer selection, and its huge tap beer offer. We fell in love for that not-so-young-anymore couple, coming every day at 11am sharp to enjoy a glass of white. We fell in love with the ancient woodworks, built long before the Monk even existed, and the words “à la couronne” carved onto it, giving us hints about the previous owners. And then we also fell in love for those long nights drinking and dancing, where we rush to eat their spaghetti Bolognese right before their kitchen closes, after having had one too many drinks already. We fell for this bar and the life it conveys, the stories it tells, the culture it passes on through each one of its customer, each of its Belgian beers, and every ballekes bites. We love the feeling of slowly making this place our own, like these men have done before us. Its more than a beer that we come to find when we walk into Monk, it’s a piece of the soul from Brussels.",
    address: "42 Rue Sainte-Catherine,
    1000 brussels",
    phone_number: "02 511 75 11",
    website: "http://www.monk.be/",
    opening_hours: "from monday to saturday,
from 12pm to 3pm and from 6pm to 11pm on sunday,
from 6pm to 11pm",
    price_indication: "beers: 2.20 – 5.50€
mixed platter: 12€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: true,
    monday_night: false,
    sunday_night: true,
  },
  {
    title: "Ethylo",
    subtitle: "cocktail bar",
    content: "Inside, it feels as though we’re in a speakeasy dating from the prohibition period in the U.S. back in the late 20’s. The wallpaper, the barman’s suspenders, the gramophone by the window and the huge vintage tv transformed into a high table all highly contribute to the feeling. We immediately feel like taking place at one of those low marble tables, in this cosy and intimate venue.
On the menu, a short list of cocktails: 7 signature cocktails, 7 classics (from 8 to 13€), and two mocktails (6€), making it easier to make a decision. We let the waitress guide us and order the weekly special, a Umami cocktail made from Tequila, mango shrub and soy sauce. Romain tells us how he loves picking flavors for his cocktails in the food he discovers. For this one, he was inspired by an Asian dish. He cooked mango with shallots then let the mixture macerate in sugar before adding wine vinegar to it. The result is just delicious. His specialty: anything that can be homemade in his workshop below. Shrubs, syrups, fruit juices, liquors and infused alcohol; nothing’s is forgotten, not even the homemade aquafaba saved from the homemade humos. But what he wanted most when opening Ethylo was the ability to offer quality spirits, which he just loves selecting, at affordable prices. Before opening the bar with his two partners, Romain learned a big part of the job at Green Lab. Then, at Copain, close by, where he quickly realized that the demand for cocktail in the area was really high. A good thing and a perfect timing too, as he had been dreaming of opening his own cosy cocktail place for 5 to 6 years already. And this how Ethylo was born.",
    address: "2 rue Josse Impens,
    1030 Schaerbeek",
    phone_number: "02 307 37 31",
    website: "https://www.ethylo.be/",
    opening_hours: "from tuesday to thursday, from 6pm to 1am
from friday to saturday, from 6pm to 2am",
    price_indication: "cocktails: 8€ – 13.50€",
    booking_link: "https://www.thefork.be/",
    deliveroo_link: "https://deliveroo.be/fr",
    brunch: false,
    terrace: false,
    monday_night: false,
    sunday_night: false,
  }
]

# All places pictures URLs
photo_url_list = [
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
attributes.each_with_index do |place_attributes, index|
  new_place = Place.create(place_attributes)
  photo_url_list[index].each_with_index do |url, index|
    if index == 0
      new_image = new_place.images.new(main: true)
    else
      new_image = new_place.images.new
    end
    new_image.remote_photo_url = url
    new_image.save
  end
end

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
