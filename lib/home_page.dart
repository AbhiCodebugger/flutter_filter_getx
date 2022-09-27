import 'package:flutter/material.dart';
import 'package:flutter_sorting_list/controller/home_controller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put<HomeController>(HomeController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Flutter Filter',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.green),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    controller.sortInAscending();
                  },
                  icon: const Icon(Icons.arrow_downward),
                  color: Colors.white,
                  iconSize: 50,
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    controller.sortInDescending();
                  },
                  icon: const Icon(Icons.arrow_upward),
                  color: Colors.white,
                  iconSize: 50,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Obx(
              () => Expanded(
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  scrollDirection: Axis.vertical,
                  children: controller.myProducts
                      .map((e) => Card(
                            color: Colors.greenAccent.withOpacity(0.3),
                            elevation: 2.0,
                            child: ListTile(
                              title: Text(
                                e['name'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              trailing: Text(
                                "₹${e['price'].toString()}",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
