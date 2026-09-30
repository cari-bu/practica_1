import 'dart:io';

void main() {
  print('====================================');
  print('     CALCULADORA DE EDAD FUTURA');
  print('====================================');

  stdout.write('Ingrese su nombre completo: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('Ingrese su edad actual: ');
  int edadActual = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese cuántos años desea proyectar: ');
  int aniosProyectar = int.parse(stdin.readLineSync()!);

  int edadFutura = edadActual + aniosProyectar;

  print('\n------------------------------------');
  print('Nombre: $nombre');
  print('Edad actual: $edadActual años');
  print('Años a proyectar: $aniosProyectar años');
  print('$nombre tendrá $edadFutura años en el futuro.');
  print('------------------------------------');
}