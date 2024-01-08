import 'package:e_commerce_app/Model/category_model.dart';
import 'package:flutter/material.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({super.key});

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Our products
        categorySelected(context),
        // sort by
        ourProduct()
      ],
    );
  }

  Padding ourProduct() {
    return Padding(
      padding: const EdgeInsets.only(top: 11.0, left: 20, right: 20),
      child: Row(
        children: [
          const Text(
            "Our Product's",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          Expanded(child: Container()),
          const Text(
            "Sort by",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 25,
          )
        ],
      ),
    );
  }

  SizedBox categorySelected(BuildContext context) {
    return SizedBox(
      height: 35,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: categoriesModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        selectedIndex == index
                            ? const BoxShadow(
                                color: Colors.black,
                                blurRadius: 9,
                                offset: Offset(1, 1))
                            : const BoxShadow()
                      ]),
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        categoriesModel[index].image,
                        fit: BoxFit.cover,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        categoriesModel[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: selectedIndex == index
                                ? Colors.red
                                : Colors.black,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
