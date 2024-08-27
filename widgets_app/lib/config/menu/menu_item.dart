import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Home',
    subTitle: 'Go to Home',
    link: '/',
    icon: Icons.home,
  ),
  MenuItem(
    title: 'About',
    subTitle: 'Go to About',
    link: '/about',
    icon: Icons.info,
  ),
  MenuItem(
    title: 'Contact',
    subTitle: 'Go to Contact',
    link: '/contact',
    icon: Icons.contact_mail,
  ),
];
