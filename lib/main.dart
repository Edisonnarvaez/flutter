import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galery Edison',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 16, 222, 230)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GALLERY'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Sección de Reptiles
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 2.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: reptileImages.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Lógica para la imagen de reptiles
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(imagePath: reptileImages[index]),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        reptileImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0), // Espaciado entre las secciones
            // Sección de Gatos
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 2.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: catImages.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Lógica para seccion de gatos
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(imagePath: catImages[index]),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        catImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> reptileImages = [
  'assets/image1.jpeg',
  'assets/image2.jpeg',
  'assets/image3.jpeg',
];

List<String> catImages = [
  'assets/cat1.jpeg',
  'assets/cat2.jpeg',
  'assets/cat3.jpeg',
];
