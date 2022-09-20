// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:tutorial/first.dart';
//
// class NextButton extends StatefulWidget {
//   NextButton({Key? key, required final onTap,}) : super(key: key);
//   var onTap ;
//   @override
//   State<NextButton> createState() => _NextButtonState();
// }
//
// class _NextButtonState extends State<NextButton> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: TextButton(
//           onPressed: (){
//             // onTap();
//             // Navigator.push(context, MaterialPageRoute(builder: (context)=>onTap()));
//           },
//           child: Text("Next")
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

TextButton NextButton(BuildContext context,onTap){
  return TextButton(
      onPressed: (){
        onTap();
      },
      child: Text("Next")
  );
}