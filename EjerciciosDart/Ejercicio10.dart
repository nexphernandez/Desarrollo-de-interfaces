void onPressed( Function pulsar){
  pulsar();
}


void main(){
  onPressed((){
  print("Boton pulsado");
});
}