// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                  const FaIcon(FontAwesomeIcons.circleUser)
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
                  Navigator.pushNamed(context, MyRoutes.OrderPage);
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Create New Order",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 28,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house), label: ""),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.magnifyingGlass), label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.truck), label: ""),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.user), label: "")
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
