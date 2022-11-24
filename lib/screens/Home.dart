// ignore: file_names
import 'package:flutter/material.dart';
import 'package:practice/utils/MyRoutes.dart';
import 'package:practice/widgets/HomeOption.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "stitch it",
                        style: TextStyle(color: Colors.orange[800]),
                      ),
                      const Text(
                        "Hey Asad",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 28),
                      )
                    ],
                  ),
                  const Icon(Icons.person, size: 30)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeOption(
                    title: "Awaiting Orders.",
                    detail: "See orders which are not confirmed yet.",
                    colorName: (Colors.pink[200])!,
                    count: 3,
                  ),
                  HomeOption(
                    colorName: (Colors.blue[200])!,
                    title: "Getting Stitched.",
                    detail: "See orders which are in progress.",
                    count: 2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeOption(
                    colorName: (Colors.orange[200])!,
                    title: "Favourite Tailors.",
                    detail: "View and add tailors to your quick list.",
                    count: 0,
                  ),
                  HomeOption(
                    colorName: (Colors.greenAccent[200])!,
                    title: "Your Size Presets.",
                    detail: "Add or update your size presets.",
                    count: 0,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 64,
              child: ElevatedButton(
                // ignore: avoid_print
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.OrderStart);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Create New Order"),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.fire_truck), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "")
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrange,
        onTap: (value) => setState(() {
          _selectedIndex = value;
        }),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
