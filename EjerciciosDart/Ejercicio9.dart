Function multiplicador(int factor) {
return (int x) => x * factor;
}
void main (){
var porTres = multiplicador(3);
print(porTres(5));
}