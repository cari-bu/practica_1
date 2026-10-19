import 'dart:io';

class Estudiante {
  String nombre;
  double nota1, nota2, nota3;
  double promedio = 0;
  bool aprobado = false;

  Estudiante(this.nombre, this.nota1, this.nota2, this.nota3);

  void calcularPromedio() {
    double suma = nota1 + nota2 + nota3;
    promedio = suma / 3;
    aprobado = promedio >= 13;
  }

  void determinarEstado() {
    calcularPromedio();

    if (aprobado) {
      print('\n>>> $nombre ha aprobado con un promedio de ${promedio.toStringAsFixed(2)}');
    } else {
      print('\n>>> $nombre ha reprobado con un promedio de ${promedio.toStringAsFixed(2)}');
    }
  }
}

class Producto {
  String nombreProducto;
  double precio;
  int catidadStock;

  Producto(this.nombreProducto, this.precio, this.catidadStock);

  void calcularValorIntermedio(){
    double valorIntermedio = precio * 1.5; 
    print('El valor intermedio del producto $nombreProducto es: $valorIntermedio');
  }

  void determinarStock(){
    if (catidadStock == 0) {
      print('El stock del producto $nombreProducto está: AGOTADO');
    } else if (catidadStock < 5) {
      print('El stock del producto $nombreProducto es: BAJO ($catidadStock unidades)');
    } else {
      print('El stock del producto $nombreProducto es: SUFICIENTE ($catidadStock unidades)');
    }
  }

  void mostarInformacion(){
    print('\n--- Información del Producto ---');
    print('Producto: $nombreProducto');
    print('Precio: \$$precio');
    print('Stock: $catidadStock');
    print('Valor total inventario: \${${precio * catidadStock}}');
    determinarStock();
  }
}

class Ofertante {
  String nombreVendedor;
  int monto_ventas;
 
  Ofertante(this.nombreVendedor, this.monto_ventas);

  double calcularComision() {
    if (monto_ventas >= 2000) {
      return monto_ventas * 0.10;
    } else {
      return monto_ventas * 0.05;
    }
  }

  void mostrarReporte(){
    print('\n--- Reporte de Ventas ---');
    print('Vendedor: $nombreVendedor');
    print('Monto de ventas: \$$monto_ventas');
    print('Comisión obtenida: \${${calcularComision()}}');
  }
}

class RegistroTemperaturas {
  List<double> temperaturas = [];

  void registrarTemperaturas() {
    temperaturas.clear(); // 
    print('registro de temperaturas para 5 días ');
    
    for (int i = 1; i <= 5; i++) {
      stdout.write('Ingrese la temperatura del día $i: ');
      double temp = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      temperaturas.add(temp);
    }
  }

  double calcularPromedio() {
    if (temperaturas.isEmpty) return 0.0;
    double suma = temperaturas.reduce((a, b) => a + b);
    return suma / temperaturas.length;
  }

  int contarDiasCalurosos() {
    int diasCalurosos = 0;
    for (double temp in temperaturas) {
      if (temp > 30.0) {
        diasCalurosos++;
      }
    }
    return diasCalurosos;
  }
  void mostrarReporte() {
    print('REPORTE FINAL');
    print('Temperaturas registradas: ${temperaturas.join(' °C, ')} °C');
    print('Promedio semanal: ${calcularPromedio().toStringAsFixed(2)} °C');
    print('Cantidad de días calurosos ( 30°C): ${contarDiasCalurosos()} día(s)');
  }
}
void main() {
  
  print('\n--- Registro de Estudiante ---');
  stdout.write('Ingrese el nombre del estudiante: ');
  String nombreEstudiante = stdin.readLineSync() ?? 'Sin nombre';

  stdout.write('Ingrese la nota 1: ');
  double n1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write('Ingrese la nota 2: ');
  double n2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write('Ingrese la nota 3: ');
  double n3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  // Crear objeto estudiante y mostrar resultado
  Estudiante estudiante = Estudiante(nombreEstudiante, n1, n2, n3);
  estudiante.determinarEstado();

  print('\n--------------------------------------------------');

  // 2. DATOS DEL PRODUCTO
  print('\n--- Registro de Producto ---');
  stdout.write('Ingrese el nombre del producto: ');
  String nombreProd = stdin.readLineSync() ?? 'Producto Genérico';

  stdout.write('Ingrese el precio del producto: ');
  double precioProd = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write('Ingrese la cantidad en stock: ');
  int stockProd = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  // Crear objeto producto y mostrar resultado
  Producto producto = Producto(nombreProd, precioProd, stockProd);
  producto.calcularValorIntermedio();
  producto.mostarInformacion();

  print('\n--------------------------------------------------');

  // 3. DATOS DEL OFERTANTE (VENDEDOR)
  print('\n--- Registro de Ofertante / Vendedor ---');
  stdout.write('Ingrese el nombre del vendedor: ');
  String nombreVend = stdin.readLineSync() ?? 'Vendedor Anónimo';

  stdout.write('Ingrese el monto de ventas totales: ');
  int ventasVend = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  Ofertante vendedor = Ofertante(nombreVend, ventasVend);
  vendedor.mostrarReporte();

/////////
  RegistroTemperaturas registro = RegistroTemperaturas();
  registro.registrarTemperaturas(); // Nos pide los 5 datos
  registro.mostrarReporte();     
 
}
