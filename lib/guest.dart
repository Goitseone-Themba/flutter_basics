import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi, Jonathan'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Home'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Category'),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red, // Background color
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0), // Padding
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Let\'s go shopping'),
                    Slider(
                      value: 0.5, // Initial slider value
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('24% off shipping today'),
                  Text('on bag purchases'),
                ],
              ),
              Text('By Kutuku Store'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New Arrivals'),
                  TextButton(
                    onPressed: () {},
                    child: Text('See All'),
                  ),
                ],
              ),
              // Replace with your product list widget (e.g., ListView.builder)
              Container(
                height: 200.0, // Placeholder height for product list
                child: Text('Product List'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.shopping_cart),
                  Icon(Icons.favorite),
                  Icon(Icons.person),
                ],
              ),
            ],
          ),
          Positioned( // Position bottom navigation bar
            bottom: 0.0,
            child: Container(
              color: Colors.black,
              child: Icon(Icons.favorite),
            ),
          ),
        ],
      ),
    );
  }
}
