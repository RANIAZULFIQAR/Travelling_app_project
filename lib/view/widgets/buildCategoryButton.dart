import 'package:flutter/material.dart';

Widget buildCategoryButton(BuildContext context, String title, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFFF3F8FE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.white, width: 2),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    ),
  );
}