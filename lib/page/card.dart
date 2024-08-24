import 'package:flutter/material.dart';
class card {
  Widget ca(String ass,String text){
    return Card(
      color: Colors.white,
      elevation: 10,
      child: Container(
        height: 145,
        child: Column(
          children: [
            Image.asset(ass,cacheHeight: 90,),
            Spacer(),
            Container(
              alignment: Alignment.center,
              height: 25,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 12),),
            ),
            Spacer(),
            
          ],
        ),
      ),
    );
  }

}