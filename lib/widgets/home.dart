import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Material(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
              top: 24,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.menu,
                    color: Color(0xFFFF5A5F),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Image.asset('assets/images/logo.png'),
                ),
                Stack(
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: Colors.grey[100],
                    )
                  ],
                ),
                const Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: Icon(
                    Icons.brightness_1,
                    size: 8,
                    color: Color(0xFFFF5A5F),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.all(20),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 0,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
