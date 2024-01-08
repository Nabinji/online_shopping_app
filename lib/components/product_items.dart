import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductsItems extends StatefulWidget {
  String? title, image, price, rating, discount;
  ProductsItems({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
    required this.discount,
  });

  @override
  State<ProductsItems> createState() => _ProductsItemsState();
}

class _ProductsItemsState extends State<ProductsItems> {
  bool isLovedPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // For Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.image!,
                    height: 200,
                    fit: BoxFit.cover,
                  ), // this image can't be null
                ),
                // For Favorite
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1000)),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isLovedPressed = !isLovedPressed;
                        });
                      },
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: isLovedPressed ? Colors.red : Colors.black38,
                      ),
                    ),
                  ),
                ),
                // For Discount
                Positioned(
                  top: 1,
                  right: 3,
                  child: Container(
                    width: 30,
                    height: 15,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(60))),
                    child: Text(
                      widget.discount!,
                      style: const TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            // For items name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                widget.title!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // For Items price
                Text(
                  widget.price!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                // Items Rate
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber,
                    ),
                    Text(
                      widget.rating!,
                      style: const TextStyle(color: Colors.amber),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
