import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> myProducts = [
    {
      "name": "Shoes",
      "price": 5000,
    },
    {
      "name": "Pants",
      "price": 2000,
    },
    {
      "name": "Book",
      "price": 200,
    },
    {
      "name": "Lamp",
      "price": 800,
    },
    {
      "name": "Fan",
      "price": 1200,
    },
    {
      "name": "Shirt",
      "price": 1500,
    },
    {
      "name": "Mobile",
      "price": 12000,
    },
    {
      "name": "Laptop",
      "price": 60000,
    },
    {
      "name": "Headset",
      "price": 1600,
    }
  ].obs;

  sortInAscending() {
    myProducts.sort((a, b) => a["price"].compareTo(b["price"]));
  }

  sortInDescending() {
    myProducts.sort((a, b) => b["price"].compareTo(a["price"]));
  }
}
