import 'package:flutter/material.dart';

class RegularChip extends StatelessWidget {
  const RegularChip({
    super.key,
    required this.content,
    required this.onTap,
    required this.isSelected,
  });

  final bool isSelected;
  final String content;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: isSelected ? 0 : 1.5),
          borderRadius: BorderRadius.circular(50),
          color: isSelected
              ? Colors.blueGrey.withOpacity(0.5)
              : Colors.lightBlueAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            content,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
