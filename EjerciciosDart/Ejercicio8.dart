List<int> cuadrado(int numero)=>List.generate(numero, (i) => (i + 1) * (i+1));

void main(){
  print(cuadrado(5));
}