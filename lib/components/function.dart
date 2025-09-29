import 'package:e_commerce_app/controller/cart_controller.dart';
import 'package:e_commerce_app/controller/usersearch_controller.dart';
import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:e_commerce_app/views/products_details.dart';
import 'package:e_commerce_app/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/login_screens/color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:e_commerce_app/views/order_history_page.dart';

CartController cartController = Get.put(CartController());

Container welcomePageIcon() {
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(color: color1, shape: BoxShape.circle),
    child: Icon(Icons.eco, color: Colors.white),
  );
}

Row welcomePageIcons(String text, IconData iconData, Color iconColor) {
  return Row(
    children: [
      Icon(iconData, color: iconColor, size: 30),
      SizedBox(width: 30),
      Text(text, style: TextStyle(color: color3)),
    ],
  );
}

Widget productCard(
  BuildContext context,
  ProductModel product, {
  required String imagePath,
  required String nameProduct,
  required String price,
  required String piceis,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => ProductDetailsPage(product: product)),
      );
    },
    child: Padding(
      padding: EdgeInsets.only(right: 8.0, left: 8.0),
      child: Container(
        width: 175,
        height: 230,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 15,
              offset: Offset(0, 10),
            ),
          ],
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(imagePath, height: 80)),
            SizedBox(height: 8),
            Text(
              nameProduct,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(piceis),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    cartController.removeFromCart(product);
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: color2,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  icon: Icon(Icons.add, size: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

final List<String> bannerImages = [
  'assets/vegitable_banner.png',
  'assets/fruit_banner.png',
  'assets/chiken_banner.png',
];

CarouselSlider imageSliderHome() {
  return CarouselSlider(
    options: CarouselOptions(
      height: 128,
      autoPlay: true,
      enlargeCenterPage: true,
      viewportFraction: 0.9,
      autoPlayInterval: Duration(seconds: 2),
    ),
    items:
        bannerImages.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              );
            },
          );
        }).toList(),
  );
}

Container cardHome(String text, String imagePath, Color color) {
  return Container(
    padding: EdgeInsets.all(15),
    width: 230,
    height: 90,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        Image.asset(imagePath),
        SizedBox(width: 20),
        Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

GestureDetector exploreCard({
  required String imagePath,
  required String text1,
  required String text2,
  required Color color1,
  required Color color2,
}) {
  return GestureDetector(
    onTap: () {
      // Navigator.push(context, )
    },
    child: Container(
      width: 165,
      height: 200,
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              imagePath,
              height: 120,
              width: 120,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 5),
          Text(
            text1,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            text2,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

GestureDetector orderDetails(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OrderHistoryPage()),
      );
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Order Confirmed ',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text('Fed 22 2024', style: TextStyle(color: Colors.grey)),
      ],
    ),
  );
}

Container orderHistoryCard(Icon icon) {
  return Container(
    width: double.infinity,
    height: 110,
    padding: EdgeInsets.all(7),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 95,
          height: 95,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 175, 58, 0.196),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(child: icon),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Confirmed',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('Order id : 235454645', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 5),
            Text('Items (7)', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    ),
  );
}

Row accountProfile(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profile()),
          );
        },
        child: CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("assets/profile_pic.png"),
        ),
      ),
      SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "Owais Raza",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 4),
              Icon(Icons.edit, size: 16, color: Colors.green),
            ],
          ),
          SizedBox(height: 4),
          Text(
            "Owaisraza55670@gmail.com",
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
        ],
      ),
    ],
  );
}

Row profile({required String text, required Icon icon}) {
  return Row(
    children: [
      Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Color.fromARGB(67, 76, 175, 79),
          borderRadius: BorderRadius.circular(10),
        ),
        child: icon,
      ),
      SizedBox(width: 15),
      Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
    ],
  );
}

Row bottomSheetRow({required String text1, required String text2}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text1, style: TextStyle(color: Colors.grey)),
      Row(
        children: [
          Text(text2, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 5),
          Icon(Icons.arrow_forward_ios_rounded, size: 18),
        ],
      ),
    ],
  );
}

Container productDetailsImage(ProductModel product) {
  return Container(
    height: 300,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      color: const Color.fromARGB(55, 158, 158, 158),
    ),
    child: Image.asset(
      product.image,
      height: 500,
      width: 500,
      fit: BoxFit.contain,
    ),
  );
}

final UsersearchController searchCtrl = Get.put(UsersearchController());

SizedBox serchPageSearchBar() {
  return SizedBox(
    height: 55,
    width: double.infinity,
    child: TextField(
      onChanged: (value) => searchCtrl.search(value),
      cursorColor: Colors.grey,
      style: TextStyle(fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        hintText: 'Search Type',
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(Icons.search),
        filled: true, // Fill karne ke liye true karna zaroori hai
        fillColor: Color.fromRGBO(242, 243, 242, 1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    ),
  );
}
