
List<int> pasarANumeros(String codigo){
  return codigo.codeUnits;
}

String pasarAFrase(List<int> codigoInt) {
  List<int> codigoFinal=[];
  for (var i = 0; i < codigoInt.length; i++) {
    codigoFinal.add(codigoInt[i] - 3);
  }
  return String.fromCharCodes(codigoFinal);
}
void main(){
  String codigo = "Zlqjduglxp#Ohylrvd";
  print(pasarAFrase(pasarANumeros(codigo)));
}