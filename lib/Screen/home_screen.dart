import 'package:e_commerce_app/Model/products_model.dart';
import 'package:e_commerce_app/Screen/detail_screen.dart';
import 'package:e_commerce_app/components/category_selection.dart';
import 'package:e_commerce_app/components/product_items.dart';
import 'package:e_commerce_app/components/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SingleChildScrollView(
        child: SafeArea(
            top: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // For search bar
                const TopSearchBar(),
                // For Category Selection
                const CategorySelection(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      ...ourProducts.map((e) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                        title: e['title'].toString(),
                                        image: e['image'].toString(),
                                        price: e['price'].toString(),
                                        rating: e['rating'].toString(),
                                        discount: e['discount'].toString(),
                                        description:
                                            e['description'].toString(),
                                      )));
                            },
                            child: ProductsItems(
                                title: e['title'].toString(),
                                image: e['image'].toString(),
                                price: e['price'].toString(),
                                rating: e['rating'].toString(),
                                discount: e['discount'].toString()),
                          )),
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 18.0, top: 20),
                  child: Text(
                    "Trending Product's",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      ...trendingProducts.map((e) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                        title: e['title'].toString(),
                                        image: e['image'].toString(),
                                        price: e['price'].toString(),
                                        rating: e['rating'].toString(),
                                        discount: e['discount'].toString(),
                                        description:
                                            e['description'].toString(),
                                      )));
                            },
                            child: ProductsItems(
                                title: e['title'].toString(),
                                image: e['image'].toString(),
                                price: e['price'].toString(),
                                rating: e['rating'].toString(),
                                discount: e['discount'].toString()),
                          )),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
