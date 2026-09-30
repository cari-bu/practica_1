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


  // ============================================================
// EJERCICIO 2: CONVERSOR DE DIVISAS
// ============================================================

const double tasaCambio = 3.50;
stdout.write('Ingrese el monto en dólares (USD): ');
double dolares = double.parse(stdin.readLineSync()!);
double soles = dolares * tasaCambio;
print('\nMonto ingresado: \$${dolares.toStringAsFixed(2)} USD');
print('Tasa de cambio: $tasaCambio');
print('Equivalente: S/ ${soles.toStringAsFixed(2)} PEN');

// ============================================================
// EJERCICIO 3: REGISTRO Y EVALUACIÓN ACADÉMICA
// ============================================================

stdout.write('Ingrese el nombre del estudiante: ');
String estudiante = stdin.readLineSync()!;

stdout.write('Ingrese la primera nota: ');
double nota1 = double.parse(stdin.readLineSync()!);

stdout.write('Ingrese la segunda nota: ');
double nota2 = double.parse(stdin.readLineSync()!);

stdout.write('Ingrese la tercera nota: ');
double nota3 = double.parse(stdin.readLineSync()!);

double promedio = (nota1 + nota2 + nota3) / 3;

print('\nEstudiante: $estudiante');
print('Primera nota: $nota1');
print('Segunda nota: $nota2');
print('Tercera nota: $nota3');
print('Promedio final: ${promedio.toStringAsFixed(2)}');
// ============================================================
// EJERCICIO 4: PAGO SEMANAL Y DESCUENTO
// ============================================================

stdout.write('Ingrese las horas trabajadas en la semana: ');
double horasTrabajadas = double.parse(stdin.readLineSync()!);

stdout.write('Ingrese el costo por hora: ');
double costoHora = double.parse(stdin.readLineSync()!);

double salarioBruto = horasTrabajadas * costoHora;

double descuento = salarioBruto * 0.10;

double salarioNeto = salarioBruto - descuento;

print('\nHoras trabajadas: $horasTrabajadas');
print('Costo por hora: S/ ${costoHora.toStringAsFixed(2)}');
print('Salario bruto: S/ ${salarioBruto.toStringAsFixed(2)}');
print('Descuento del 10%: S/ ${descuento.toStringAsFixed(2)}');
print('Salario neto: S/ ${salarioNeto.toStringAsFixed(2)}');

// ============================================================
// EJERCICIO 5: CONVERSOR DE TEMPERATURA
// ============================================================

stdout.write('Ingrese la temperatura en Celsius: ');
double celsius = double.parse(stdin.readLineSync()!);

double fahrenheit = (celsius * 9 / 5) + 32;

print('\nTemperatura en Celsius: $celsius °C');
print('Temperatura en Fahrenheit: ${fahrenheit.toStringAsFixed(2)} °F');

// ============================================================
// EJERCICIO 6: CONVERSIÓN DE HORAS
// ============================================================

stdout.write('Ingrese la cantidad de horas trabajadas: ');
double horas = double.parse(stdin.readLineSync()!);

double minutos = horas * 60;

double segundos = horas * 60 * 60;

print('\nHoras trabajadas: $horas horas');
print('Equivalente en minutos: $minutos minutos');
print('Equivalente en segundos: $segundos segundos');

// ============================================================
// EJERCICIO 7: GENERADOR DE CORREO INSTITUCIONAL
// ============================================================

stdout.write('Ingrese su primer nombre: ');
String primerNombre = stdin.readLineSync()!;

stdout.write('Ingrese su primer apellido: ');
String primerApellido = stdin.readLineSync()!;

String nombreMinuscula = primerNombre.toLowerCase();
String apellidoMinuscula = primerApellido.toLowerCase();

String correo =
    '$nombreMinuscula.$apellidoMinuscula@instituto.edu.pe';

String nombreCompleto = '$primerNombre $primerApellido';

print('\nNombre completo: $nombreCompleto');
print('Correo institucional: $correo');
print('Longitud del nombre completo: ${nombreCompleto.length} caracteres');

// ============================================================
// EJERCICIO 8: REPARTO DE CUENTA
// ============================================================

stdout.write('Ingrese el consumo total de la mesa: ');
double consumoTotal = double.parse(stdin.readLineSync()!);
stdout.write('Ingrese el porcentaje de propina: ');
double porcentajePropina = double.parse(stdin.readLineSync()!);
stdout.write('Ingrese el número de personas: ');
int personas = int.parse(stdin.readLineSync()!);
double propina = consumoTotal * (porcentajePropina / 100);
double totalConPropina = consumoTotal + propina;
double pagoPorPersona = totalConPropina / personas;

print('\nConsumo total: S/ ${consumoTotal.toStringAsFixed(2)}');
print('Propina: S/ ${propina.toStringAsFixed(2)}');
print('Total con propina: S/ ${totalConPropina.toStringAsFixed(2)}');
print('Pago por persona: S/ ${pagoPorPersona.toStringAsFixed(2)}');

// ============================================================
// EJERCICIO 9: VENTA DE PRODUCTOS
// ============================================================


stdout.write('Ingrese el nombre del producto: ');
String producto = stdin.readLineSync()!;

stdout.write('Ingrese el precio unitario: ');
double precioUnitario = double.parse(stdin.readLineSync()!);

stdout.write('Ingrese la cantidad de unidades: ');
int cantidad = int.parse(stdin.readLineSync()!);

double subtotal = precioUnitario * cantidad;

double descuentoVenta = subtotal * 0.05;

double totalPagar = subtotal - descuentoVenta;

print('\n==============================================');
print('                 BOLETA');
print('==============================================');
print('Producto: $producto');
print('Precio unitario: S/ ${precioUnitario.toStringAsFixed(2)}');
print('Cantidad: $cantidad');
print('Subtotal: S/ ${subtotal.toStringAsFixed(2)}');
print('Descuento 5%: S/ ${descuento.toStringAsFixed(2)}');
print('TOTAL A PAGAR: S/ ${totalPagar.toStringAsFixed(2)}');
print('==============================================');

print('\n==============================================');
print('       EJERCICIO 10: REGISTRO DE USUARIO');
print('==============================================');

stdout.write('Ingrese su apodo o nickname: ');

String? nickname = stdin.readLineSync();

if (nickname != null && nickname.isEmpty) {
  nickname = null;
}

String nombreUsuario = nickname ?? 'Invitado_01';

print('\nBienvenido, $nombreUsuario');
print('==============================================');
}
