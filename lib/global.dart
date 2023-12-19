import 'package:flutter/material.dart';

class Global {
  static double setwidth(context, double v) {
    return MediaQuery.of(context).size.width * v;
  }

  static double setheigth(context, double v) {
    return MediaQuery.of(context).size.width * v;
  }

  static Widget button(VoidCallback onPressed, String text) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: EdgeInsets.symmetric(
            horizontal: 140, vertical: 15), // Adjust the padding
        shape: RoundedRectangleBorder(),
      ),
    );
  }

  static CustomContainer(String text) {
    return Center(
      child: Container(
        width: 350,
        height: 40,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 25),
          ),
        ),
        padding: EdgeInsets.only(right: 20, left: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 242, 244, 242),
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Global.CustomColor(), width: 2)),
      ),
    );
  }

  static Color CustomColor() {
    return Colors.lightBlue;
  }

  static Widget customTextField(TextEditingController cname, String labeltext,
      String hinttext, bool isObscure, Icon type) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          controller: cname,
          obscureText: isObscure,
          decoration: InputDecoration(
            labelText: labeltext,
            suffixIcon: type,
            labelStyle: TextStyle(color: Colors.black),
            fillColor: Color.fromARGB(255, 211, 201, 201),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(30),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ));
  }
}

//  static Widget customtextfield(
//   String label,TextEditingController controller, String ,
//    ) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextStyle(color: Colors.black, fontSize: 12.0),
//         ),
//         SizedBox(height: 5),
//         TextField(
//           controller: controller,
//           keyboardType: keyboardType,
//           maxLength: maxLength,
//           inputFormatters: inputFormatters,
//           onChanged: onChanged,
//           maxLines: maxLines ?? 1,
//           obscureText: obscureText ?? false,
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 12.0,
//             fontWeight: FontWeight.w500,
//             letterSpacing: letterSpacing,
//             fontFamily: 'Medium',
//           ),
//           decoration: InputDecoration(
//             counter: SizedBox(),
//             contentPadding: contentPadding ??
//                 EdgeInsets.only(top: 17, bottom: 17, left: 10, right: 10),
//             hintText: hintText,
//             hintStyle: TextStyle(
//               color: Colors.grey,
//               fontSize: 12.0,
//               fontFamily: 'Medium',
//             ),
//             suffixIcon: suffixIcon,
//             prefixIcon: prefixIcon,
//             filled: true,
//             fillColor: Colors.white,
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(11),
//               borderSide: BorderSide(width: 1, color: Colors.blue),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(11),
//               borderSide: BorderSide(width: 1, color: Colors.blue),
//             ),
//           ),
//         ),
//       ],
//     );}}