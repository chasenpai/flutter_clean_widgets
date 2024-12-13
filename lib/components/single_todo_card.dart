import 'package:flutter/material.dart';

class SingleTodoCard extends StatefulWidget {
  const SingleTodoCard({super.key});

  @override
  State<SingleTodoCard> createState() => _SingleTodoCardState();
}

class _SingleTodoCardState extends State<SingleTodoCard> {

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 4.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.orange,
              ),
            ),
            const SizedBox(width: 12.0,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '이벤트',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 2.0,),
                  Text(
                    '12.13.금 17:00',
                    style: TextStyle(
                      fontSize: 14.0,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12.0,),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
              child: Icon(
                Icons.check,
                color: _isChecked ? Colors.orange : Colors.grey[300],
                size: 28.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
