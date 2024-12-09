import 'package:flutter/material.dart';

class InformationBar extends StatelessWidget {
  const InformationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.orange,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '새로운 기능을 이용해 보세요.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            IconButton(
              onPressed: () {

              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
