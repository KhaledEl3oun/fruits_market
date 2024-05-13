
import 'package:flutter/material.dart';

pushReplaceMent(BuildContext context, Widget route){
   Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => route,
      ));
 }


push(BuildContext context, Widget route){
   Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => route,
      ));
 }