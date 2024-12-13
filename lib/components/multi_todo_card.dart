import 'package:flutter/material.dart';

class MultiTodoCard extends StatefulWidget {
  const MultiTodoCard({super.key});

  @override
  State<MultiTodoCard> createState() => _MultiTodoCardState();
}

class _MultiTodoCardState extends State<MultiTodoCard> {

  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 12.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
              left: 16.0,
            ),
            child: Row(
              children: [
                Text(
                  '집 정리',
                  style: TextStyle(
                    fontSize: 16.0,
                    overflow: TextOverflow.ellipsis,
                    color: _isChecked1 && _isChecked2 && _isChecked3 ? Colors.grey[600] : Colors.black87,
                    decoration: _isChecked1 && _isChecked2 && _isChecked3 ? TextDecoration.lineThrough : null,
                  ),
                ),
              ],
            ),
          ),
          _renderTodo(
            isChecked: _isChecked1,
            text: '화장실 청소',
            onChanged: (value) {
              setState(() {
                _isChecked1 = value;
              });
            },
          ),
          _renderTodo(
            isChecked: _isChecked2,
            text: '빨래',
            onChanged: (value) {
              setState(() {
                _isChecked2 = value;
              });
            },
          ),
          _renderTodo(
            isChecked: _isChecked3,
            text: '분리수거',
            onChanged: (value) {
              setState(() {
                _isChecked3 = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _renderTodo({
    required bool isChecked,
    required String text,
    required ValueChanged onChanged
  }) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          side: const BorderSide(
            color: Colors.orange,
          ),
          activeColor: Colors.orange,
          checkColor: Colors.white,
          onChanged: onChanged,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 14.0,
            overflow: TextOverflow.ellipsis,
            color: isChecked ? Colors.grey[600] : Colors.black87,
            fontWeight: FontWeight.w500,
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
      ],
    );
  }

}
