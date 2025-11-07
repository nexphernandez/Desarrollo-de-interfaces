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
          // ===========================
          // ==== COLUMNA IZQUIERDA ====
          // ===========================
          Expanded(
            flex: 33,
            child: Container(
              color: Color(0xFFB4A5D5).withOpacity(0.40),
              padding: EdgeInsets.fromLTRB(35, 50, 35, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // FOTO
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF7B68B8),
                            width: 3,
                          ),
                        ),
                        child: ClipRect(
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
                  ContactItem(icon: Icons.email, text: 'hola@sitioincreible.com'),
                  SizedBox(height: 8),
                  ContactItem(icon: Icons.language, text: 'www.sitioincreible.com'),

                  SizedBox(height: 30),
                  Container(height: 1.5, color: Color(0xFFB4A5D5)),
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
                  Container(height: 1.5, color: Color(0xFFB4A5D5)),
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

          // ========================
          // ==== COLUMNA DERECHA ===
          // ========================
          Expanded(
            flex: 67,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 50, 40, 40), 
                // ↑ derecha y abajo con padding, pero izquierda queda limpia
                child: Padding(
                  padding: EdgeInsets.only(left: 40), 
                  // ↑ padding global aplicado SOLO a la columna derecha
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // ========= BLOQUE MORADO DEL NOMBRE =========
                      Container(
                        width: double.infinity,
                        color: Color(0xFFB4A5D5),
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mariana',
                                style: TextStyle(
                                  fontSize: 70,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF7B68B8),
                                ),
                              ),
                              Text(
                                'Napolitani',
                                style: TextStyle(
                                  fontSize: 52,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF7B68B8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 35),

                      // ACERCA DE MÍ
                      SectionTitleRight(title: 'A C E R C A  D E  M Í'),
                      SizedBox(height: 12),

                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: TextStyle(
                          fontSize: 13.5,
                          height: 1.55,
                          color: Color(0xFF7B68B8),
                        ),
                      ),

                      SizedBox(height: 30),

                      Container(
                        height: 1.5,
                        color: Color(0xFFB4A5D5),
                      ),

                      SizedBox(height: 25),

                      // EXPERIENCIA LABORAL
                      SectionTitleRight(
                        title: 'E X P E R I E N C I A  L A B O R A L',
                      ),
                      SizedBox(height: 18),

                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 450,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(width: 2, color: Color(0xFFB4A5D5)),
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
                                company: 'Agencia de Marketing Digital',
                                position: 'Creadora de contenido',
                                years: '2010-2012',
                                description:
                                    'Eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc.',
                              ),
                              SizedBox(height: 22),
                              ExperienceItem(
                                company: 'Agencia de Marketing Digital',
                                position: 'Creadora de contenido',
                                years: '2010-2012',
                                description:
                                    'Eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc.',
                              ),
                              SizedBox(height: 22),
                              ExperienceItem(
                                company: 'Agencia de Marketing Digital',
                                position: 'Creadora de contenido',
                                years: '2010-2012',
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
          ),
        ],
      ),
    );
  }
}

// ============================================================
// COMPONENTES VISUALES
// ============================================================

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

// COLUMNA IZQUIERDA

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
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFF7B68B8),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 16),
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            fontSize: 12.5,
            color: Color(0xFF7B68B8),
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
    return Row(
      children: [
        Container(
          width: 6,
          height: 6,
          margin: EdgeInsets.only(top: 6, right: 10),
          decoration: BoxDecoration(
            color: Color(0xFF7B68B8),
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12.5,
              color: Color(0xFF7B68B8),
              height: 1.3,
            ),
          ),
        ),
      ],
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
    const double bulletSize = 6.0;
    const double bulletGap = 10.0;
    const double indent = bulletSize + bulletGap; // = 16

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: bulletSize,
              height: bulletSize,
              margin: EdgeInsets.only(top: 5, right: bulletGap),
              decoration: BoxDecoration(
                color: Color(0xFF7B68B8),
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7B68B8),
                  height: 1.3,
                ),
              ),
            ),
          ],
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: indent),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  Text(
                    institution,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF7B68B8),
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    years,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF7B68B8),
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


// COLUMNA DERECHA

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
          company,
          style: TextStyle(
            fontSize: 13.5,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 81, 68, 126),
          ),
        ),
        SizedBox(height: 8),
        Text(
          position,
          style: TextStyle(
            fontSize: 14.5,
            fontWeight: FontWeight.bold,
            color: Color(0xFF7B68B8),
          ),
        ),
        SizedBox(height: 3),
        Text(
          years,
          style: TextStyle(
            fontSize: 12.5,
            color: Color(0xFF7B68B8),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 6),
        Text(
          description,
          style: TextStyle(
            fontSize: 12.5,
            color: Color(0xFF7B68B8),
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
