import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currículum Vitae',
      home: CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            // Columna izquierda (Contacto, Habilidades, Educación)
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Imagen cuadrada encima de Contacto
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage('assets/profile_square.jpg'), // Cambia por la imagen deseada
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Section(title: 'CONTACTO'),
                    ContactInfo(),
                    SizedBox(height: 40), // Espacio mayor aquí
                    Section(title: 'HABILIDADES'),
                    Skills(),
                    SizedBox(height: 40), // Espacio mayor aquí
                    Section(title: 'EDUCACIÓN'),
                    Education(),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            // Línea vertical
            Container(
              width: 2,
              color: Color(0xFF6A5ACD), // Color de la línea
              height: MediaQuery.of(context).size.height - 40, // Ajusta la altura
            ),
            SizedBox(width: 20),
            // Columna derecha (Nombre, Acerca de mí, Experiencia laboral)
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Color(0xFFF5F5F5), // Color de fondo de la columna derecha
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mariana Napolitani',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF6A5ACD)),
                    ),
                    SizedBox(height: 20),
                    Section(title: 'ACERCA DE MÍ'),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 40), // Espacio mayor aquí
                    Section(title: 'EXPERIENCIA LABORAL'),
                    WorkExperience(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;

  Section({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF6A5ACD)),
    );
  }
}

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 4), // Espacio adicional para equilibrio
        Text('📞 (55) 1234-5678'),
        Text('✉️ hello@silicontic.com'),
        Text('🌐 www.siliconticible.com'),
      ],
    );
  }
}

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Liderazgo'),
        Text('• Comunicación asertiva'),
        Text('• Resolución de problemas'),
        Text('• Trabajo en equipo'),
      ],
    );
  }
}

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Carrera en Mercadotecnia Universitaria\n  2010-2014\n  Universidad de la Ciudad'),
        SizedBox(height: 10), // Espacio entre las dos entradas
        Text('• Certificado en Marketing Digital\n  2014-2016\n  Instituto de Marketing'),
      ],
    );
  }
}
class WorkExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Agencia de Marketing Digital\n  2010-2012\n  - Encargada de proyectos de marketing digital.'),
        SizedBox(height: 10), // Espacio entre entradas
        Text('• Coordinadora de Marketing Digital\n  2014-2020\n  - Lideré un equipo de marketing digital para varias campañas.'),
      ],
    );
  }
}
