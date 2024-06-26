// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:api_task_interview/controller/home_screen_controller.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    fetchingData();
    super.initState();
  }

  Future<void> fetchingData() async {
    await Provider.of<HomeScreenController>(context, listen: false).getData();
  }

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeScreenController>(context);
    // final imgUrl = "https://mansharcart.com/image/";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
          child: Text(
            "Products",
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 3,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 6, color: Colors.grey)],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://mansharcart.com/image/cache/catalog/0__1/MYFB_Al-Mousoohathu-Al-Yoosafiya-Fi-Bayaan-Adillat-Al-Soofiyat_back-copy-scaled-250x250.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.grey),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                homeState.product?.id ?? "",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(homeState.product?.description ?? "",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.purple))
            ],
          ),
        ),
      ),
    );
  }
}
