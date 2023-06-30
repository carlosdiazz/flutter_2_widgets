import 'package:flutter/material.dart';
import 'package:flutter_2_widgets/presentation/screens/screen.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  final String name;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon,
      required this.name});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: "Botones",
      subTitle: "Varios Botones",
      link: "/buttons",
      icon: Icons.smart_button,
      name: ButtonsScreen.name),
  MenuItem(
      title: "Tarjertas",
      subTitle: "Varios Tarjertas",
      link: "/cards",
      icon: Icons.credit_card,
      name: CardsScreen.name),
  MenuItem(
      title: "Aniamted Screen",
      subTitle: "Varios Tarjertas",
      link: "/animated",
      icon: Icons.credit_card,
      name: AnimatedScreen.name),
  MenuItem(
      title: "AppTutoial",
      subTitle: "Varios Tarjertas",
      link: "/apptutotial",
      icon: Icons.credit_card,
      name: AppTutotialScreen.name),
  MenuItem(
      title: "InfiniteScreen",
      subTitle: "Varios Tarjertas",
      link: "/infinite",
      icon: Icons.credit_card,
      name: InfiniteScrollScreen.name),
  MenuItem(
      title: "ProgressScreen",
      subTitle: "Varios Tarjertas",
      link: "/progress",
      icon: Icons.credit_card,
      name: ProgreesScreen.name),
  MenuItem(
      title: "SnackBar",
      subTitle: "Varios Tarjertas",
      link: "/snack",
      icon: Icons.credit_card,
      name: SnackBarScreen.name),
  MenuItem(
      title: "Ui Controls",
      subTitle: "Varios Tarjertas",
      link: "/ui",
      icon: Icons.credit_card,
      name: UiControlsScreen.name),
];
