import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_basics/guest.dart';

void main() {
  runApp(HomePage());
}

class Property {
  final String title;
  final String details;
  final int price;

  Property({required this.title, required this.details, required this.price});
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Property> properties = [
    Property(
        title: "3 bedrooms Gwest",
        details: "A 3 bedroomed house in Gwest",
        price: 500000),
    Property(
        title: "4 bedrooms Gwest",
        details: "A 4 bedroomed house in Gwest",
        price: 800000),
    Property(
        title: "3 bedrooms Ext",
        details: "A 3 bedroomed house in Ext",
        price: 600000),
    Property(
        title: "3 bedrooms Ext",
        details: "A 3 bedroomed house in Ext",
        price: 600000),
    Property(
        title: "3 bedrooms Ext",
        details: "A 3 bedroomed house in Ext",
        price: 600000),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 150, 222, 255),
          title: const Text("Hi, Jonathan"),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white24,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("this row"),
                        ImageSlideshow(
                          width: double.infinity,
                          height: 200,
                          initialPage: 0,
                          indicatorColor:
                              const Color.fromARGB(255, 150, 222, 255),
                          indicatorBackgroundColor: Colors.blueGrey,
                          children: [
                            Image.asset(
                              '../assets/House1.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("New Listings"), Text("View all")],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height: 400.0,
                            child: ListView.builder(
                              itemCount: properties.length,
                              itemBuilder: (BuildContext pcontext, int index) {
                                return Card(
                                  child: ListTile(
                                    leading: const FlutterLogo(
                                      size: 25.0,
                                    ),
                                    title: Text(properties[index].title),
                                    subtitle: Text(properties[index].details),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
