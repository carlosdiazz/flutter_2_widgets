import 'package:flutter/material.dart';
import 'package:flutter_2_widgets/config/menu/menu_item.dart';
import 'package:flutter_2_widgets/presentation/screens/screen.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String name = "homeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter 2 Widgtes"),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) =>
          _CustomListTitle(menuItem: appMenuItems[index]),
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  final MenuItem menuItem;
  const _CustomListTitle({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(menuItem.title),
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      subtitle: Text(menuItem.subTitle),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      onTap: () {
        //context.push(menuItem.link);
        context.pushNamed(menuItem.name);
      },
    );
  }
}
