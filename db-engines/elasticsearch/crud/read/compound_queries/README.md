## 0. prepare

```json
DELETE products

PUT products
{
  "mappings": {
    "properties": {
      "brand": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "colour": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "energy_rating": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "images": {
        "type": "text"
      },
      "model": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "overview": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "price": {
        "type": "double"
      },
      "product": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "resolution": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "size": {
        "type": "text"
      },
      "type": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "user_ratings": {
        "type": "double"
      }
    }
  }
}

PUT _bulk
{"index":{"_index":"products","_id":"1"}}
{"product": "TV", "brand": "Samsung", "model": "UE75TU7020", "size": "75", "resolution": "4k", "type": "smart tv", "price": 799, "colour": "silver", "energy_rating": "A+", "overview": "Settle in for an epic movie marathon or boxset binge with this amazing 75-inch Samsung smart TV. The incredibly sharp 4K Ultra HD display shows off everything in breathtaking quality, with bright, lifelike colours truly immersing you in the action. Even classic hits will look their best thanks to the fantastic upscaling on offer from its Crystal 4K UHD processor. You\u2019ll really feel the action too, since the Adaptive Sound tech automatically adjusts the audio settings to suit whatever you\u2019re watching. And there\u2019s loads to keep you busy, with streaming apps and catch-up services available through your internet. Plus, if you ever lose the remote, you can just ask your Alexa device to change the channel for you.", "user_ratings": 4.5, "images": ""}
{"index":{"_index":"products","_id":"2"}}
{"product": "TV", "brand": "Samsung", "model": "QE65Q700TA", "size": "65", "resolution": "8k", "type": "QLED", "price": 1799, "colour": "black", "energy_rating": "A+", "overview": "This outstanding 65-inch Samsung TV turns your living room into a home cinema with truly amazing tech. Its 8K QLED screen gives you an incredible razor-sharp picture bursting with ultra-realistic detail and bright, true-to-life colours. And the 8K quantum processor alongside clever 8K AI upscaling makes sure absolutely everything you watch reaches the same jaw-dropping quality, even if it\u2019s a golden oldie. Of course, it\u2019s a smart TV too, meaning you\u2019ll have tons of streaming apps and catch-up services to flick through once you connect it to the internet, including BT Sport. Plus, sound gets special treatment as well, with Adaptive Audio+ technology constantly scanning every scene to deliver the best experience possible.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"3"}}
{"product": "TV", "brand": "Sony", "model": "KD65AG8BU", "size": "65", "resolution": "4k", "type": "OLED", "price": 1699, "colour": "black", "energy_rating": "A+", "overview": "Bring the cinema into your home with this 65-inch Sony Bravia OLED TV. With over 8 million self-illuminating pixels individually controlled by the X1 Extreme processor, images are upscaled for truer 4K HDR quality. OLED technology provides genuine black and sharp contrast, while the TRILUMINOS Display draws from a range of hues and intensifies colours for an incredible, lifelike picture. What\u2019s more, with Sound-from-Picture Reality\u2122 the sound is delivered from the entire screen, rather than from the back of the TV, so you\u2019ll hear the explosions and dialogue exactly where they originate from. And since it\u2019s powered by Android, you\u2019ll have access to a huge selection of streaming and catch-up services.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"4"}}
{"product": "TV", "brand": "Sony", "model": "KD85XH8096BU", "size": "85", "resolution": "4k", "type": "smart tv", "price": 1899, "colour": "black", "energy_rating": "A+", "overview": "This 4K LED TV from Sony will make your takeaway night with friends that much better. Thanks to 4K X-Reality PRO tech, the picture in your wildlife documentaries or latest action film is sharpened and defined to fill everything with detail, so it\u2019ll feel like you\u2019re really in the middle of the action. All your scenes will pop with vibrant colour too, since the TRILUMINOS display uses a wide range of shades to paint your screen. When you\u2019re bored of flicking through the channels, Android TV lets you download catch-up and streaming apps, meaning you can log-in to your accounts and binge a new boxset. It\u2019ll sound amazing too, as the specially designed X-balanced speaker has a unique shape that\u2019s powerful and crisp without compromising on the thin design of the TV. And if you\u2019re not in the mood to click through the menus, you can control your TV by talking into the included remote.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"5"}}
{"product": "TV", "brand": "LG", "model": "OLED65BX6LB", "size": "65", "resolution": "4k", "type": "smart tv", "price": 1599, "colour": "black", "energy_rating": "A+", "overview": "Upgrade your old telly with this 65-inch LG TV, featuring a 4K Ultra HD screen, for brilliant images at four times the resolution of Full HD. With an OLED display, the pixels give out their own light instead of being backlit, which means on top of incredible contrast, you get true blacks, as the pixels simply switch off. Plus, the \u03b17 Gen3 Intelligent Processor analyses your content and enhances the clarity and sharpness of the picture, as well as the sound. The audio features don\u2019t stop there \u2013 AI Sound tech uses spatial awareness to adjust the settings for the best listening experience. And it\u2019s smart, of course, so you can access streaming and catch-up services. What\u2019s more, you get NVIDIA\u00ae G-SYNC compatible support, so you\u2019ll get less lag and flicker on top of smoother gaming.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"6"}}
{"product": "TV", "brand": "Panasonic", "model": "TX-65HX580BZ", "size": "65", "resolution": "4k", "type": "smart tv", "price": 639, "colour": "Black", "energy_rating": "A", "overview": "Whether you\u2019re a fan of the cricket or show up on the sofa each week to support your favourite football team, every big match will look amazing on this 65-inch Panasonic TV. The 4K Ultra HD resolution creates a sharp picture that\u2019s really detailed, so you\u2019ll be able to see every swing of the bat or kick of the ball in high quality. Plus, Dolby Vision creates rich depth and natural colours to bring the action to life, so you\u2019ll feel like you\u2019re sat in the stands. If it clashes with a show that someone else was wanting to watch, they can always play it later on the catch-up apps. And when you\u2019ve lost the remote, instead of flipping up all the cushions on the sofa, you can just ask Alexa to control the TV instead, since it connects to any existing Alexa speakers you have in the home.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"7"}}
{"product": "TV", "brand": "Philips", "model": "65OLED805", "size": "65", "resolution": "4k", "type": "OLED", "price": 2199, "colour": "Grey", "energy_rating": "A+", "overview": "Enjoy spectacular performance and elegant design with this 65-inch Philips 4K TV. The Ultra HD OLED screen provides a wide viewing angle and delivers natural colours, strong contrast and true blacks. The Philips P5 processor with AI puts you at the heart of the action, delivering a picture bursting with lifelike detail, rich colour and fluid motion. And with Philips Ambilight, intelligent LEDs around the edge of the TV respond to the on-screen action and emit a captivating glow for a truly immersive experience. It works with Alexa, too \u2013 change channels, adjust the volume or turn on your gaming console just by asking. Plus, this Android TV lets you customise the home screen to display your favourite apps, so you can get access to the content you want faster.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"8"}}
{"product": "TV", "brand": "Philips", "model": "24PFT5505", "size": "24", "resolution": "1920 x 1080", "type": "LED TV", "price": 149, "colour": "Black", "energy_rating": "A", "overview": "This 24-inch Philips LED TV is compact and light enough to set up almost anywhere. It has a VGA and 3.5mm audio input, meaning it can easily double as a computer monitor, while the two HDMI ports allow you to have both a set-top box and gaming console or Blu-ray player connected. You can even share music and videos from your phone on the TV thanks to the USB port. It looks amazing, too \u2013 with Full HD resolution for incredible, razor-sharp images, and you\u2019ll have plenty of free content to watch, because it has Freeview HD built in. What\u2019s more, it\u2019ll even turn off on its own if no one\u2019s using it.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"9"}}
{"product": "TV", "brand": "TCL", "model": "50C715K", "size": "50", "resolution": "4K", "type": "smart tv", "price": 571, "colour": "Silver", "energy_rating": "A", "overview": "If you\u2019re looking for a feature-packed 4K TV that won\u2019t break the bank, then this one from TCL is the perfect choice. Measuring 50 inches, this Ultra HD LED TV has a Quantum Dot display, so images appear incredibly lifelike. Plus, with Dynamic Dolby Vision HDR, you\u2019ll enjoy superb contrast and vibrant colour. And there\u2019s more Dolby magic \u2013 it comes with Atmos\u00ae for clear, beautiful sound. What\u2019s more, this smart TV allows you to access streaming apps and catch up with your favourite shows, and you can even connect it to your Amazon Alexa or Google Assistant to control it with your voice.", "user_ratings": 4.5, "images": ""}
{"index":{"_index":"products","_id":"10"}}
{"product": "TV", "brand": "Samsung", "model": "QE85Q80TA", "size": "85", "resolution": "4k", "type": "QLED", "price": 2999, "colour": "Black", "energy_rating": "A+", "overview": "Kit out your living room with this 85-inch Samsung TV and enjoy a ton of jaw-dropping features. The QLED screen uses tiny crystals that all give off light and colour, offering a breath-taking picture full of razor-sharp detail, with hues that appear as bright and lifelike as the filmmaker intended. Plus, when you stick on wildlife documentary, it\u2019ll look natural and realistic, as Dual LED tech perfectly balances warm and cool tones in the picture. You\u2019ll have no problem hearing Sir David over the echoes of the rainforest either, since this model amplifies voices to make sure you catch every word. And because it\u2019s a smart TV, you\u2019ll have access to plenty of streaming apps through your internet connection, including the BT Sport app. What\u2019s more, when you aren\u2019t watching anything, you can display photos or check the latest headlines with Ambient Mode+.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"11"}}
{"product": "Fridge", "brand": "Haier", "model": "HRF-450DS6", "size": "447 litre", "resolution": "", "type": "American Fridge Freezer", "price": 527, "colour": "Silver", "energy_rating": "A+", "overview": "Keep your groceries deliciously fresh with this Haier American fridge freezer. Its 450 litre capacity can store 25 bags of food shopping, making it ideal for larger households. You\u2019ll never have to manually defrost again, as intelligent Total No Frost technology prevents ice building-up inside. Your food will always be kept in the very best conditions too, thanks to fantastic Multiflow technology, which circulates air evenly around the cabinet to keep the temperature consistent throughout. The fridge also has a Super Cool function which rapidly lowers the temperature, so new food added will always be stored in the ideal climate. ", "user_ratings": 4.9, "images": "images"}
{"index":{"_index":"products","_id":"12"}}
{"product": "Fridge", "brand": "Samsung", "model": "RB Combi Range RB29FSRNDSA", "size": "290 litre", "resolution": "", "type": "Frost Free Fridge Freezer", "price": 429, "colour": "Silver", "energy_rating": "A+", "overview": "This silver Samsung fridge freezer has lots of fantastic features to take excellent care of your food. With a 290 litre capacity, it can hold 16 bags packed with your favourite groceries. Clever All-Around Cooling technology in the fridge ensures fish stays fresh and vegetables keep their crunch, by circulating cool air to ensure an even temperature. When you\u2019re away from home, the holiday setting saves energy by keeping the freezer running while maintaining an even temperature in the fridge when it\u2019s empty, ensuring it stays free from odours. This model also has a handy wine rack that\u2019s perfect for keeping your favourite tipples secure.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"13"}}
{"product": "Fridge", "brand": "Beko", "model": "CRFG3582W ", "size": "263 litre", "resolution": "", "type": "Frost Free Fridge Freezer", "price": 269, "colour": "White", "energy_rating": "A+", "overview": "Keep your ingredients for Sunday roasts and other recipes fresh for longer with this fridge freezer from Beko. It has a 263 litre capacity, which means it can hold 14 bags of food shopping. Thanks to its frost free technology, you never have to manually defrost again \u2013 cool air circulates to prevent icy build-ups. And the Salad Crisper drawer makes organising fruit and veg easy as pie for when you want a healthy snack. Also, the reversible doors can be installed to open from the right or left to suit your kitchen\u2019s layout.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"14"}}
{"product": "Fridge", "brand": "Samsung", "model": "BRB260134WW", "size": "267 litre", "resolution": "", "type": "Frost Free Fridge Freezer", "price": 679, "colour": "White", "energy_rating": "A++", "overview": "With lots of clever features, this integrated fridge freezer from Samsung keeps your food fresher for longer. Its 267 litre capacity can hold 14 bags of food shopping, making it perfect for medium-sized households. It has All-Around Cooling too, which circulates cool air evenly throughout the fridge and freezer, so it keeps everything fresh. This model has SpaceMax Technology\u2122 as well, which means it has thinner walls, so there\u2019s even more space inside. It also has a salad crisper drawer, which helps keep your fruit and vegetables organised.", "user_ratings": 4.7, "images": ""}
{"index":{"_index":"products","_id":"15"}}
{"product": "Fridge", "brand": "Hisense", "model": "RS741N4WC11", "size": "562 litre", "resolution": "", "type": "American Fridge Freezer", "price": 649, "colour": "Stainless Steel Effect", "energy_rating": "A+", "overview": "For a stylish addition to your kitchen, look no further than this stainless steel American fridge freezer from Hisense. You can keep a healthy supply of your favourite treats, as its 562 litre capacity can hold up to 31 bags of food shopping. Total No Frost technology prevents icy build-ups forming inside, so it will never need manually defrosting. It even has a handy water dispenser, so you\u2019ll always have a deliciously chilled drink at hand. And the Holiday Setting is great when you\u2019re away for extended periods, as it keeps the freezer running normally while keeping a precise temperature in the fridge, saving you energy.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"16"}}
{"product": "Fridge", "brand": "LG", "model": "GSL561PZUZ", "size": "591 Litre", "resolution": "", "type": "American Fridge Freezer", "price": 1149, "colour": "Stainless Steel Effect", "energy_rating": "A++", "overview": "You won\u2019t have to shop as often with this spacious American fridge freezer from LG. Thanks to its 591 litre capacity, there\u2019s more than enough room for 32 shopping bags filled with the weekly groceries. Total No Frost technology stops ice building up in the fridge and freezer, so you\u2019ll never have the tedious chore of defrosting it by hand either. Plus, if you\u2019re sick of fruits and vegetables losing their flavour quickly, this model\u2019s Moist Balance Crisper\u2122 drawer is the answer to your problems. It maintains the perfect level of humidity inside, helping everything stay fresher for longer. And, because it has a durable Inverter Linear Compressor, it\u2019s much more efficient and a lot quieter to run.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"17"}}
{"product": "Fridge", "brand": "Bosch", "model": "Serie 6 KAD93VIFPG", "size": "533 Litre", "resolution": "", "type": "American Fridge Freezer", "price": 1649, "colour": "Stainless Steel Effect", "energy_rating": "A+", "overview": "This stainless steel effect freestanding American fridge freezer from Bosch is a perfect addition to your kitchen. With a spacious 533 litre capacity, it can hold 29 bags of delicious food and treats. You\u2019ll also enjoy never having to manually defrost it again thanks to its Frost Free technology. A fan circulates cool air to prevent ice build-ups from forming on the walls. And the Water and Ice Dispenser gives you fresh water and cubed ice on tap; it just needs a plumbing connection, which means you don\u2019t have to keep manually filling a tank. Plus, the FreshSense systems monitors and controls the temperature inside the fridge and freezer compartments, so that ingredients keep their freshness and flavour.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"18"}}
{"product": "Fridge", "brand": "Swan", "model": "Retro SR11010BLN", "size": "208 litre", "resolution": "", "type": "Retro Fridge Freezer", "price": 449, "colour": "Blue", "energy_rating": "A+", "overview": "With its eye-catching retro design, this blue Swan fridge freezer is sure to make a statement in your kitchen. It has a 208 litre capacity, which means it can hold 11 bags of food shopping, and is ideal for stocking up on fresh groceries. It will need defrosting from time to time to keep it working efficiently, and it has an annual energy cost of just \u00a333.10, so it\u2019ll be kind to the environment and your wallet. It has a handy fast freeze function too, which helps to rapidly chill new groceries added to the freezer so all the goodness and flavour are quickly locked into your food.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"19"}}
{"product": "Fridge", "brand": "Amica", "model": "FKR29653B", "size": "244 litre", "resolution": "", "type": "Retro Fridge Freezer", "price": 368, "colour": "Black", "energy_rating": "A+", "overview": "Add some retro flair to your kitchen with this stylish black fridge freezer from Amica. It has a 244 litre capacity which can hold up to 13 bags of food shopping \u2013 so it\u2019s ideal for stocking up on some BBQ essentials like burgers, sausages, and some veggie options too. The handy salad crisper drawer can keep all your fresh fruit and veg neat and organised as well, so they\u2019re always in easy reach when it\u2019s time to whip-up a side salad. The unique, vibrant design of this model is sure to be the talking point of any kitchen, and will just need manually defrosting every now and then to keep it working at its best.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"20"}}
{"product": "Fridge", "brand": "LG", "model": "GBB72MCUFN", "size": "384 litre", "resolution": "", "type": "Frost Free Fridge Freezer", "price": 900, "colour": "Matte Black", "energy_rating": "A+++", "overview": "This frost free fridge freezer from LG will add style to any kitchen. It has a 384 litre capacity, giving you plenty of room to store up to 21 bags of groceries. The NatureFRESH\u2122 with DoorCooling+ ensures the whole fridge is evenly cooled too, as the cold air from the door keeps the air flow moving. There\u2019s even a fresh converter drawer for storing your meat and fish produce. So, whether you\u2019ve got a steak from the butchers or a nice fillet of mackerel, you can rest easy knowing they\u2019ll be kept at the perfect temperature. And thanks to the Inverter Linear Compressor, which uses brushless magnets instead of various moving parts, it\u2019s a lot quieter to run and much longer lasting too.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"21"}}
{"product": "Fridge", "brand": "Amica", "model": "FKR29653B", "size": "244 litre", "resolution": "", "type": "Retro Fridge Freezer", "price": 368, "colour": "Black", "energy_rating": "A+", "overview": "Add some retro flair to your kitchen with this stylish black fridge freezer from Amica. It has a 244 litre capacity which can hold up to 13 bags of food shopping \u2013 so it\u2019s ideal for stocking up on some BBQ essentials like burgers, sausages, and some veggie options too. The handy salad crisper drawer can keep all your fresh fruit and veg neat and organised as well, so they\u2019re always in easy reach when it\u2019s time to whip-up a side salad. The unique, vibrant design of this model is sure to be the talking point of any kitchen, and will just need manually defrosting every now and then to keep it working at its best.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"22"}}
{"product": "Fridge", "brand": "LG", "model": "GBB72MCUFN", "size": "384 litre", "resolution": "", "type": "Frost Free Fridge Freezer", "price": 900, "colour": "Matte Black", "energy_rating": "A+++", "overview": "This frost free fridge freezer from LG will add style to any kitchen. It has a 384 litre capacity, giving you plenty of room to store up to 21 bags of groceries. The NatureFRESH\u2122 with DoorCooling+ ensures the whole fridge is evenly cooled too, as the cold air from the door keeps the air flow moving. There\u2019s even a fresh converter drawer for storing your meat and fish produce. So, whether you\u2019ve got a steak from the butchers or a nice fillet of mackerel, you can rest easy knowing they\u2019ll be kept at the perfect temperature. And thanks to the Inverter Linear Compressor, which uses brushless magnets instead of various moving parts, it\u2019s a lot quieter to run and much longer lasting too.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"23"}}
{"product": "Laptop", "brand": "Razer", "model": "Blade 15 Advanced", "size": "15.6", "resolution": "1920 x 1080", "type": "Gaming Laptop", "price": 2499, "colour": "Black", "energy_rating": "SSD - 1TB/16", "overview": "Face your enemies on the frontline with the awesome firepower of this Full HD Razer Blade 15 Advanced gaming laptop. When you need to go in all guns blazing, it\u2019s got a 10th generation Intel\u00ae Core\u2122 i7 octa core processor that\u2019s teamed up with 16GB of RAM to help you nail that big win. When the action\u2019s heating up on the screen, the innovative vapour chamber keeps everything cool and working at its best, so you can continue to crush your rivals with more power than ever before.\n\nYou\u2019ll be totally immersed in the absolutely breathtaking visuals and ultra-sharp details on offer from GeForce\u00ae RTX 2080 SUPER graphics card. Plus, you\u2019ll have space for a huge library on its 1TB SSD, which also gives you super-fast load times so you can dive straight in.", "user_ratings": 4.8, "images": "images"}
{"index":{"_index":"products","_id":"24"}}
{"product": "Laptop", "brand": "Lenovo", "model": "Legion 5 15ARH05", "size": "15.6", "resolution": "1920 x 1080", "type": "Gaming Laptop", "price": 779, "colour": "Phantom Black", "energy_rating": "SSD - 256GB/8", "overview": "Always have the edge over the competition with this gaming laptop from Lenovo. It has Legion Coldfront 2.0 technology, which makes sure it\u2019s only the action onscreen that heats up. And with a 256GB SSD, you\u2019ll have fast loading times and plenty of space for all your favourite titles too.\n\nPlus, the dedicated GeForce\u00ae GTX 1650 4GB graphics card will give you stunning visuals bursting with detail. And, with an AMD Ryzen 5 4600H hexa core processor as well as 8GB of RAM, you\u2019ll be able to keep on top of several tasks at once.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"25"}}
{"product": "Laptop", "brand": "Apple", "model": "MacBook Pro with Touch Bar [2020]", "size": "13", "resolution": "2560x1600", "type": "MacBook", "price": 1380, "colour": "Space Grey", "energy_rating": "SSD - 512GB/8", "overview": "The Apple M1 chip redefines the 13-inch MacBook Pro. Featuring an 8-core CPU that flies through complex workflows in photography, coding, video editing and more. Incredible 8-core GPU that crushes graphics-intensive tasks and enables super-smooth gaming. An advanced 16-core Neural Engine for more machine learning power in your favourite apps. Superfast unified memory for fluid performance. And the longest-ever battery life in a Mac at up to 20 hours.2 It\u2019s Apple\u2019s most popular pro notebook. Even more performance and even more pro.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"26"}}
{"product": "Laptop", "brand": "Apple", "model": "MacBook Air [2020]", "size": "13", "resolution": "2560x1600", "type": "MacBook", "price": 999, "colour": "Space Grey", "energy_rating": "SSD - 256GB/8", "overview": "Apple\u2019s thinnest and lightest notebook gets supercharged with the Apple M1 chip. Tackle your projects with the blazing-fast 8-core CPU. Take graphics-intensive apps and games to the next level with an up to 7-core GPU. And accelerate machine learning tasks with the 16-core Neural Engine. All with a silent, fanless design and the longest battery life ever \u2014 up to 18 hours.1 MacBook Air. Still perfectly portable. Just a lot more powerful.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"27"}}
{"product": "Laptop", "brand": "Acer", "model": "Chromebook CB315-3HT", "size": "15.6", "resolution": "1920 x 1080", "type": "Chromebook", "price": 349, "colour": "Silver", "energy_rating": "SSD - 64GB/4", "overview": "Sail through the basics with this Acer Chromebook. It has a Google-powered operating system, which is not only easy to use but loads up this model quickly too, so you won\u2019t be waiting around to start your day. Plus, it also gives you access to millions of apps, while the built-in antivirus means you can browse online safely. And thanks to its 12-hour battery life, it\u2019s ideal for working on the go. It also comes with two years of free online storage with Google Drive, so you can save and edit all your files with an internet connection. And it has an Intel\u00ae Pentium\u00ae processor with 4GB of RAM, so you\u2019ll have no problem with light multitasking.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"28"}}
{"product": "Laptop", "brand": "HP", "model": "Spectre x360 13-aw0057na", "size": "13.3", "resolution": "1920 x 1080", "type": "2-in-1 Laptop", "price": 1199, "colour": "Black", "energy_rating": "SSD - 256GB/8", "overview": "Tick off your daily checklist in style with this HP Spectre laptop. Its lightweight design and massive 19-hour battery life make it perfect for long stretches away from your desk, meaning you can set up anywhere you fancy. And it\u2019s easy to navigate between apps using the 13.3-inch Full HD touchscreen, which also makes photos and videos look clear and sharp. There\u2019s space for your files and music on the 256GB SSD, and the lightning-fast load times boots up everything really quickly. Plus, you\u2019ll have plenty of power for multitasking thanks to the combination of an Intel\u00ae Core\u2122 i5 processor alongside 8GB of RAM.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"29"}}
{"product": "Laptop", "brand": "Asus", "model": "VivoBook Flip TM420IA", "size": "14", "resolution": "1920 x 1080", "type": "2-in-1 Laptop", "price": 499, "colour": "Black", "energy_rating": "SSD - 128GB/4", "overview": "This VivoBook Flip laptop from ASUS is a fantastic all-rounder that\u2019s great for both work and chilling out. With a lightweight design and 8-hour battery life, it\u2019s perfectly suited to catching up on emails and browsing social media. Everything will look really clear on the Full HD display, which doubles as an easy-to-use touchscreen that makes navigating between apps simple. Plus, it has a 128GB SSD for super-fast loading times, as well as plenty of space for files and music. All this is powered by an AMD Ryzen 3 processor alongside 4GB of RAM to easily tackle basic jobs, or even a bit of light multitasking.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"30"}}
{"product": "Laptop", "brand": "HP", "model": "ENVY x360 13-ay0008na", "size": "13.3", "resolution": "1920 x 1080", "type": "UtraBook", "price": 799, "colour": "Black", "energy_rating": "SSD - 256GB/8", "overview": "This HP ENVY laptop has everything you need to power through your day. Its lightweight design and 11-hour battery life make it the ideal partner for travel, and it\u2019s great for getting away from your desk. The 13.3-inch Full HD touchscreen is easy to use and lets you navigate with your finger, while videos will look fantastic when you\u2019re relaxing after a long day. There\u2019s a 256GB SSD onboard too that speeds up loading times, as well as offering space for your files and photos. Plus, the combination of an AMD Ryzen 5 processor alongside 8GB of RAM means you\u2019ll have plenty of power for multitasking.", "user_ratings": 4.7, "images": ""}
{"index":{"_index":"products","_id":"31"}}
{"product": "Laptop", "brand": "Huawei", "model": "MateBook 13", "size": "13", "resolution": "2160 x 1440", "type": "MateBook", "price": 939, "colour": "Space Grey", "energy_rating": "SSD - 512GB/16", "overview": "Plough through demanding projects wherever you are with this powerful Huawei MateBook 13 laptop. You\u2019ll have no trouble getting a day\u2019s work done thanks to its 11-hour battery life, while the lightweight design makes it easy to set up shop anywhere you fancy. There\u2019s a 2K touchscreen that makes navigating with your finger a breeze, as well as offering a sharp view of videos and photos, which is great for editing. Its 512GB SSD offers plenty of storage for all your files and apps, and it\u2019ll boot up quickly when you\u2019re raring to jump back in. Plus, intensive multitasking is no problem at all for the Intel\u00ae Core\u2122 i7 processor and 16GB of RAM, meaning nothing will slow you down.", "user_ratings": 4.5, "images": ""}
{"index":{"_index":"products","_id":"32"}}
{"product": "Laptop", "brand": "Lenovo", "model": "Yoga 7", "size": "14", "resolution": "1920 x 1080", "type": "UltraBook", "price": 799, "colour": "Slate", "energy_rating": "SSD - 256GB/8", "overview": "Work from home in style with this Lenovo Yoga 7 laptop. Its 16-hour battery life gives you plenty of charge to set up wherever you fancy, whether that\u2019s curled up on the sofa or out in the garden. Its 14-inch Full HD display offers a really clear view of whatever you\u2019re up to \u2013 perfect for binging your favourite shows after a long day at your desk. And it\u2019ll be up and running in next to no time thanks to its speedy 256GB SSD, which also has space for your files. Plus, the combo of an Intel\u00ae Core\u2122 i5 processor alongside 8GB of RAM lets you run loads of different apps at once, so you can stream some tunes while answering emails.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"33"}}
{"product": "Laptop", "brand": "Lenovo", "model": "Yoga 7", "size": "14", "resolution": "1920 x 1080", "type": "UltraBook", "price": 799, "colour": "Slate", "energy_rating": "SSD - 256GB/8", "overview": "Work from home in style with this Lenovo Yoga 7 laptop. Its 16-hour battery life gives you plenty of charge to set up wherever you fancy, whether that\u2019s curled up on the sofa or out in the garden. Its 14-inch Full HD display offers a really clear view of whatever you\u2019re up to \u2013 perfect for binging your favourite shows after a long day at your desk. And it\u2019ll be up and running in next to no time thanks to its speedy 256GB SSD, which also has space for your files. Plus, the combo of an Intel\u00ae Core\u2122 i5 processor alongside 8GB of RAM lets you run loads of different apps at once, so you can stream some tunes while answering emails.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"34"}}
{"product": "Desktop", "brand": "Lenovo", "model": "IdeaCentre 24ARE05", "size": "AMD Ryzen 5", "resolution": "AMD Radeon Graphics", "type": "All In One", "price": 549, "colour": "Black", "energy_rating": "HDD- 1TB/8", "overview": "If you\u2019re on the hunt for a brand new desktop, this all-in-one model from Lenovo is a great choice. It has an AMD Ryzen 5 processor which is teamed with 8GB of RAM, which means it\u2019ll deliver seamless multitasking without a hitch. You won\u2019t be short of storage space either thanks to the massive 1TB hard drive, and thanks to the Full HD screen, you\u2019ll always have a super-clear picture to work on. There\u2019s a wired keyboard and mouse included too, so your setup will be good to go in no time.", "user_ratings": 5, "images": "images"}
{"index":{"_index":"products","_id":"35"}}
{"product": "Desktop", "brand": "Acer", "model": "Aspire C24-963", "size": "Intel\u00ae Core\u2122 i5", "resolution": "intel uhd graphics 620", "type": "All In One", "price": 599, "colour": "Silver / Black", "energy_rating": "HDD- 1TB/8", "overview": "Give your home office an upgrade with this excellent Acer desktop. It has an AMD A9 processor which is teamed with 8GB of RAM, so it\u2019ll easily handle playing your favourite albums as you work on those essays. And with a 1TB hard drive and 256GB SSD, there\u2019s all the storage space you need for all your documents and files. Plus, the Full HD screen delivers a stunning, clear picture \u2013 perfect for watching films and boxsets when it\u2019s time for a break. It even comes with a wireless keyboard and mouse too, so you\u2019ll be good to go in no time.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"36"}}
{"product": "Desktop", "brand": "Acer", "model": "Nitro N50-610", "size": "Intel\u00ae Core\u2122 i5", "resolution": "Nvidia GeForce GTX 1650", "type": "Gaming Tower", "price": 749, "colour": "Black / Red", "energy_rating": "HDD- 1TB/8", "overview": "Raise your game with this fantastic gaming desktop from Acer. Every exciting moment will be brought to life in amazing detail with the dedicated GeForce\u00ae GTX 1650 graphics card. And thanks to the fan cooling system, only the on-screen action heats up to give you an improved performance.\n\nAll your favourite titles will run smoothly with the 10th gen Intel\u00ae Core\u2122 i5 processor which is teamed with 8GB of RAM. There\u2019s tons of storage space too with the 1TB hard drive, giving you plenty of space for your collection.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"37"}}
{"product": "Desktop", "brand": "Lenovo", "model": "IdeaCentre 3 Tower", "size": "AMD Ryzen 3", "resolution": "AMD Radeon Graphics", "type": "Tower", "price": 329, "colour": "Mineral Grey", "energy_rating": "HDD- 1TB/4", "overview": "If you\u2019re looking for a new family desktop, then this Lenovo IdeaCentre all-in-one model is a brilliant choice. With an AMD Ryzen 3 processor and 4GB of RAM, it has all the power you need for day-to-day use and basic multitasking. And the large 1TB hard drive gives you plenty of space to store everyone\u2019s files, photos and music. You can also hook up lots of different devices thanks to its 8 USB ports, meaning you won\u2019t have to unplug something if you want to pop some tunes on your phone. This model also comes with a wireless keyboard and mouse, so you\u2019ll have everything you need to get going straight out of the box.", "user_ratings": 4.5, "images": ""}
{"index":{"_index":"products","_id":"38"}}
{"product": "Desktop", "brand": "MSI", "model": "MAG Infinite S 10SI-052UK", "size": "Intel\u00ae Core\u2122 i5", "resolution": "Nvidia GeForce GTX 1660 SUPER", "type": "Gaming Tower", "price": 799, "colour": "Black", "energy_rating": "SSD - 512GB/8", "overview": "Push the boundaries with this Infinite S gaming desktop from MSI. Whether you\u2019ve been captured over on enemy lines or you\u2019re fighting the final boss, the cooling fans prevent it from overheating, so it can always give its best performance. And, thanks to the GeForce\u00ae GTX 1660 SUPER graphics card, you\u2019ll dive deeper into your games, as you explore the beautifully clear visuals.\n\nInside, there\u2019s also a 10th gen Intel\u00ae Core\u2122 i5-10400F processor, which works with 8GB of RAM to handle all your games smoothly. Plus, you\u2019ll have room to store your collection on the 512GB SSD, which also offers super-fast loading times so you can jump straight into a new adventure.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"39"}}
{"product": "Desktop", "brand": "Apple", "model": "iMac 5K 27\" iMac 2020", "size": "Intel\u00ae Core\u2122 i5", "resolution": "AMD Radeon Pro 5300", "type": "iMac", "price": 1799, "colour": "Silver", "energy_rating": "SSD - 256GB/8", "overview": "The 27-inch iMac now comes packed with the latest processors, faster memory, powerful graphics and ultra-fast SSD storage. And the gorgeous Retina 5K display is better than ever with True Tone technology and optional nano-texture glass. With macOS and all its built-in apps, the 27-inch iMac is the total creative package\u2014powered up.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"40"}}
{"product": "Desktop", "brand": "Apple", "model": "Mac Mini Mac Mini 2020", "size": "Intel\u00ae Core\u2122 i5", "resolution": "Intel\u00ae UHD Graphics 630", "type": "Mac mini", "price": 1099, "colour": "Space Grey\n", "energy_rating": "SSD - 512GB/8", "overview": "Eighth-generation 6-core and quad-core processors. Fast 2666MHz DDR4 memory. A variety of ports, including Thunderbolt 3, HDMI 2.0 and available 10Gb Ethernet.* And all-flash storage that\u2019s incredibly fast, so you can load giant files and launch apps in an instant. The re-engineered Mac mini is the best performing yet. Ready for the desktop. And beyond.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"41"}}
{"product": "Desktop", "brand": "HP", "model": "Omen 25L", "size": "Intel Core i5-10xxx", "resolution": "Nvidia GeForce RTX\u2122 2060", "type": "Tower", "price": 1049, "colour": "Black", "energy_rating": "HDD - 2TB/16", "overview": "Level up your experience and make the leap to PC gaming with this HP OMEN desktop. It\u2019s loaded with a GeForce\u00ae RTX 2060 6GB VRAM graphics card that\u2019ll pack your screen with outstanding special effects and immersive visuals. Next up, the 10th generation Intel\u00ae Core\u2122 i5-10400F processor, alongside 16GB of RAM, can easily handle all your favourite titles, giving you smooth gameplay.\n\nYou\u2019ll have tons of storage space ready to fill up with a huge library of blockbusters thanks to its 2TB hard drive, while the extra 256GB SSD loads up apps at lightning speed \u2013 so no more waiting around to grab some high scores. Plus, you can personalise its look and really show off your awesome hardware, since it comes with customisable RGB lighting.", "user_ratings": 4.7, "images": ""}
{"index":{"_index":"products","_id":"42"}}
{"product": "Desktop", "brand": "HP", "model": "Pavilion Tower", "size": "Intel Core i5-10xxx", "resolution": "Nvidia GeForce\u00ae GTX 1660 SUPER", "type": "Tower", "price": 849, "colour": "Black", "energy_rating": "HDD- 1TB/8", "overview": "This HP Pavilion desktop has some great tech that\u2019ll kick-start your PC gaming career. You\u2019ll step into a whole new world of immersive visuals and special effects that\u2019ll pull you into the action thanks to its GeForce\u00ae GTX 1660 SUPER 6GB VRAM graphics card. And it\u2019ll fire up your favourite titles no problem, since its 10th generation Intel\u00ae Core\u2122 i5-10400F processor and 8GB of processor give you really smooth gameplay.\n\nYou won\u2019t have to worry about running out of storage either, as it\u2019s equipped with a 1TB hard drive, plus an extra 256GB SSD that speeds up load times. Plus, you can have your mouse, keyboard and a controller all plugged in at the same time with the 4 high-speed USB ports, so there\u2019s no need to keep swapping things around all the time.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"43"}}
{"product": "Desktop", "brand": "Lenovo", "model": "IdeaCentre G5 14IMB05", "size": "Intel\u00ae Core\u2122 i3", "resolution": "NVidia GeForce GTX 1650 SUPER", "type": "Gaming Tower", "price": 649, "colour": "Black", "energy_rating": "SSD - 512GB/8", "overview": "Take your first steps into the world of PC gaming with this Lenovo IdeaCentre G5i desktop. You\u2019ll enjoy adventures through lush new realms, full of sharp detail and awesome special effects, thanks to its GeForce GTX 1650 SUPER graphics card. And the combination of a 10th generation Intel\u00ae Core\u2122 i3 processor alongside 8GB of RAM makes sure the action is really smooth, giving you a seamless experience.\n\nYou\u2019ll even be able to dive straight in with the speedy 512GB SSD, which also offers lots of storage for your favourite titles. Plus, it\u2019s got 7 USB ports for plugging in all your bits and pieces at the same time \u2013 perfect for keeping a controller handy without having to disconnect your keyboard or mouse.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"44"}}
{"product": "Desktop", "brand": "Lenovo", "model": "IdeaCentre G5 14IMB05", "size": "Intel\u00ae Core\u2122 i3", "resolution": "NVidia GeForce GTX 1650 SUPER", "type": "Gaming Tower", "price": 649, "colour": "Black", "energy_rating": "SSD - 512GB/8", "overview": "Take your first steps into the world of PC gaming with this Lenovo IdeaCentre G5i desktop. You\u2019ll enjoy adventures through lush new realms, full of sharp detail and awesome special effects, thanks to its GeForce GTX 1650 SUPER graphics card. And the combination of a 10th generation Intel\u00ae Core\u2122 i3 processor alongside 8GB of RAM makes sure the action is really smooth, giving you a seamless experience.\n\nYou\u2019ll even be able to dive straight in with the speedy 512GB SSD, which also offers lots of storage for your favourite titles. Plus, it\u2019s got 7 USB ports for plugging in all your bits and pieces at the same time \u2013 perfect for keeping a controller handy without having to disconnect your keyboard or mouse.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"45"}}
{"product": "Tablet", "brand": "Apple", "model": "iPad Mini 5th Generation", "size": "7.9", "resolution": "2048 x 1536", "type": "iPad", "price": 384, "colour": "Gold", "energy_rating": "64GB/2", "overview": "The beloved 7.9-inch iPad mini is more capable than ever.1 It features the A12 Bionic chip with Neural Engine, which uses real-time machine learning to transform the way you experience photos, gaming, augmented reality (AR), and more. A beautiful Retina display with True Tone for easier viewing in all kinds of lighting environments. Support for Apple Pencil.2 Wi-Fi and Gigabit-class LTE.3 An 8MP back camera and 7MP FaceTime HD camera. As well as all-day battery life,4 Touch ID and Apple Pay, and over a million iPad apps on the App Store\u2014in an iPad that fits in one hand.", "user_ratings": 5, "images": "images"}
{"index":{"_index":"products","_id":"46"}}
{"product": "Tablet", "brand": "Apple", "model": "iPad 8th Generation", "size": "10.2", "resolution": "2160 x 1620", "type": "iPad", "price": 429, "colour": "Silver", "energy_rating": "128GB/4", "overview": "The new iPad. It\u2019s your digital notebook, mobile office, photo studio, game console and personal cinema. With the A12 Bionic chip that can easily power essential apps and immersive games. So you can edit a document while researching on the web and making a FaceTime call to a colleague at the same time. Apple Pencil makes note-taking with iPad a breeze. Attach a full\u2011size Smart Keyboard for comfortable typing. And go further with Wi-Fi and 4G LTE Advanced and all-day battery life.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"47"}}
{"product": "Tablet", "brand": "Apple", "model": "iPad Air [4th Generation]", "size": "10.9", "resolution": "2360 x 1640", "type": "iPad", "price": 556, "colour": "Sky Blue", "energy_rating": "64GB/4", "overview": "The all-new iPad Air. It\u2019s more versatile than ever. The stunning 10.9-inch Liquid Retina display with wide colour lets you see photos, videos and games in vivid, true-to-life detail.1 It features the A14 Bionic chip with Neural Engine, delivering power and advanced machine learning capabilities to edit a 4K video, create a beautiful presentation, design a 3D model, and do all of these things with ease. And now with support for Magic Keyboard and Apple Pencil (2nd generation),2 fast, easy and secure Touch ID and Apple Pay, a 12MP back camera and 7MP FaceTime HD camera, USB-C connector for charging and accessories, all-day battery life,3 fast Wi-Fi 6 and 4G LTE Advanced.4 With iPad Air you have the power to bring your ideas to life.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"48"}}
{"product": "Tablet", "brand": "Apple", "model": "iPad Pro 4th Generation", "size": "12.9", "resolution": "2732 x 2048", "type": "iPad", "price": 912, "colour": "Space Grey", "energy_rating": "128GB/6", "overview": "The 12.9-inch iPad Pro features an immersive, edge-to-edge Liquid Retina display.1The new pro cameras, Wide and new Ultra Wide, combined with the all-new LiDAR scanner enable entirely new experiences in the next generation of augmented reality (AR) apps. A12Z Bionic chip for powering essential apps and graphics-intensive games. Support for the new Magic Keyboard with trackpad2 and Apple Pencil.2 Faster Wi-Fi and 4G LTE Advanced.3 All-day battery life.4 And access to millions of apps on the App Store to transform iPad Pro into anything you need, anywhere you need it.", "user_ratings": 5, "images": ""}
{"index":{"_index":"products","_id":"49"}}
{"product": "Tablet", "brand": "Samsung", "model": "Galaxy Tab S7", "size": "11", "resolution": "2560 x 1600", "type": "Wifi Tablet", "price": 619, "colour": "Mystic Black", "energy_rating": "128GB/6", "overview": "Enjoy a world of entertainment with this mystic black tablet from Samsung. The Android 10 operating system gives you access to loads of cool apps and games, which will all look amazing on the Quad HD screen. It also has 128GB of storage, so you\u2019ll have plenty of space for your photos and videos, and you\u2019ll be able to play your favourite games all day thanks to the 15-hour battery life. Plus, you can take fantastic snaps with the 13MP rear camera. And it even comes with a Samsung S Pen, which is great for making quick notes and sketches.", "user_ratings": 4.9, "images": ""}
{"index":{"_index":"products","_id":"50"}}
{"product": "Tablet", "brand": "Samsung", "model": "Galaxy Tab A7", "size": "10.36", "resolution": "1200 x 2000", "type": "Wifi Tablet", "price": 179, "colour": "Grey", "energy_rating": "31GB/3", "overview": "Keep everyone entertained with this grey Galaxy Tab A7 from Samsung. It uses the Android 10 operating system, so you\u2019ll have loads of apps and games on hand to keep you distracted from the hustle and bustle around you. Everything will look amazing too, thanks to the stunning 10.3-inch WUXGA display that\u2019ll keep you in the thick of the action. Plus, the 32GB of storage gives you plenty of space for your files. It even has an 8MP rear camera to capture all those cherished moments in stunning detail. And it\u2019s Bluetooth enabled, which is ideal if you want to connect wireless headphones to catch up on that must-see boxset on the commute.", "user_ratings": 4.5, "images": ""}
{"index":{"_index":"products","_id":"51"}}
{"product": "Tablet", "brand": "Amazon", "model": "Fire", "size": "7", "resolution": "1024 x 600", "type": "Wifi Tablet", "price": 34, "colour": "Plum", "energy_rating": "16GB/1", "overview": "Keep the whole clan entertained with this plum Amazon Fire 7 tablet. With the clever Fire OS 5 installed, you\u2019ll have all the latest apps at your fingertips. It also has an HD screen for great picture quality, so your videos will look crystal clear. And with 16GB of storage, you\u2019ll have plenty of space to store everything from Angry Birds to holiday snaps. Plus, you can use the 2 megapixel rear camera to capture those cherished moments to share with friends. It even has Alexa Assistant, which you can use to ask questions and set reminders, or view your smart home cameras and doorbells.", "user_ratings": 4.8, "images": ""}
{"index":{"_index":"products","_id":"52"}}
{"product": "Tablet", "brand": "Lenovo", "model": "Smart Tab", "size": "10.1", "resolution": "1920 x 1200", "type": "Wifi Tablet", "price": 179, "colour": "Grey", "energy_rating": "32GB/3", "overview": "This grey Lenovo Yoga Smart Tab tablet has loads of great features to keep you entertained. It runs on the Android 9.0 Pie operating system, giving you access to thousands of cool apps and making it easier to navigate using gestures. The 11-hour battery life means you\u2019ll have plenty of charge to binge movies or TV shows, which\u2019ll look fantastic on its 10.1-inch Full HD screen. There\u2019s also space for music, photos and videos with its 32GB storage, while the 8MP rear camera takes fantastic snaps to share with all your friends. You\u2019ll also find Google Assistant built-in, letting you ask questions, set reminders and more using your voice.", "user_ratings": 4.6, "images": ""}
{"index":{"_index":"products","_id":"53"}}
{"product": "Tablet", "brand": "Lenovo", "model": "Tab M10 Plus", "size": "10.3", "resolution": "1920 x 1200", "type": "Wifi Tablet", "price": 179, "colour": "Grey", "energy_rating": "64GB/4", "overview": "A true helper, the Tab M10 Plus from Lenovo is always ready to give you a hand. As it runs on Android 9 Pie, you’ll have access to anything from social and shopping apps, to banking apps to help out with your finances. And when you’ve got your hands full with the kids, you can use its voice controls and ask Google to check the weather or set a reminder for tomorrow’s play date, before you rush them out the door. Plus, it’s got a fabulous 10.3-inch Full HD+ display and Dolby Atmos sound tech, so it’s great for getting under the covers and watching a film, as it shows off all the action in brilliant detail. You won’t have to worry about it cutting out mid-scene either, since it comes with a 9-hour battery life, while the 64GB of storage gives you room for all your downloads. What’s more, when you’ve been busy DIY-ing and upcycling, you can snap a pic and proudly show it off to the world with the 8MP camera.","user_ratings": 4.8, "images": ""}
```

## 1. `bool` query

Elasticsearch 的 `bool` 查询是一种匹配文档的查询，它可以匹配其他查询的布尔组合。`bool` 查询映射到 Lucene 的 BooleanQuery。它是使用一个或多个布尔子句构建的，每个子句都有一个类型化的出现。出现类型包括：

- `must`：子句（查询）必须出现在匹配的文档中，并将有助于得分。
- `filter`：子句（查询）必须出现在匹配的文档中。然而，与 `must` 不同，查询的得分将被忽略。过滤子句在过滤器上下文中执行，这意味着得分被忽略，子句被考虑用于缓存。
- `should`：子句（查询）应该出现在匹配的文档中。
- `must_not`：子句（查询）不能出现在匹配的文档中。子句在过滤器上下文中执行，这意味着得分被忽略，子句被考虑用于缓存。因为得分被忽略，所以所有文档的得分都是 0。

`bool` 查询采取的是更多匹配就越好的方法，所以每个匹配的 `must` 或 `should` 子句的得分将被加在一起，以提供每个文档的最终 `_score`。

```json
# 在 `products` 索引中搜索 `product` 字段包含 "TV" 的所有文档。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，只有一个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现。
# `match` 查询用于执行全文字段的精确匹配。
GET products/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "product": "TV"
          }
        }
      ]
    }
  }
}

# 在 `products` 索引中搜索 `product` 字段包含 "TV" 的所有文档，并且价格在 700 到 800 的范围内。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有两个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现。
# 第一个 `match` 查询用于执行全文字段的精确匹配。
# 第二个 `range` 查询用于找出价格在指定范围内的文档。
GET products/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "product": "TV"
          }
        },
        {
          "range": {
            "price": {
              "gte": 700,
              "lte": 800
            }
          }
        }
      ]
    }
  }
}


# 在 `products` 索引中搜索 `product` 字段包含 "TV" 的所有文档，价格在 1000 到 2000 的范围内，并且颜色为 "silver" 或 "black"。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有三个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现。
# 第一个 `match` 查询用于执行全文字段的精确匹配。
# 第二个 `range` 查询用于找出价格在指定范围内的文档。
# 第三个 `terms` 查询用于找出颜色为 "silver" 或 "black" 的文档。
GET products/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "product": "TV"
          }
        },
        {
          "range": {
            "price": {
              "gte": 1000,
              "lte": 2000
            }
          }
        },
        {
          "terms": {
            "colour": [
              "silver",
              "black"
            ]
          }
        }
      ]
    }
  }
}

# 在 `products` 索引中搜索 `product` 字段包含 "TV" 的所有文档，分辨率为 "4k"，并且颜色为 "silver" 或 "black"。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有三个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现。
# 第一个 `match` 查询用于执行全文字段的精确匹配。
# 第二个 `term` 查询用于找出分辨率为 "4k" 的文档。
# 第三个 `terms` 查询用于找出颜色为 "silver" 或 "black" 的文档。
GET products/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "product": "TV"
          }
        },
        {
          "term": {
            "resolution": "4k"
          }
        },
        {
          "terms": {
            "colour": [
              "silver",
              "black"
            ]
          }
        }
      ]
    }
  }
}

# 在 `products` 索引中搜索所有的电视，但不包括 "Samsung" 和 "Philips" 这两个品牌。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有一个子句）。
# `must_not` 关键字表示包含的子句必须不在匹配的文档中出现。
# `terms` 查询用于找出品牌不为 "Samsung" 或 "Philips" 的文档。
GET products/_search
{
 "query": {
   "bool": {
     "must_not": [
       {
         "terms": {
           "brand.keyword": [
             "Samsung",
             "Philips"
           ]
         }
       }
     ]
   }
 }
}

# 在 `products` 索引中搜索所有的电视，但不包括 "Samsung" 和 "Philips" 这两个品牌。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有两个子句）。
# `must_not` 关键字表示包含的子句必须不在匹配的文档中出现。
# `terms` 查询用于找出品牌不为 "Samsung" 或 "Philips" 的文档。
# `must` 关键字表示包含的子句必须在匹配的文档中出现。
# `match` 查询用于执行全文字段的精确匹配。

GET products/_search
{
 "query": {
   "bool": {
     "must_not": [
       {
         "terms": {
           "brand.keyword": [
             "Philips",
             "Samsung"
           ]
         }
       }
     ],
     "must": [
       {
         "match": {
           "product": "TV"
         }
       }
     ]
   }
 }
}

# 在 `products` 索引中搜索所有的电视，但不包括 "Samsung" 和 "Philips" 这两个品牌，用户评分低于 4.0，颜色为 "black" 的产品。
# 同时，这些电视必须是 "4k" 分辨率，价格在 500 到 700 的范围内。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有多个子句）。
# `must_not` 关键字表示包含的子句必须不在匹配的文档中出现。
# `terms` 查询用于找出品牌不为 "Samsung" 或 "Philips" 的文档。
# `range` 查询用于找出用户评分低于 4.0 的文档。
# `match` 查询用于找出颜色为 "black" 的文档。
# `must` 关键字表示包含的子句必须在匹配的文档中出现。
# `match` 查询用于执行全文字段的精确匹配。
# `term` 查询用于找出分辨率为 "4k" 的文档。
# `range` 查询用于找出价格在指定范围内的文档。

GET products/_search
{
 "query": {
   "bool": {
     "must_not": [
       {
         "terms": {
           "brand.keyword": [
             "Philips",
             "Samsung"
           ]
         }
       },
       {
         "range": {
           "user_ratings": {
             "lte": 4.0
           }
         }
       },
       {
         "match": {
           "colour": "black"
         }
       }
     ],
     "must": [
       {
         "match": {
           "product": "TV"
         }
       },
       {
         "term": {
           "resolution": {
             "value": "4k"
           }
         }
       },
       {
         "range": {
           "price": {
             "gte": 500,
             "lte": 700
           }
         }
       }
     ]
   }
 }
}

# 在 `products` 索引中搜索价格在 500 到 1000 的范围内，或者产品概述以 "4k ultra hd" 开头的所有文档。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有两个子句）。
# `should` 关键字表示至少有一个子句必须在匹配的文档中出现。
# 第一个 `range` 查询用于找出价格在指定范围内的文档。
# 第二个 `match_phrase_prefix` 查询用于找出产品概述以 "4k ultra hd" 开头的文档。

GET products/_search
{
  "_source": ["product","brand", "overview","price"],
  "query": {
    "bool": {
      "should": [
        {
          "range": {
            "price": {
              "gte": 500,
              "lte": 1000
            }
          }
        },
        {
          "match_phrase_prefix": {
            "overview": "4k ultra hd"
          }
        }
      ]
    }
  }
}

# 在 `products` 索引中搜索所有的电视，品牌为 "LG"。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有两个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现。
# 第一个 `match` 查询用于找出产品为 "TV" 的文档。
# 第二个 `match` 查询用于找出品牌为 "LG" 的文档。

GET products/_search
{
  "_source": ["product","brand"],
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "product": "TV"
          }
        },
        {
          "match": {
            "brand": "LG"
          }
        }
      ]
    }
  }
}

# 在 `products` 索引中搜索所有的电视，品牌为 "LG"，价格在 500 到 1000 的范围内，或者产品概述以 "4k ultra hd" 开头。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有多个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现。
# 第一个 `match` 查询用于找出产品为 "TV" 的文档。
# 第二个 `match` 查询用于找出品牌为 "LG" 的文档。
# `should` 关键字表示至少有一个子句必须在匹配的文档中出现，但不是必须的，它会提高匹配这些子句的文档的得分。
# 第一个 `range` 查询用于找出价格在指定范围内的文档。
# 第二个 `match_phrase_prefix` 查询用于找出产品概述以 "4k ultra hd" 开头的文档。
GET products/_search
{
  "_source": ["product","brand","overview", "price"],
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "product": "TV"
          }
        },
        {
          "match": {
            "brand": "LG"
          }
        }
      ],
      "should": [
        {
          "range": {
            "price": {
              "gte": 500,
              "lte": 1000
            }
          }
        },
        {
          "match_phrase_prefix": {
            "overview": "4k ultra hd"
          }
        }
      ]
    }
  }
}

# 在 `products` 索引中搜索所有的电视，品牌为 "LG"，价格在 500 到 1000 的范围内，或者颜色为 "silver"，或者产品概述以 "4kk" 开头。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有多个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现。
# 第一个 `match` 查询用于找出产品为 "TV" 的文档。
# 第二个 `match` 查询用于找出品牌为 "LG" 的文档。
# `should` 关键字表示至少有一个子句必须在匹配的文档中出现，但不是必须的，它会提高匹配这些子句的文档的得分。
# 第一个 `range` 查询用于找出价格在指定范围内的文档。
# 第二个 `match` 查询用于找出颜色为 "silver" 的文档。
# 第三个 `match_phrase_prefix` 查询用于找出产品概述以 "4kk" 开头的文档。
# `minimum_should_match` 参数指定了至少需要满足多少个 `should` 子句。在这个例子中，至少需要满足一个 `should` 子句。
GET products/_search
{
  "_source": ["product","brand","overview", "price","colour"],
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "product": "TV"
          }
        },
        {
          "match": {
            "brand": "LG"
          }
        }
      ],
      "should": [
        {
          "range": {
            "price": {
              "gte": 500,
              "lte": 1000
            }
          }
        },
        {
          "match": {
            "colour": "silver"
          }
        },
        {
          "match_phrase_prefix": {
            "overview": "4kk"
          }
        }
      ],
      "minimum_should_match": 1
    }
  }
}

# 在 `products` 索引中搜索所有的电视，价格在 500 到 1000 的范围内。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有两个子句）。
# `filter` 关键字表示包含的子句必须在匹配的文档中出现，但不会影响得分。
# 第一个 `term` 查询用于找出产品为 "TV" 的文档。
# 第二个 `range` 查询用于找出价格在指定范围内的文档。

GET products/_search
{
  "_source": ["brand","product","colour"],
  "query": {
    "bool": {
      "filter": [
        {
          "term": {
            "product.keyword": "TV"
          }
        },
        {
          "range": {
            "price": {
              "gte": 500,
              "lte": 1000
            }
          }
        }
      ]
    }
  }
}

# 在 `products` 索引中搜索所有品牌为 "LG" 的产品，价格在 500 到 1000 的范围内。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有两个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现，这会影响得分。
# `filter` 关键字表示包含的子句必须在匹配的文档中出现，但不会影响得分。
# 第一个 `match` 查询用于找出品牌为 "LG" 的文档。
# 第二个 `range` 查询用于找出价格在指定范围内的文档。

GET products/_search
{
  "_source": ["brand","product","colour","price"],
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "brand": "LG"
          }
        }
      ],
      "filter": [
        {
          "range": {
            "price": {
              "gte": 500,
              "lte": 1000
            }
          }
        }
      ]
    }
  }
}

# 在 `products` 索引中搜索所有品牌为 "LG" 的产品，价格在 500 到 1000 的范围内，颜色不是 "silver"，并且能源等级为 "A++" 或者类型为 "Fridge Freezer"。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有多个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现，这会影响得分。
# `must_not` 关键字表示包含的子句必须不在匹配的文档中出现，这也会影响得分。
# `should` 关键字表示至少有一个子句必须在匹配的文档中出现，但不是必须的，它会提高匹配这些子句的文档的得分。
# `filter` 关键字表示包含的子句必须在匹配的文档中出现，但不会影响得分。
# 第一个 `match` 查询用于找出品牌为 "LG" 的文档。
# 第二个 `term` 查询用于找出颜色不是 "silver" 的文档。
# 第三个 `match` 查询用于找出能源等级为 "A++" 的文档。
# 第四个 `term` 查询用于找出类型为 "Fridge Freezer" 的文档。
# 第五个 `range` 查询用于找出价格在指定范围内的文档。

GET products/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "brand": "LG"
          }
        }
      ],
      "must_not": [
        {
          "term": {
            "colour": "silver"
          }
        }
      ],
      "should": [
        {
          "match": {
            "energy_rating": "A++"
          }
        },
        {
          "term": {
            "type": "Fridge Freezer"
          }
        }
      ],
      "filter": [
        {
          "range": {
            "price": {
              "gte": 500,
              "lte": 1000
            }
          }
        }
      ]
    }
  }
}


# 在 `products` 索引中搜索所有品牌为 "LG" 的产品，价格在 500 到 1000 的范围内，颜色不是 "black"，并且类型为 "Frost Free Fridge Freezer" 或者能源等级为 "A++"。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有多个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现，这会影响得分。
# `must_not` 关键字表示包含的子句必须不在匹配的文档中出现，这也会影响得分。
# `should` 关键字表示至少有一个子句必须在匹配的文档中出现，但不是必须的，它会提高匹配这些子句的文档的得分。
# `filter` 关键字表示包含的子句必须在匹配的文档中出现，但不会影响得分。
# 第一个 `match` 查询用于找出品牌为 "LG" 的文档。
# 第二个 `match` 查询用于找出颜色不是 "black" 的文档。
# 第三个 `term` 查询用于找出类型为 "Frost Free Fridge Freezer" 的文档。
# 第四个 `match` 查询用于找出能源等级为 "A++" 的文档。
# 第五个 `range` 查询用于找出价格在指定范围内的文档。
# `_name` 参数用于给查询子句命名，以便在结果中识别哪些子句匹配了文档。

GET products/_search
{
  "_source": ["product", "brand"],
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "brand": {
              "query": "LG",
              "_name": "must_match_brand_query"
            }
          }
        }
      ],
      "must_not": [
        {
          "match": {
            "colour.keyword": {
              "query":"black",
              "_name":"must_not_colour_query"
            }
          }
        }
      ],
      "should": [
        {
          "term": {
            "type.keyword": {
              "value": "Frost Free Fridge Freezer",
              "_name":"should_term_type_query"
            }
          }
        },
        {
          "match": {
            "energy_rating": {
              "query": "A++",
              "_name":"should_match_energy_rating_query"
            }
          }
        }
      ],
      "filter": [
        {
          "range": {
            "price": {
              "gte": 500,
              "lte": 1000,
              "_name":"filter_range_price_query"
            }
          }
        }
      ]
    }
  }
}
```

## 2. `function_score` query

```json


# Term search with a bog-standard term query - see the score:1.6376086
GET products/_search
{
  "query": {
    "term": {
      "product": {
        "value": "tv"
      }
    }
  }
}

#Function score - wraping the term query - score is 1.6376086

GET products/_search
{
  "query": {
    "function_score": {
      "query": {
        "term": {
          "product": "tv"
        }
      }
    }
  }
}

#Function score - random score
GET products/_search
{
  "query": {
    "function_score": {
      "query": {
        "term": {
          "product": "tv"
        }
       },
       "random_score": {}
    }
  }
}


#Function score - random score boosted by a factor
GET products/_search
{
  "query": {
    "function_score": {
      "query": {
        "term": {
          "product": "tv"
        }
      },
      "random_score": {},
      "boost": 3
    }
  }
}

#Function score - random score - with seed and field
GET products/_search
{
  "query": {
    "function_score": {
      "query": {
        "term": {
          "product": "tv"
        }
       },
       "random_score": {
         "seed": 10,
         "field":"user_ratings"
       }
    }
  }
}

#Function score - random score boosted by a factor
GET products/_search
{
  "query": {
    "function_score": {
      "query": {
        "term": {
          "product": "tv"
        }
      },
      "random_score": {},
      "boost": 3
    }
  }
}

#Function score - scripted score based on user_ratings value
GET products/_search
{
  "query": {
    "function_score": {
      "query": {
        "term": {
          "product": "tv"
        }
      },
      "script_score": {
        "script": {
          "source":"_score * doc['user_ratings'].value + params['goodluck_factor']",
          "params": {
            "goodluck_factor":10
          }
        }
      }
    }
  }
}

# Using script_score function to define a scoring function
GET products/_search
{
  "query": {
    "function_score": {
      "query": {
        "term": {
          "product": "tv"
        }
      },
      "script_score": {
        "script": {
          "source":"_score * doc['user_ratings'].value * params['factor']",
          "params": {
            "factor":3
          }
        }
      }
    }
  }
}

#Field value factor
GET products/_search
{
  "query": {
    "function_score": {
      "query": {
        "term": {
          "product": "tv"
        }
      },
      "field_value_factor": {
        "field": "user_ratings",
        "factor": 2,
        "modifier": "square"
      }
    }
  }
}

# Multiple functions made up of weight and field value factor functions
GET products/_search
{
  "query": {
    "function_score": {
      "query": {
        "term": {
          "product": "tv"
        }
      },
      "functions": [
        {
          "filter": {
            "term": {
              "brand": "LG"
            }
          },
          "weight": 3
        },
        {
          "filter": {
            "range": {
              "user_ratings": {
                "gte": 4.5,
                "lte": 5
              }
            }
          },
          "field_value_factor": {
            "field": "user_ratings",
            "factor": 1.2,
            "modifier": "square"
          }
        }
      ],
      "score_mode": "avg",
      "boost_mode": "sum"
    }
  }
}
# Multiple functions - random score, weight and field value factor
GET products/_search
{
  "query": {
    "function_score": {
      "query": {
        "term": {
          "product": "tv"
        }
      },
      "functions": [
        {
          "filter": {
            "match": {
              "brand": "samsung"
            }
          },
          "random_score": {}
        },
        {
          "filter": {
            "match_phrase": {
              "overview": "4K ultra hd"
            }
          },
          "weight": 2
        },
        {
          "filter": {
            "range": {
              "user_ratings": {
                "gte": 4.5,
                "lte": 5
              }
            }
          },
          "field_value_factor": {
            "field": "user_ratings",
            "factor": 2,
            "modifier": "square"
          }
        }
      ],
      "score_mode": "avg",
      "boost_mode": "multiply"
    }
  }
}
```

## 3. `constant_score` query

```json
#Constant score
# 在 `products` 索引中搜索价格在 1000 到 2000 的范围内的所有产品。
# `constant_score` 查询将所有匹配的文档赋予一个统一的常数得分。
# `filter` 关键字表示包含的子句必须在匹配的文档中出现，但不会影响得分。
# `range` 查询用于找出价格在指定范围内的文档。
# `boost` 参数用于设置返回的常数得分，这里设置为 5.0。

GET products/_search
{
  "query": {
    "constant_score": {
      "filter": {
        "range": {
          "price": {
            "gte": 1000,
            "lte": 2000
          }
        }
      },
      "boost": 5.0
    }
  }
}

GET products/_search
{
  "query": {
    "bool": {
      "filter": [
        {
          "range": {
            "user_ratings": {
              "gte": 4,
              "lte": 5
            }
          }
        }
      ]
    }
  }
}

GET products/_search
{
  "query": {
    "constant_score": {
      "filter":
        {
          "range": {
            "user_ratings": {
              "gte": 4,
              "lte": 5
            }
          }
        },
      "boost": 5.0
    }
  }
}

GET products/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "product": "TV"
          }
        },
        {
          "constant_score": {
            "filter": {
              "term": {
                "colour": "black"
              }
            },
            "boost": 3.5
          }
        }
      ]
    }
  }
}

# 在 `products` 索引中搜索所有产品名称为 "TV" 的产品，品牌为 "Samsung" 或者用户评分在 4 到 5 的范围内。
# `bool` 查询允许组合多个查询子句，并且每个子句必须满足查询条件（在这个例子中，有多个子句）。
# `must` 关键字表示包含的子句必须在匹配的文档中出现，这会影响得分。
# `should` 关键字表示至少有一个子句必须在匹配的文档中出现，但不是必须的，它会提高匹配这些子句的文档的得分。
# `minimum_should_match` 参数表示 `should` 子句中至少有多少个子句必须匹配，这里设置为 1，表示至少有一个 `should` 子句必须匹配。
# 第一个 `match` 查询用于找出产品名称为 "TV" 的文档。
# 第二个 `term` 查询用于找出品牌为 "Samsung" 的文档。
# 第三个 `constant_score` 给所有匹配的文档赋予一个统一的常数得分。
# `boost` 参数用于设置返回的常数得分，这里设置为 2.5。
GET products/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "product": "TV"
          }
        }
      ],
      "should": [
        {
          "term": {
            "brand.keyword": {
              "value": "Samsung"
            }
          }
        },
        {
          "constant_score": {
            "filter": {
              "range": {
                "user_ratings": {
                  "gte": 4,
                  "lte": 5
                }
              }
            },
            "boost": 2.5
          }
        }
      ], "minimum_should_match": 1
    }
  }
}
```

## 4. `dis_max` query

`dis_max` 查询会对每个字段执行查询，然后返回得分最高的那个字段的得分。这对于你有多个字段，但只关心最佳匹配的场景非常有用。

`multi_match` 查询也会对每个字段执行查询，但它会组合每个字段的得分来计算最终得分。这对于你希望在多个字段中找到最佳匹配的场景非常有用。

在某些情况下，你可能希望使用 `multi_match` 查询的 `best_fields` 类型，它的行为类似于 `dis_max` 查询。这种类型的查询会找到每个字段的最佳匹配，然后返回得分最高的那个匹配。

```json
# 在 `products` 索引中搜索所有类型或概述包含 "smart" 的产品。
# `multi_match` 查询允许我们在多个字段上执行相同的查询。
# `query` 关键字表示我们要搜索的词，这里是 "smart"。
# `fields` 关键字表示我们要在哪些字段上执行查询，这里是 "type" 和 "overview"。
# `highlight` 关键字表示我们要高亮显示哪些字段的匹配结果，这里也是 "type" 和 "overview"。

GET products/_search
{
  "query": {
    "multi_match": {
      "query": "smart",
      "fields": [
        "type",
        "overview"
      ]
    }
  },
  "highlight": {
    "fields": {
      "type": {},
      "overview": {}
    }
  }
}

# 在 `products` 索引中搜索所有类型、概述或产品名称包含 "smart tv" 的产品。
# `dis_max` 查询会对每个字段执行查询，然后返回得分最高的那个字段的得分。
# `queries` 关键字表示我们要执行的查询列表。
# 每个 `match` 查询都会在指定的字段上搜索 "smart tv"。
# `tie_breaker` 参数用于在多个字段得分相同时，提供一种方式来组合得分。这里设置为 0.5，表示如果多个字段得分相同，那么最终得分会是这些得分的平均值。
GET products/_search
{
  "_source": [
    "type",
    "overview"
  ],
  "query": {
    "dis_max": {
      "queries": [
        {
          "match": {
            "type": "smart tv"
          }
        },
        {
          "match": {
            "overview": "smart tv"
          }
        },
        {
          "match": {
            "product": "smart tv"
          }
        }
      ],
      "tie_breaker": 0.5
    }
  }
}
```

## 5. `boosting` query

```json
# 在 `products` 索引中搜索所有产品名称为 "TV" 的产品，但是价格大于等于 2500 的产品的得分会被降低。
# `boosting` 查询允许我们提升（boost）匹配某些查询的文档的得分，同时降低（deboost）匹配其他查询的文档的得分。
# `positive` 关键字表示包含的子句必须在匹配的文档中出现，这会影响得分。
# `negative` 关键字表示包含的子句在匹配的文档中出现，会降低得分。
# `negative_boost` 参数表示降低得分的程度，这里设置为 0.5，表示匹配 `negative` 子句的文档得分会被降低 50%。
# 第一个 `term` 查询用于找出产品名称为 "TV" 的文档。
# 第二个 `range` 查询用于找出价格大于等于 2500 的文档。

GET products/_search
{
  "size": 40,
  "_source": ["product", "price","colour"],
  "query": {
    "boosting": {
      "positive": {
        "term": {
          "product":"tv"
        }
      },
      "negative": {
        "range": {
          "price": {
            "gte": 2500
          }
        }
      },
      "negative_boost": 0.5
    }
  }
}

GET products/_search
{
  "size": 40,
  "_source": ["product", "price","colour","brand"],
  "query": {
    "boosting": {
      "positive": {
        "bool": {
          "must": [
            {
              "match": {
                "product": "TV"
              }
            }
          ]
        }
      },
      "negative": {
        "bool": {
          "must": [
            {
              "match": {
                "brand": "Sony"
              }
            }
          ]
        }
      },
      "negative_boost": 0.5
    }
  }
}
```
