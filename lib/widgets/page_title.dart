import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
            Text('Transaccion segura',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Transaccion segura con una Categoria particular',style: TextStyle(color: Colors.white, fontSize: 16),),
          ],
        ),
      ),
    );
  }
}