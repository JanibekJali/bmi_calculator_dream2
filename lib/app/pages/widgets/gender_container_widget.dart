import 'package:flutter/material.dart';

class GenderContainerWidget extends StatelessWidget {
  const GenderContainerWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.tus,
  });
  final String title;
  final IconData icon;
  final Function()? onTap;
  final Color tus;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          color: tus,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 90,
              color: Color(0xffffffff),
            ),
            Text(
              title.toUpperCase(),
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
