import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  String? title, image, price, rating, discount, description;
  DetailScreen({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
    required this.discount,
    required this.description,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedIndex = -1; //-1 means Default value, assume none is selected
  int selectedColorIndex = -1;
  // for sixe
  List<String> Size = ["XS", "M", "L", "XL", "XXL", "3XL"];
// for colors
  List<MaterialColor> colorItems = [
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.deepOrange,
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {},
            child: const Text("Add to Cart",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.white))),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                // For image
                Container(
                  height: h / 2,
                  width: w / 1.01,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      image: DecorationImage(
                          image: NetworkImage(
                            widget.image!,
                          ),
                          fit: BoxFit.cover)),
                ),
                // For back barrow
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Positioned(
                      child: Icon(
                    Icons.arrow_back_rounded,
                    size: 25,
                  )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Items Names
                  Text(
                    widget.title!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                    ),
                  ),
                  Row(
                    children: [
                      // For Items price
                      Text(
                        widget.price!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      const SizedBox(
                        width: 15,
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
                            style: const TextStyle(
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // For Description
                  Text(
                    widget.description!,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // FOR SIZE
                  selectSize(w),
                  // FOR COLORS
                  Row(
                    children: [
                      const Text(
                        "Available color",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                        width: w / 1.75,
                        child: Center(
                          child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemCount: colorItems.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedColorIndex = index;
                                      });
                                    },
                                    child: Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: selectedColorIndex == index
                                            ? Colors.blue[300]
                                            : Colors.white,
                                      ),
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: colorItems[index],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  Row selectSize(double w) {
    return Row(
      children: [
        const Text(
          "Size",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 50,
          width: w / 1.34,
          child: Center(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: Size.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black54,
                          backgroundColor: selectedIndex == index
                              ? Colors.blue[300]
                              : Colors.white,
                        ),
                        child: Text(
                          Size[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  );
                }),
          ),
        )
      ],
    );
  }
}
