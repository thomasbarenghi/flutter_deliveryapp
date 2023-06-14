import 'package:flutter/material.dart';

class NavigationBarComponent extends StatelessWidget {
  final List<NavigationDestination> destinations;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  const NavigationBarComponent({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.blue,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      destinations: destinations
          .map((destination) => NavigationDestination(
                icon: destination.icon,
                label: destination.label,
                selectedIcon: destination.selectedIcon,

              ))
          .toList(),
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
    );
  }
}
