import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,  required this.hintText, required this.suffixIcon, required this.controller});
  final String hintText ;
  final Widget suffixIcon;
   final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
      child: TextField( controller: controller,
         decoration: InputDecoration(
           fillColor:Colors.white ,
           filled: true ,
           hintText: hintText,
           hintStyle: TextStyle(color:Colors.grey[400],fontSize: 15),
           suffixIcon: suffixIcon,
           enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30.0),
               borderSide: const BorderSide(width: 0.5,)),
           focusedBorder:OutlineInputBorder(
               borderRadius: BorderRadius.circular(30.0),
               borderSide: const BorderSide(width: 1.0,color: Colors.blue)) ,
           border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30.0),
               borderSide: const BorderSide(width: 0.5)),


         ),
      ),
    );
  }
}
