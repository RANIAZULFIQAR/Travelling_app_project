import 'package:flutter/material.dart';

ElevatedButton customBtn(
    {String? text, VoidCallback? onPressed, Color? color}) {
  return ElevatedButton(
    onPressed: onPressed ?? () {},
    style: ElevatedButton.styleFrom(
        minimumSize: const Size(300, 50),
        backgroundColor: color ?? Colors.blue,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )),
    child: Text(
      text ?? "",
      style: const TextStyle(
        color: Colors.white,
      ),
    ), //text

  );
}//widget