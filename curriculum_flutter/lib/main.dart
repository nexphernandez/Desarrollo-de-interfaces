import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currículum Vitae',
      debugShowCheckedModeBanner: false,
      home: CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Columna izquierda (Morada) - 33% del ancho
          Expanded(
            flex: 33,
            child: Container(
              color: Color(0xFFB4A5D5).withOpacity(0.40),
              padding: EdgeInsets.fromLTRB(35, 50, 35, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Imagen de perfil
                  Center(
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        // Ya no usamos borderRadius en el contenedor exterior, para que el marco sea cuadrado
                      ),
                      child: Container(
                        padding: EdgeInsets.all(
                          5,
                        ), // Espacio entre la imagen y el borde
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF7B68B8), // El color del borde
                            width: 3, // El grosor del borde
                          ),
                        ),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/profile.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(
                                Icons.person,
                                size: 200,
                                color: Colors.white.withOpacity(0.6),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),



                  SizedBox(height: 25),

                  // CONTACTO
                  SectionTitle(title: 'C O N T A C T O'),
                  SizedBox(height: 18),
                  ContactItem(icon: Icons.phone, text: '(55) 1234-5678'),
                  SizedBox(height: 8),
                  ContactItem(
                    icon: Icons.email,
                    text: 'hola@sitioincreible.com',
                  ),
                  SizedBox(height: 8),
                  ContactItem(
                    icon: Icons.language,
                    text: 'www.sitioincreible.com',
                  ),

                  SizedBox(height: 30),

                  // Línea divisoria
                  Container(height: 1.5, color: Colors.white.withOpacity(0.4)),

                  SizedBox(height: 20),

                  // HABILIDADES
                  SectionTitle(title: 'H A B I L I D A D E S'),
                  SizedBox(height: 18),
                  SkillItem(text: 'Liderazgo'),
                  SizedBox(height: 6),
                  SkillItem(text: 'Comunicación asertiva'),
                  SizedBox(height: 6),
                  SkillItem(text: 'Gestión de activos'),
                  SizedBox(height: 6),
                  SkillItem(text: 'Resolución de problemas'),
                  SizedBox(height: 6),
                  SkillItem(text: 'Elaboración de reportes'),
                  SizedBox(height: 6),
                  SkillItem(text: 'Trabajo en equipo'),

                  SizedBox(height: 30),

                  // Línea divisoria
                  Container(height: 1.5, color: Colors.white.withOpacity(0.4)),

                  SizedBox(height: 20),

                  // EDUCACIÓN
                  SectionTitle(title: 'E D U C A C I Ó N'),
                  SizedBox(height: 18),
                  EducationItem(
                    title: 'Carrera en Mercadotecnia',
                    institution: 'Universidad Alta Pinta',
                    years: '2010-2014',
                  ),
                  SizedBox(height: 22),
                  EducationItem(
                    title: 'Diplomado en Publicidad',
                    institution: 'Universidad Alta Pinta',
                    years: '2014-2016',
                  ),
                ],
              ),
            ),
          ),

          // Columna derecha (Blanca) - 67% del ancho
          Expanded(
            flex: 67,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(50, 50, 50, 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nombre con fondo morado
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFB4A5D5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Napolitani',
                            style: TextStyle(
                              fontSize: 52,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF7B68B8),
                              height: 1.0,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            'Mariana',
                            style: TextStyle(
                              fontSize: 52,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF7B68B8),
                              height: 1.1,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 35),

                    SizedBox(height: 25),

                    // ACERCA DE MÍ
                    SectionTitleRight(title: 'A C E R C A  D E  M Í'),
                    SizedBox(height: 12),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla facilisi morbi tempus iaculis urna id volutpat lacus.',
                      style: TextStyle(
                        fontSize: 13.5,
                        height: 1.55,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(height: 30),

                    // Línea divisoria
                    Container(
                      height: 1.5,
                      color: Color(0xFFB4A5D5).withOpacity(0.3),
                    ),

                    SizedBox(height: 25),

                    // EXPERIENCIA LABORAL
                    SectionTitleRight(
                      title: 'E X P E R I E N C I A  L A B O R A L',
                    ),
                    SizedBox(height: 18),

                    Row(
                      children: [
                        // Línea vertical con puntos decorativos
                        SizedBox(
                          width: 40,
                          height: 450,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Línea vertical continua
                              Container(width: 2, color: Color(0xFFB4A5D5)),
                              // Puntos decorativos a lo largo de la línea
                              Positioned(top: 30, child: CircleDot()),
                              Positioned(top: 135, child: CircleDot()),
                              Positioned(top: 245, child: CircleDot()),
                              Positioned(top: 345, child: CircleDot()),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            ExperienceItem(
                              position: 'Creadora de contenido',
                              years: '2010-2012',
                              company: 'Agencia de Marketing Digital',
                              description:
                                  'Eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc.',
                            ),
                            SizedBox(height: 22),

                            ExperienceItem(
                              position: 'Creadora de contenido',
                              years: '2010-2012',
                              company: 'Agencia de Marketing Digital',
                              description:
                                  'Eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc.',
                            ),
                            SizedBox(height: 22),

                            ExperienceItem(
                              position: 'Creadora de contenido',
                              years: '2010-2012',
                              company: 'Agencia de Marketing Digital',
                              description:
                                  'Eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc.',
                            ),
                            SizedBox(height: 22),

                            ExperienceItem(
                              position: 'Creadora de contenido',
                              years: '2010-2012',
                              company: 'Agencia de Marketing Digital',
                              description:
                                  'Eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc.',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget para los puntos circulares en la línea vertical
class CircleDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFB4A5D5),
        border: Border.all(color: Colors.white, width: 2),
      ),
    );
  }
}

// Widgets para columna izquierda (morada)
class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.bold,
        color: Color(0xFF7B68B8),
        letterSpacing: 3,
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.start, // Alinea el contenido a la izquierda
      crossAxisAlignment: CrossAxisAlignment.center, // Centra verticalmente
      children: [
        // Fondo circular solo alrededor del ícono
        Container(
          padding: EdgeInsets.all(10), // Espaciado dentro del contenedor
          decoration: BoxDecoration(
            color: Color(0xFF7B68B8), // Fondo morado
            shape: BoxShape.circle, // Forma circular
          ),
          child: Icon(
            icon,
            color: Colors
                .white, // El icono será blanco para que contraste con el fondo
            size: 16, // Tamaño del icono
          ),
        ),
        SizedBox(width: 8), // Espaciado entre el icono y el texto
        Text(
          text,
          style: TextStyle(
            fontSize: 12.5, // Tamaño del texto
            color: Color(
              0xFF7B68B8,
            ), // El color del texto será blanco para contraste
            height: 1.4,
          ),
        ),
      ],
    );
  }
}

class SkillItem extends StatelessWidget {
  final String text;

  SkillItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 12.5, color: Color(0xFF7B68B8), height: 1.3),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String title;
  final String institution;
  final String years;

  EducationItem({
    required this.title,
    required this.institution,
    required this.years,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Color(0xFF7B68B8),
            height: 1.3,
          ),
        ),
        SizedBox(height: 4),
        Text(
          institution,
          style: TextStyle(fontSize: 12, color: Color(0xFF7B68B8), height: 1.3),
        ),
        SizedBox(height: 2),
        Text(
          years,
          style: TextStyle(fontSize: 12, color: Color(0xFF7B68B8), height: 1.3),
        ),
      ],
    );
  }
}

// Widgets para columna derecha (blanca)
class SectionTitleRight extends StatelessWidget {
  final String title;

  SectionTitleRight({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color(0xFF7B68B8),
        letterSpacing: 3,
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String position;
  final String years;
  final String company;
  final String description;

  ExperienceItem({
    required this.position,
    required this.years,
    required this.company,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          position,
          style: TextStyle(
            fontSize: 14.5,
            fontWeight: FontWeight.bold,
            color: Color(0xFF7B68B8),
            height: 1.2,
          ),
        ),
        SizedBox(height: 3),
        Text(
          years,
          style: TextStyle(
            fontSize: 12.5,
            color: Color(0xFF7B68B8),
            fontWeight: FontWeight.w600,
            height: 1.2,
          ),
        ),
        SizedBox(height: 8),
        Text(
          company,
          style: TextStyle(
            fontSize: 13.5,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            height: 1.3,
          ),
        ),
        SizedBox(height: 6),
        Text(
          description,
          style: TextStyle(fontSize: 12.5, color: Colors.black87, height: 1.5),
        ),
      ],
    );
  }
}
