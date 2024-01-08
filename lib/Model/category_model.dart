class CategoriesModel {
  String image;
  String title;

  CategoriesModel({required this.image, required this.title});
}

// I have already create this mode you can easy create this
// source code is in description
List<CategoriesModel> categoriesModel = [
  CategoriesModel(
    image: "images/all.png",
    title: "All Items",
  ),
  CategoriesModel(
    image: "images/watch.png",
    title: "Watch",
  ),
  CategoriesModel(
    image: "images/shoes.png",
    title: "Shoes",
  ),
  CategoriesModel(
    image: "images/men.png",
    title: "Men",
  ),
  CategoriesModel(
    image: "images/women.png",
    title: "Women",
  ),
];
