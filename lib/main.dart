import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
  Property(title: "3 bedrooms Gwest", details: "A 3 bedroomed house in Gwest", price: 500000),
  Property(title: "4 bedrooms Gwest", details: "A 4 bedroomed house in Gwest", price: 800000),
  Property(title: "3 bedrooms Ext", details: "A 3 bedroomed house in Ext", price: 600000),
];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Hi, Jonathan"),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white24,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("this row")],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("That row")],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //           Text("This other row"),
                  //   ],
                  // ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: 300.0,
                          child: ListView.builder(
                            itemCount: properties.length,
                            itemBuilder: (BuildContext pcontext, int index) {
                              return Card(
                                child: const ListTile(
                                  leading: FlutterLogo(
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
