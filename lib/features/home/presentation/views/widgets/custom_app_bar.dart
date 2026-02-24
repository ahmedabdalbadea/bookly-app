import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.logo,
    required this.icon,
    required this.onPressed,
  });
  final String logo;
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Image.asset(logo, height: 18),
          const Spacer(),
          IconButton(onPressed: onPressed, icon: FaIcon(icon, size: 22)),
        ],
      ),
    );
  }
}
