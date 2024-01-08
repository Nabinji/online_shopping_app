const ourProducts = [
  {
    'image': // this image from netwrok  you can takes from assets as well
        "https://hips.hearstapps.com/hmg-prod/images/winter-outfits-pop-of-color-1669664402.jpg?crop=0.425xw:0.798xh;0.253xw,0.202xh&resize=980:*",
    'discount': ' -40%',
    'title': 'Winter Jacket',
    'price': '\$900',
    'rating': '4.5',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        "https://i0.wp.com/yarlmart.lk/wp-content/uploads/2021/09/Women-Summer-Dress-Cute-Loose-Striped-Print-Ruffles-Sleeves-Dresses-Elegant-A-Line-Patchwork-Beach-Party-4.jpg?fit=600%2C600&ssl=1",
    'discount': ' -24%',
    'title': 'Summer Dress',
    'price': '\$699',
    'rating': '5.0',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        "https://cdn.luxe.digital/media/2019/09/12085003/casual-dress-code-men-style-summer-luxe-digital.jpg",
    'discount': ' -50%',
    'title': '  Men Outfit',
    'price': '\$1099',
    'rating': '4.9',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image': "https://i.ebayimg.com/images/g/Rg0AAOSwNjZgzHUA/s-l1200.webp",
    'discount': '35%',
    'title': 'Lehenga Choli',
    'price': '\$2000',
    'rating': '5.0',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        'https://cdn.shopify.com/s/files/1/0268/9027/2823/products/177874_mostlyyours_156498_chelsiedark_180038_tamerataupe_178206_onlythebeginningivory_174104_familiarsongbeige_164212_she_schic_177600_preciselyrightbeige_8_650x.jpg?v=1637163196',
    'discount': ' -30%',
    'title': "Winter Outfit",
    'price': '\$4000',
    'rating': '5.0',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        "https://hips.hearstapps.com/hmg-prod/images/guest-wearing-white-pants-oversized-brown-bag-outside-cos-news-photo-1678848649.jpg",
    'discount': ' -50%',
    'title': 'Best Summer Outfits',
    'price': '\$900',
    'rating': '5.0',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        'https://4.imimg.com/data4/AA/HC/MY-26596027/men-s-fancy-t-shirt-500x500.jpg',
    'discount': ' -10%',
    'title': "Men's Fancy T-Shirt",
    'price': '\$100',
    'rating': '5.0',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/51uYVczAJaL._AC_UY350_.jpg",
    'discount': ' -20%',
    'title': 'T Shirts Women',
    'price': '\$200',
    'rating': '4.9',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        "https://static-01.daraz.com.np/p/e3b6b570d6424f41d8ade60ff5edcc71.jpg",
    'discount': ' -60%',
    'title': 'Coat & Pant For Women',
    'price': '\$999',
    'rating': '4.9',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        "https://images.unsplash.com/photo-1618886614638-80e3c103d31a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVuJTIwc3VpdHxlbnwwfHwwfHx8MA%3D%3D",
    'discount': ' -60%',
    'title': 'Coat & Pant For Men',
    'price': '\$999',
    'rating': '4.9',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        "https://images.bewakoof.com/utter/content/2835/content_biker_jacket_for_men_fashion_10.jpg",
    'discount': ' -20%',
    'title': ' Denim Jacket',
    'price': '\$899',
    'rating': '4.9',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
];

const trendingProducts = [
  {
    'image':
        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/51uYVczAJaL._AC_UY350_.jpg",
    'discount': ' -20%',
    'title': 'T Shirts Women',
    'price': '\$200',
    'rating': '4.9',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        "https://images.bewakoof.com/utter/content/2835/content_biker_jacket_for_men_fashion_10.jpg",
    'discount': ' -20%',
    'title': ' Denim Jacket',
    'price': '\$899',
    'rating': '4.9',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image': "https://i.ebayimg.com/images/g/Rg0AAOSwNjZgzHUA/s-l1200.webp",
    'discount': '35%',
    'title': 'Lehenga Choli',
    'price': '\$2000',
    'rating': '5.0',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        "https://hips.hearstapps.com/hmg-prod/images/winter-outfits-pop-of-color-1669664402.jpg?crop=0.425xw:0.798xh;0.253xw,0.202xh&resize=980:*",
    'discount': ' -40%',
    'title': 'Winter Jacket',
    'price': '\$900',
    'rating': '4.5',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
  {
    'image':
        "https://i0.wp.com/yarlmart.lk/wp-content/uploads/2021/09/Women-Summer-Dress-Cute-Loose-Striped-Print-Ruffles-Sleeves-Dresses-Elegant-A-Line-Patchwork-Beach-Party-4.jpg?fit=600%2C600&ssl=1",
    'discount': ' -24%',
    'title': 'Summer Dress',
    'price': '\$699',
    'rating': '5.0',
    'description':
        "Clothing is any item worn on the body. Typically, clothing is made of fabrics or textiles, but over time it has included garments made from animal skin and other thin sheets of materials and natural products found in the environment, put together. ",
  },
];
