String operar(double numero1,double numero2,double Function(double, double) operacion){
  return "Resultado: ${operacion(numero1, numero2)}";
}
void main() {
print(operar(10, 5, (x,y) => x+y));
print(operar(10, 5, (x,y) => x*y));
print(operar(10, 5, (x,y) => x/y));

}