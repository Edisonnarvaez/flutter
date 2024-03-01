import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String imagePath;

  const DetailPage({Key? key, required this.imagePath}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la Imagen'),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
