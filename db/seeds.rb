# === Profiles === #

Profile.create({
  full_name: "Henrietta Gillespie",
  phone: "01672 870 414",
  email_main: "henrietta@balmainandbalmain.com",
  email_general: "mail@balmainandbalmain.com",
  address: "Cruses Cottage, Wilton, SN8 3SP",
  company: "registered in England no. xxxxxx. registered office:",
  copyright: "(c) Copyright 2014 Balmain and Balmain",
  facebook: "https://facebook.com/balmainandbalmain",
  twitter: "https://twitter.com/BalmainSofa",
  pintrest: "http://www.pinterest.com/balmainsofa/",
  instagram: "https://www.instagram.com/balmainandbalmain/",
  house_and_garden: "http://www.houseandgarden.co.uk/the-list/profile/balmain-and-balmain"
})

# === Pages === #

Page.create({
  title: "About us",
  content: "Sarah and Andrew Balmain established Balmain & Balmain in 1987. A family-owned company, they design and manufacture classic furniture, combining traditional methods with the most up to date technology to achieve the highest standards.

Their daughter Henrietta took on the running of the company at the beginning of 2014. Henrietta has worked for the company for a number of years and is now looking to breath new and exciting life into the company. Having worked for a number of years in a design team at Colefax & Fowler and other design houses she is very much looking forward to the challenge and is at the end of the phone waiting for your questions. Plus with over 20 yearsʼ experience in the furniture business, Henrietta hope to continue to make choosing their unique bespoke furniture, a stress-free and enjoyable experience.

Henrietta takes enormous pleasure in inviting people to her home set in the pictureque village of Wilton on the Berkshire/Wiltshire borders. It is an ideal relaxed setting in which to view their bespoke sofas, chairs and footstools."
})

Page.create({
  title: "Contact us",
  content: "Please contact us for more information and to make a quote, we would be delighted to hear from you.
**Please Note: We are not a mail order company, we make bespoke handmade furniture.**

Henrietta Gillespie  
Cruses Cottage  
Wilton  
UK  
SN8 3SP  

01672 870 414

[mail@balmainandbalmain.com](mailto:mail@balmainandbalmain.com)"
})

# === Furnishings === #

# Furnishing.all.each do |f| puts "\nFurnishing.create({\n  furnishing_type: \"#{f.furnishing_type}\",\n  shape: \"#{f.shape}\",\n  seats: #{f.seats},\n  name: \"#{f.name}\",\n  description: \"#{f.description}\",\n  back: \"#{f.back}\",\n  seat: \"#{f.seat}\",\n  image_main: \"#{f.image_main}\",\n  image_rollover: \"#{f.image_rollover}\",\n  image_dimensions: \"#{f.image_dimensions}\",\n  image_other: \"#{f.image_other}\",\n  is_main: #{f.is_main}\n})\n\n" end;nil

Furnishing.create({
  furnishing_type: "chair",
  shape: "arun",
  seats: 1.0,
  name: "Arun",
  description: "The Arun is a versatile high-backed chair with flat-fronted arms.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/IMG_1993.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/IMG_1984.jpg",
  image_dimensions: "https://balmain-web.s3.amazonaws.com/furnishing/dl-web.dropbox.com_.webloc",
  image_other: "",
  is_main: false
})


Furnishing.create({
  furnishing_type: "sofa",
  shape: "avon",
  seats: 2.5,
  name: "Avon",
  description: "The Avon is an elegant chair keeping the beautiful curves at the base, arms and back.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/avon-sofa-web.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/avon-sofa-web.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/avon-sofa-detail-web.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "sofa",
  shape: "dart",
  seats: 2.0,
  name: "Dart",
  description: "The Dart is designed those who need a neater, more compact style of furniture in their setting.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7874.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7885.jpg",
  image_dimensions: "",
  image_other: "",
  is_main: false
})


Furnishing.create({
  furnishing_type: "armchair",
  shape: "wylye",
  seats: 1.0,
  name: "Wylye",
  description: "This big and sumptuous chair is not a space saver but perfect for curling up in on your own.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7780.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7780.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7783.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "armchair",
  shape: "avon",
  seats: 1.0,
  name: "Avon",
  description: "The Avon is an elegant chair keeping the beautiful curves at the base, arms and back.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7739.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7751.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7760.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "armchair",
  shape: "frome",
  seats: 1.0,
  name: "Frome",
  description: "The Frome is the archetypal chair. If you were asked to design your perfect chair, it would be this comfortable.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7850.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7843.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7850.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "armchair",
  shape: "dart",
  seats: 1.0,
  name: "Dart",
  description: "The Dart is designed those who need a neater, more compact style of furniture in their setting.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/IMG_2097.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7885.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7887.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "sofa",
  shape: "hamble",
  seats: 2.5,
  name: "Hamble",
  description: "The Hamble is a large, elegant piece with a luxurious scatter cushion back — Curl up and read a book or settle down on a wet day to watch the afternoon movie.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/IMG_1932.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7711.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7714.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "sofa",
  shape: "wylye",
  seats: 2.5,
  name: "Wylye",
  description: "The Wylye. Big and sumptuous in all ways, this is the sofa to cosy up in with friends.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7766.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7788.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7774.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "chair",
  shape: "parrett",
  seats: 1.0,
  name: "Parrett",
  description: "The Parrett was designed to be a bit different to the typical tub chair. Square and angular, with crisp straight lines, it is out of this world to sit in.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/IMG_2018.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7806.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7805.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "armchair",
  shape: "stour",
  seats: 1.0,
  name: "Stour",
  description: "The Stour is arguably our most classic design and, with its curved back and low rollover arms, one of our most popular styles.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/IMG_2003.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7798.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7796.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "chair",
  shape: "otter",
  seats: 1.0,
  name: "Otter",
  description: "The Otter is our interpretation of the classic wing back chair. Its large wings and cutback scroll arms wouldn't look out of place in the club.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/IMG_1942.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7721.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7725.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "chair",
  shape: "lambourn",
  seats: 1.0,
  name: "Lambourn",
  description: "The Lambourn is our chair for all occasion and spaces. It is neat and tidy and adaptable to any situation.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/IMG_2031.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7811.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7817.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "sofa",
  shape: "frome",
  seats: 2.0,
  name: "Frome",
  description: "The Frome — the archetypal sofa. If you were asked to design your perfect sofa, it would be this comfortable.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7850.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7844.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7844.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "stool",
  shape: "stool",
  seats: 1.0,
  name: "My Stool",
  description: "This is a comfortable stool. You will love the details.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7850.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7844.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7844.jpg",
  is_main: false
})


Furnishing.create({
  furnishing_type: "stool",
  shape: "nadder-cube",
  seats: 1.0,
  name: "Nadder Cube",
  description: "This is a comfortable nadder cube. You will love the details.",
  back: "",
  seat: "",
  image_main: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7850.jpg",
  image_rollover: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7844.jpg",
  image_dimensions: "",
  image_other: "https://balmain-web.s3.amazonaws.com/furnishing/_J4E7844.jpg",
  is_main: false
})

