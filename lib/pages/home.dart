import 'package:flutter/material.dart';
import 'package:delivery_app/components/navigation_bar.dart'
    as NavigationBarComponent;
import 'package:flutter/services.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  final List<NavigationDestination> destinations = [
    const NavigationDestination(
      icon: Icon(
        Icons.explore_outlined,
        color: Colors.red,
      ),
      label: 'Explore',
      selectedIcon: Icon(
        Icons.explore,
        color: Colors.red,
      ),
    ),
    const NavigationDestination(
      selectedIcon: Icon(
        Icons.person,
        color: Colors.red,
      ),
      icon: Icon(
        Icons.person_2_outlined,
        color: Colors.red,
      ),
      label: 'Profile',
    ),
    const NavigationDestination(
      icon: Icon(
        Icons.chat_bubble_outline,
        color: Colors.red,
      ),
      label: 'Commute',
      selectedIcon: Icon(
        Icons.chat_bubble,
        color: Colors.red,
      ),
    ),
    const NavigationDestination(
      icon: Icon(
        Icons.notifications_outlined,
        color: Colors.red,
      ),
      label: 'Commute',
      selectedIcon: Icon(
        Icons.notifications,
        color: Colors.red,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appbar color blanco
        backgroundColor: Colors.white,

        //texto color rojo
        foregroundColor: Colors.red,
        //system status bar color
        //hacemos que la appbar sea large
        toolbarHeight: 70,

        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/logo.png',
              fit: BoxFit.contain,
              height: 20,
            ),
            /*           Container(
                padding: const EdgeInsets.all(8.0), child: const Text('YourAppTitle'))
          */
          ],
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: <Widget>[
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  // Alineamos el texto al inicio
                  alignment: Alignment.topLeft,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        // O Expanded
                        child: Text.rich(
                          TextSpan(
                            text: 'Toma una reserva y comienza a ',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 32,
                                color: Colors.black,
                                letterSpacing: -1.0),
                            children: [
                              TextSpan(
                                text: 'ganar dinero.',
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: const Text('Page 2'),
                ),
                Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text('Page 3'),
                ),
                Container(
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: const Text('Page 4'),
                ),
              ][currentPageIndex],
            ),
          ),
          NavigationBarComponent.NavigationBarComponent(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: destinations,
          ),
        ],
      ),
    );
  }
}
