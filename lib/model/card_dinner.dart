class ModelDinner {
  String? image,
      title,
      category,
      id,
      distance,
      time,
      calorie,
      bidterakhir,
      harga;
  List<String>? directions, ingredient;
  num? rating;

  ModelDinner(
      {this.image,
      this.category,
      this.time,
      this.rating,
      this.calorie,
      this.directions,
      this.ingredient,
      this.title,
      this.id,
      this.harga,
      this.bidterakhir,
      this.distance});
}

List<ModelDinner> modelDinnerArray = [
  ModelDinner(
    id: "fdswse",
    image:
        "https://asset.kompas.com/crops/GLEzlpYDBpuZlbyBmoU2ELoiJRk=/0x0:1200x800/750x500/data/photo/2022/09/24/632eb007aea65.jpg",
    category: "6 Bid",
    title: "Iphone 14 ex mantan terindah",
    directions: [
      "dijual aja hadiah pemberian yang ga akan mau saya liat lagi ga boleh"
          "dibeli sama temen karena nanti ketemu lagi, kirim ditanggung pemenang."
          "yang menang juga boleh bonus kenalan"
    ],
    time: "0.14.0",
    harga: "Rp.2̶.̶5̶0̶0̶.̶0̶0̶0̶",
    bidterakhir: "Rp.2.500.000",
  ),
  ModelDinner(
      id: "fdsc31we",
      image:
          "https://www.harapanrakyat.com/wp-content/uploads/2022/03/MacBook-Air-M1-Laptop-Besutan-Apple-Membawa-Banyak-Kelebihan.jpg",
      category: "Bid Sekarang",
      title: "Macbook Pro 2021",
      time: "0.42.0",
      harga: "Rp.3.500.000",
      bidterakhir: "belum ada",
      directions: [
        "Edisi Terbatas Macbook pro M1 seri pertama. kondisi 70 % apa adanya tanpa box",
      ]),
  ModelDinner(
      id: "fdsgegwe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/fish-tacos-2.jpg?alt=media&token=64aab1e6-6ecf-4714-87de-ed6715197acc",
      category: "Bid Sekarang",
      title: "Fish Tacos",
      time: "0.30.0",
      rating: 4.3,
      calorie: "450 Cal",
      directions: [
        "To make beer batter: In a large bowl, combine flour, cornstarch, baking powder, and salt. Blend egg and beer, then quickly stir into the flour mixture (don't worry about a few lumps).",
        "To make white sauce: In a medium bowl, mix together yogurt and mayonnaise. Gradually stir in fresh lime juice until consistency is slightly runny. Season with jalapeno, capers, oregano, cumin, dill, and cayenne.",
        "Heat oil in deep-fryer to 375 degrees F (190 degrees C)."
      ],
      ingredient: [
        "1 cup all-purpose flour"
            "dibeli sama temen karena nanti ketemu lagi, kirim ditanggung pemenang."
      ],
      distance: "42 km"),
  ModelDinner(
      id: "fd432gdswe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(10).webp?alt=media&token=5abccdb1-88e4-4b56-ae2d-61b6b37ea16a",
      category: "Dinner",
      title: "Rosemary Ranch Chicken Kabobs",
      time: "0.20.0",
      rating: 4.3,
      calorie: "300 Cal",
      directions: [
        "In a medium bowl, stir together the olive oil, ranch dressing, Worcestershire sauce, rosemary, salt, lemon juice, white vinegar, pepper, and sugar. Let stand for 5 minutes. Place chicken in the bowl, and stir to coat with the marinade. Cover and refrigerate for 30 minutes.",
        "Preheat the grill for medium-high heat. Thread chicken onto skewers and discard marinade.",
        "Lightly oil the grill grate. Grill skewers for 8 to 12 minutes, or until the chicken is no longer pink in the center, and the juices run clear."
      ],
      ingredient: ["½ cup olive oil"],
      distance: "42 km"),
  ModelDinner(
      id: "fdgtr4swe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(2).webp?alt=media&token=be0aa823-0ab3-4f7e-9dbd-7329568ee2e0",
      category: "Dinner",
      title: "Juicy Roasted Chicken",
      time: "01.00.0",
      rating: 4.3,
      calorie: "200 Cal",
      directions: [
        "Preheat oven to 350 degrees F (175 degrees C).",
        "Place chicken in a roasting pan, and season generously inside and out with salt and pepper. Sprinkle inside and out with onion powder. Place 3 tablespoons margarine in the chicken cavity. Arrange dollops of the remaining margarine around the chicken's exterior. Cut the celery into 3 or 4 pieces, and place in the chicken cavity.",
        "Bake uncovered 1 hour and 15 minutes in the preheated oven, to a minimum internal temperature of 180 degrees F (82 degrees C). Remove from heat, and baste with melted margarine and drippings. Cover with aluminum foil, and allow to rest about 30 minutes before serving."
      ],
      ingredient: ["1 (3 pound) whole chicken, giblets removed"],
      distance: "42 km"),
];
