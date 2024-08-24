import 'package:flutter/material.dart';
class cardevery {
  Widget caevery(String imag){
  
      return  Card(
      color: Colors.white,
      elevation: 10,
      child: Container(
        height: 145,
        child: Image.asset(imag),
      ),
    );
    
  }

}