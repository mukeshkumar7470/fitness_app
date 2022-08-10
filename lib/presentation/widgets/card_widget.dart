import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String? image, title;
  var onTap;
  CardWidget({
    Key? key,
    required this.onTap,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
                height: 150.0,
                width: 130.0,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title!,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
