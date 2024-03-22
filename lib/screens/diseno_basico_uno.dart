import 'package:flutter/material.dart';

class DisenoScreen extends StatelessWidget {
  const DisenoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(image: AssetImage('assets/fondo.jpg')),
        const Title(),
        const ButtonSeccion(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text('Reprehenderit occaecat Lorem do labore deserunt cillum non enim cillum ex fugiat magna. Dolore pariatur ut veniam incididunt elit consectetur sint et quis. Tempor est enim cillum incididunt laborum labore tempor consequat dolor voluptate.'),
        )
      ],
    )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Deschinen Lake Campround', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Kandersting, Switzerland', style: TextStyle(color: Colors.black45),),
          ],
        ),
        Expanded(child: Container()),
        const Icon(Icons.star, color: Colors.red,),
        const Text('41'),
      ],),
    );
  }
}

class ButtonSeccion extends StatelessWidget {
  const ButtonSeccion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: const [
              Icon(Icons.call, color: Colors.blue,),
              SizedBox(height: 10),
              Text('CALL', style: TextStyle(color: Colors.lightBlue),),
            ],
          ),
        ),
        const SizedBox(width: 50,),
        Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.send_rounded, color: Colors.blue,),
              SizedBox(height: 10,),
              Text('ROUTE', style: TextStyle(color: Colors.lightBlue),),
            ],
          ),
        ),
        const SizedBox(width: 50,),
        Container( 
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.share, color: Colors.blue,),
              SizedBox(height: 10,),
              Text('SHARE', style: TextStyle(color: Colors.lightBlue),),
            ],
          ),
        ),
      ],
    );
  }
}