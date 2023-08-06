import 'package:flutter/material.dart';
import 'package:flutter_2_widgets/config/menu/menu_item.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key, required this.scaffoldkey});
  final GlobalKey<ScaffoldState> scaffoldkey;
  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          navDrawerIndex = value;
          final menuItem = appMenuItems[value].link;
          context.push(menuItem);
          widget.scaffoldkey.currentState?.closeDrawer();
          setState(() {});
        },
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 5 : 20, 16, 10),
            child: const Text("Main"),
          ),
          //  NavigationDrawerDestination(
          //    icon: const Icon(Icons.add),
          //    label: const Text("Home Screen"),
          //  ),
          //  NavigationDrawerDestination(
          //    icon: const Icon(Icons.add),
          //    label: const Text("Home Screen 2"),
          //  )
          ...appMenuItems.sublist(0, 3).map(
                (menuItem) => NavigationDrawerDestination(
                  icon: Icon(menuItem.icon),
                  label: Text(menuItem.title),
                ),
              ),
          Divider(),
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 5 : 20, 16, 10),
            child: const Text("Mas opciones"),
          ),
          ...appMenuItems.sublist(3).map(
                (menuItem) => NavigationDrawerDestination(
                  icon: Icon(menuItem.icon),
                  label: Text(menuItem.title),
                ),
              ),
        ]);
  }
}
