import 'package:flutter/material.dart';

import '../function/valid.dart';
import 'color.dart';
List<String> nameCategroty =[
  'Food',
  'Drink',
  'Vegetables',
  'Fruits',
  'Dessert',
  'Cake',
  'Snacks',
  'Meat'
];

Widget NameTFF(String name) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('$name',
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 18,
        color: mainColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}


TextFormField TFF({
  required IconData priIcon,
  required String name,
  required TextEditingController controller,
  required String? Function(String?)? validator,
  required TextInputType keyboardType,
  void Function(String)? onChanged

}) {
  return TextFormField(
    controller: controller,
    validator: validator,
    onChanged: onChanged ,
    keyboardType: keyboardType,
    inputFormatters: [NoSpaceTextInputFormatter()],
    decoration: InputDecoration(
        prefixIcon: Icon(priIcon,
          color: mainColor,),
        contentPadding: EdgeInsets.symmetric(vertical: 22,
            horizontal: 20),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                width: 3,
                color: mainColor
            )
        ),
        enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                width: 2,
                color: mainColor
            )
        ),
        hintText: '$name',
        hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.grey
        )
    ),
  );
}