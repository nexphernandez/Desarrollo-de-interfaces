//Ejercicio1
class Temperatura{
  double celsius;
  Temperatura(this.celsius);

  double get fahrenheit => celsius *1.8 + 32;
}
//Ejercicio2
class Contrasenia{
  String _valor;
  Contrasenia(this._valor);
  set ochoCaracteres(String _nuevoValor) {
    if (_nuevoValor.length <  8) {
      _valor = "error";
    } else{
      _valor = _nuevoValor;
    }
  }
}
//Ejercicio3
class Empleado{
  String nombre;

  Empleado(this.nombre);

  void trabajar() {
    print('$nombre está trabajando.');
  }
}
class Programador extends Empleado {
  Programador(String nombre) : super(nombre);

  @override
  void trabajar() {
    print('Estoy programando en Dart.');
  }
}
//Ejercicio4
abstract class InstrumentoMusical {
  void tocar();
}
class Guitarra extends InstrumentoMusical {
  @override
  void tocar() {
    print('Tocando la guitarra 🎸');
  }
}
class Piano extends InstrumentoMusical {
  @override
  void tocar() {
    print('Tocando el piano 🎹');
  }
}
//Ejercicio5
abstract class Exportable {
  void exportar();
}
class DocumentoPDF implements Exportable {
  @override
  void exportar() {
    print('Exportando documento PDF...');
  }
}
class ImagenPNG implements Exportable {
  @override
  void exportar() {
    print('Exportando imagen PNG...');
  }
}
//Ejercicio6
mixin Recargable {
  void recargar() {
    print('Recargando...');
  }
}
class Telefono with Recargable {}
class Linterna with Recargable {}
//Ejercicio7
class ColorRGB {
  final int r;
  final int g;
  final int b;

  const ColorRGB(this.r, this.g, this.b);
}

void main(){
  //ejercicio1
  var temperatura1 = Temperatura(32);
  print("${temperatura1.celsius} , ${temperatura1.fahrenheit}");

  //ejercicio2
  var contrasenia1 = Contrasenia("15412sdafdsfersdf");
  contrasenia1.ochoCaracteres="152s";
  var contrasenia2 = Contrasenia("15412sdafdsfersdf");
  contrasenia2.ochoCaracteres="15GYUFYUILI2s";
  print(contrasenia1._valor);
  print(contrasenia2._valor);

  //ejercicio3
  Programador p = Programador('Nico');
  p.trabajar();

  //ejercicio4
  List<InstrumentoMusical> instrumentos = [Guitarra(), Piano()];
  for (var inst in instrumentos) {
    inst.tocar();
  }

  //ejercicio5
  List<Exportable> exportables = [DocumentoPDF(), ImagenPNG()];
  for (var e in exportables) {
    e.exportar();
  }

  //ejercicio6
  Telefono t = Telefono();
  Linterna l = Linterna();
  t.recargar();
  l.recargar();

  //ejercicio7
  const ColorRGB color1 = ColorRGB(255, 0, 0);
  const ColorRGB color2 = ColorRGB(255, 0, 0);
  print('¿color1 y color2 son idénticos? ${identical(color1, color2)}');

}