/*
1. GESTOR DE NOTAS CON VALIDACIÓN EN VIVO
Pide al usuario por teclado la cantidad de estudiantes que desea regist rar. Luego, mediante un bucle,
solicita una a una la nota decimal (double) de cada estudiante, rechazando inmediatamente y pidiendo
ingresar de nuevo cualquier valor que no esté entre 0.0 y 5.0. Almacena las notas válidas en una lista
y, con otro ciclo, calcula el promedio general y muestra cuántos estudiantes están en categoría
Aprobado (>= 3.0) y cuántos en Reprobado (< 3.0).
*/

// Importamos la librería para poder leer datos desde el teclado
import 'dart:io';

void main() {
  // Se solicita al usuario la cantidad de estudiantes que desea registrar
  print("Ingrese la cantidad de estudiantes:");

  // Se lee el dato ingresado y se convierte de String a int
  int cantidad = int.parse(stdin.readLineSync()!);

  // Se crea una lista donde se almacenarán las notas válidas
  List<double> notas = [];

  // Se repite el proceso según la cantidad de estudiantes ingresada
  for (int i = 0; i < cantidad; i++) {

    // Variable que controla que la nota ingresada sea válida
    bool notaValida = false;

    // Ciclo que continúa hasta que el usuario ingrese una nota correcta
    while (!notaValida) {

      // Se solicita la nota del estudiante actual
      print("Ingrese la nota del estudiante ${i + 1} (0.0 - 5.0):");

      // Se lee la nota y se convierte a tipo double
      double nota = double.parse(stdin.readLineSync()!);

      // Se verifica que la nota esté dentro del rango permitido
      if (nota >= 0.0 && nota <= 5.0) {

        // Si la nota es válida, se agrega a la lista
        notas.add(nota);

        // Se cambia el estado para salir del ciclo
        notaValida = true;
      } else {

        // Si la nota no es válida, se solicita nuevamente
        print("Error: la nota debe estar entre 0.0 y 5.0");
      }
    }
  }

  // Se inicializan variables para calcular el promedio
  // y contar estudiantes aprobados y reprobados
  double sumaNotas = 0;
  int aprobados = 0;
  int reprobados = 0;

  // Se recorre la lista de notas para realizar los cálculos
  for (var nota in notas) {

    // Se acumula el valor de cada nota
    sumaNotas += nota;

    // Se verifica si el estudiante aprobó o reprobó
    if (nota >= 3.0) {
      aprobados++;
    } else {
      reprobados++;
    }
  }

  // Se calcula el promedio general de las notas
  double promedio = sumaNotas / cantidad;

  // Se muestran los resultados finales
  print("El promedio general es: ${promedio.toStringAsFixed(2)}");
  print("Cantidad de estudiantes aprobados: $aprobados");
  print("Cantidad de estudiantes reprobados: $reprobados");
}


/*
2. CAJERO AUTOMÁTICO DE RETIROS MÚLTIPLES
Solicita al usuario por teclado un saldo inicial de cuenta bancaria. Posteriormente, inicia un bucle que
le permita ingresar montos enteros para realizar retiros uno por uno, guardando cada monto en una
lista de transacciones. Si el usuario ingresa un valor negativo o 0, el programa debe ignorarlo con una
advertencia; si el retiro supera el saldo disponible en ese momento, debe denegar la transacción y
romper el ciclo. Al finalizar, muestra la lista de retiros procesados exitosamente y el saldo restante.
*/

// ¿Libreria para importar los datos del cliente. 
import "dart:io"; 
//  
void main() { 
//Se solicita al usuario ingresar el saldo incial de la cuenta. 
  print("Digite el saldo inicial de cuenta bancaria."); 
// Inicio de declaracion de variables. 
  String saldoIni = stdin.readLineSync()!; //Captura el dato del usuario. 
   
  int saldo = int.parse(saldoIni); //convierte el dato de usuario en un entero. 
  List<int> historial = []; // cramos una variable tipo lista para almacenar los datos 
  // creamos un blucle en donde el saldo sea >0 
  while(saldo>0){ 
      print("Ingrese monto a retirar."); // Se solicita al usuario ingresa el valor de retiro. 
      String input =stdin.readLineSync()!; // Captura el dato del usuario. 
      int retiro = int.parse(input);// convertimos el dato a entero. 
      // creamos una condicional para validar si el retiro es >saldo y denegar la transaccion. 
      if (retiro > saldo){ 
          print("Transacción denegada. \n Fondos insuficientes \n Saldo actual: $saldo \n  ---------------------");  
          print("$historial \n su saldo es de: $saldo");//imprimimos el historial de la lista. 
      } 
      //Condicional para validar que un retiro no sea un valor =0. 
      else if (retiro == 0){  
          print("por favor ingresar un valor valido."); 
      } 
      // Se valida el saldo final, descontando el retiro. 
      else { 
      saldo = saldo - retiro; 
      historial.add(retiro); // en esta variable se agrega el retiro realizado. 
      print("$historial \n su saldo es de: $saldo"); //imprimimos el historial de la lista. 
      }  
  } 
  print("Saldo actual: $saldo."); 
} 

/*
3. FILTRO INTERACTIVO DE INVENTARIO CRÍTICO
Solicita al usuario que ingrese por teclado una lista de existencias de productos separadas por comas
(por ejemplo: 12, 3, 0, 15, 4, 8). Recorre la lista convertida a enteros mediante un bucle y evalúa cada
elemento: si la cantidad es igual a 0, agrégala a una lista de Agotados; si es mayor a 0 pero menor a
5, agrégala a una lista de Reabastecimiento urgente; y si es 5 o más, ignórala. Finalmente, imprime
ambas listas de alerta.
*/

// Importamos la librería para poder leer datos desde el teclado
import 'dart:io';

void main() {
  // Se solicita al usuario ingresar las existencias separadas por comas
  print("Ingrese la lista de existencias separadas por comas:");
  print("Ejemplo: 12, 3, 0, 15, 4, 8");

  // Se lee la información ingresada por el usuario
  String entrada = stdin.readLineSync()!;

  // Se separan los valores usando la coma como referencia
  // y se convierten de String a una lista de enteros
  List<int> existencias = entrada
      .split(',')
      .map((e) => int.parse(e.trim()))
      .toList();

  // Se crean listas para almacenar los productos según su estado
  List<int> agotados = [];
  List<int> reabastecimiento = [];

  // Se recorre la lista de existencias para evaluar cada cantidad
  for (var cantidad in existencias) {

    // Se verifica si la cantidad es igual a cero
    // En este caso el producto está agotado
    if (cantidad == 0) {
      agotados.add(cantidad);
    }

    // Se verifica si la cantidad es mayor a cero
    // pero menor que cinco, indicando un reabastecimiento urgente
    else if (cantidad > 0 && cantidad < 5) {
      reabastecimiento.add(cantidad);
    }

    // Si la cantidad es 5 o mayor, no se agrega a ninguna lista
    else {
      continue;
    }
  }

  // Se muestran los productos agotados encontrados
  print("Productos agotados: $agotados");

  // Se muestran los productos que necesitan reabastecimiento urgente
  print("Productos con reabastecimiento urgente: $reabastecimiento");
}

/*
4. CLASIFICADOR DE NOMBRES VÁLIDOS
Solicita al usuario por teclado cuántos nombres de empleados ingresará. En un bucle, pide cada
cadena de texto y guárdalas en una lista. Luego, recorre esa lista y genera una segunda lista con los
nombres considerados "válidos": aquellos que tengan al menos 4 caracteres, no empiecen con un
número y no contengan la palabra "test". Muestra la lista resultante en mayúsculas.
*/

// Importamos la librería para poder leer datos desde el teclado
import 'dart:io';

void main() {
  // Se solicita al usuario la cantidad de nombres que desea ingresar
  print("Ingrese la cantidad de nombres de empleados:");

  // Se lee el dato ingresado y se convierte de String a int
  int cantidad = int.parse(stdin.readLineSync()!);

  // Se crea una lista para almacenar todos los nombres ingresados
  List<String> nombres = [];

  // Se solicita cada nombre mediante un ciclo
  for (int i = 0; i < cantidad; i++) {

    // Se pide el nombre del empleado actual
    print("Ingrese el nombre del empleado ${i + 1}:");

    // Se almacena el nombre ingresado en la lista
    String nombre = stdin.readLineSync()!;

    nombres.add(nombre);
  }

  // Se crea una segunda lista donde se guardarán
  // únicamente los nombres que cumplan las condiciones
  List<String> nombresValidos = [];

  // Se recorre la lista de nombres ingresados
  for (var nombre in nombres) {

    // Se convierte el nombre a minúsculas para
    // facilitar la búsqueda de la palabra "test"
    String nombreMinuscula = nombre.toLowerCase();

    // Se obtiene el primer carácter del nombre
    String primerCaracter = nombre[0];

    // Se verifica que el nombre tenga mínimo 4 caracteres,
    // que no inicie con un número y que no contenga la palabra "test"
    if (nombre.length >= 4 &&
        int.tryParse(primerCaracter) == null &&
        !nombreMinuscula.contains("test")) {

      // Si cumple las condiciones, se agrega a la lista de válidos
      nombresValidos.add(nombre);
    }
  }

  // Se muestra la lista de nombres válidos convertidos a mayúsculas
  print("Nombres válidos:");

  for (var nombre in nombresValidos) {
    print(nombre.toUpperCase());
  }
}

/*
5. ALINEACIÓN DE COMPRAS SIN EXCEDER PRESUPUESTO
Pide por teclado un presupuesto máximo en pesos para compras de supermercado. Luego, solicita al
usuario que vaya ingresando los precios de productos uno tras otro hasta que escriba el número -1
para terminar. Almacena todos los precios en una lista y, recórrela en orden de ingreso para sumar
productos a un "carrito definitivo"; si al sumar un ítem se excede el presupuesto disponible, ese
producto debe omitirse usando una condición, pero el ciclo debe continuar evaluando si productos
posteriores más baratos aún pueden incluirse
*/

// Importamos la librería para poder leer datos desde el teclado
import 'dart:io';

void main() {
  // Se solicita al usuario ingresar el presupuesto máximo disponible
  print("Ingrese el presupuesto máximo para las compras:");

  // Se lee el presupuesto y se convierte de String a double
  double presupuesto = double.parse(stdin.readLineSync()!);

  // Se crea una lista para almacenar todos los precios ingresados
  List<double> precios = [];

  // Ciclo para solicitar los precios de los productos
  // Finaliza cuando el usuario ingresa el valor -1
  while (true) {

    // Se solicita el precio de un producto
    print("Ingrese el precio del producto (-1 para terminar):");

    // Se lee el precio ingresado y se convierte a double
    double precio = double.parse(stdin.readLineSync()!);

    // Se verifica si el usuario desea finalizar el ingreso de productos
    if (precio == -1) {
      break;
    }

    // Se agrega el precio del producto a la lista
    precios.add(precio);
  }

  // Se crea una lista donde se almacenarán los productos
  // que sí pueden ser incluidos dentro del presupuesto
  List<double> carritoDefinitivo = [];

  // Variable para almacenar el total acumulado de la compra
  double totalCompra = 0;

  // Se recorre la lista de precios respetando el orden de ingreso
  for (var precio in precios) {

    // Se verifica si al agregar el producto no se supera el presupuesto
    if (totalCompra + precio <= presupuesto) {

      // Si el precio permite continuar dentro del presupuesto,
      // se agrega el producto al carrito definitivo
      carritoDefinitivo.add(precio);

      // Se actualiza el total de la compra
      totalCompra += precio;
    }

    // Si el producto supera el presupuesto disponible,
    // se omite y se continúa revisando los siguientes productos
    else {
      continue;
    }
  }

  // Se muestran los productos incluidos en el carrito definitivo
  print("Productos incluidos en el carrito:");

  for (var producto in carritoDefinitivo) {
    print(producto);
  }

  // Se muestra el valor total de la compra realizada
  print("Total de la compra: ${totalCompra.toStringAsFixed(2)}");

  // Se muestra el presupuesto restante disponible
  double restante = presupuesto - totalCompra;
  print("Presupuesto restante: ${restante.toStringAsFixed(2)}");
}

/*
6. DEPURACIÓN DE LISTA DE CORREOS ELECTRÓNICOS DESDE CONSOLA
Solicita al usuario que escriba por teclado varios correos electrónicos en una sola línea, separados
por espacios. Transforma la entrada en una lista y recórrela para construir una nueva lista limpia que
cumpla tres condiciones simultáneas: descartar los correos repetidos, descartar aquellos que no
contengan exactamente un símbolo "@", y omitir los que terminen en el dominio ".spam". Muestra en
pantalla cuántos correos fueron descartados en total y la lista limpia resultante.
*/

// Importamos la librería para poder leer datos desde el teclado
import 'dart:io';

void main() {
  // Se solicita al usuario ingresar varios correos separados por espacios
  print("Ingrese los correos electrónicos separados por espacios:");

  // Se lee la línea completa ingresada por el usuario
  String entrada = stdin.readLineSync()!;

  // Se convierte la entrada en una lista separando cada correo por espacios
  List<String> correos = entrada.split(' ');

  // Se crea una lista donde se almacenarán los correos válidos
  List<String> correosLimpios = [];

  // Variable para contar la cantidad de correos descartados
  int descartados = 0;

  // Se recorre la lista de correos ingresados
  for (var correo in correos) {

    // Variable para verificar si el correo ya existe en la lista limpia
    bool repetido = correosLimpios.contains(correo);

    // Se cuenta la cantidad de símbolos "@" que contiene el correo
    int cantidadArrobas = '@'.allMatches(correo).length;

    // Se verifica si el correo termina con el dominio ".spam"
    bool esSpam = correo.endsWith(".spam");

    // Se comprueban las condiciones para aceptar el correo:
    // - No debe estar repetido
    // - Debe tener exactamente un símbolo "@"
    // - No debe terminar en ".spam"
    if (!repetido && cantidadArrobas == 1 && !esSpam) {

      // Si cumple todas las condiciones, se agrega a la lista limpia
      correosLimpios.add(correo);
    } else {

      // Si no cumple alguna condición, se aumenta el contador de descartados
      descartados++;
    }
  }

  // Se muestra la cantidad total de correos eliminados
  print("Cantidad de correos descartados: $descartados");

  // Se muestra la lista final de correos válidos
  print("Lista limpia de correos:");

  for (var correo in correosLimpios) {
    print(correo);
  }
}

/*
7. REGISTRO DIARIO DE TEMPERATURAS CON RACHAS
Pide por teclado la cantidad de días (N) que se evaluarán. Con un bucle, solicita al usuario la
temperatura entera en grados Celsius para cada día y guárdalas en una lista. Al finalizar la captura,
recorre la lista para identificar y almacenar en otra lista los índices de los días donde ocurrió una "ola
de calor", definida como cualquier racha en la que la temperatura haya sido estrictamente mayor a
30°C durante al menos 3 días consecutivos.
*/

// Importamos la librería para poder leer datos desde el teclado
import 'dart:io';

void main() {
  // Se solicita al usuario la cantidad de días que desea evaluar
  print("Ingrese la cantidad de días a evaluar:");

  // Se lee el dato ingresado y se convierte de String a int
  int dias = int.parse(stdin.readLineSync()!);

  // Se crea una lista donde se almacenarán las temperaturas ingresadas
  List<int> temperaturas = [];

  // Se solicita la temperatura de cada día mediante un ciclo
  for (int i = 0; i < dias; i++) {

    // Se pide la temperatura correspondiente al día actual
    print("Ingrese la temperatura del día ${i + 1} en grados Celsius:");

    // Se lee la temperatura y se convierte a tipo entero
    int temperatura = int.parse(stdin.readLineSync()!);

    // Se agrega la temperatura a la lista
    temperaturas.add(temperatura);
  }

  // Se crea una lista para almacenar los índices
  // donde se detecten olas de calor
  List<int> diasOlaCalor = [];

  // Variable para contar la cantidad de días consecutivos
  // con temperatura mayor a 30°C
  int rachaCalor = 0;

  // Se recorre la lista de temperaturas para buscar las rachas
  for (int i = 0; i < temperaturas.length; i++) {

    // Se verifica si la temperatura supera los 30 grados
    if (temperaturas[i] > 30) {

      // Si cumple la condición, aumenta la racha de calor
      rachaCalor++;
    } else {

      // Si la temperatura no supera los 30 grados,
      // se reinicia la cuenta de días consecutivos
      rachaCalor = 0;
    }

    // Cuando se alcanzan 3 días consecutivos con temperatura mayor a 30°C,
    // se almacena el índice del día donde termina la racha
    if (rachaCalor >= 3) {

      // Se agrega el índice actual a la lista de olas de calor
      diasOlaCalor.add(i);
    }
  }

  // Se muestran las temperaturas registradas
  print("Temperaturas registradas: $temperaturas");

  // Se verifica si se encontraron olas de calor
  if (diasOlaCalor.isNotEmpty) {

    // Se muestran los índices de los días con ola de calor
    print("Índices de días con ola de calor: $diasOlaCalor");
  } else {

    // Mensaje cuando no existen rachas de calor
    print("No se encontraron olas de calor.");
  }
}

/*
8. FACTURACIÓN CON IMPUESTOS ESCALONADOS E INTERRUPCIÓN
Solicita al usuario que ingrese por teclado montos de facturas en pesos, deteniendo la captura cuando
escriba "fin" o "salir". Guarda los montos en una lista de tipo decimal (List<double>). Luego, recorre la
lista aplicando una condición de impuesto: 0% si el monto es menor a $100, 10% si está entre $100 y
$500, y 15% si supera los $500. Si alguna factura individual calculada con impuesto supera los $1,000,
interrumpe inmediatamente el procesamiento del resto de la lista con break y reporta la alerta junto
con las facturas procesadas hasta ese momento.
*/

// Importamos la librería para poder leer datos desde el teclado
import 'dart:io';

void main() {
  // Se crea una lista para almacenar los montos de las facturas
  // en formato decimal
  List<double> facturas = [];

  // Ciclo para solicitar los montos de las facturas
  // Finaliza cuando el usuario escribe "fin" o "salir"
  while (true) {

    // Se solicita el ingreso del monto de la factura
    print("Ingrese el monto de la factura (escriba 'fin' o 'salir' para terminar):");

    // Se lee el dato ingresado por el usuario
    String entrada = stdin.readLineSync()!;

    // Se convierte el texto a minúsculas para comparar las opciones de salida
    String opcion = entrada.toLowerCase();

    // Se verifica si el usuario desea terminar la captura
    if (opcion == "fin" || opcion == "salir") {
      break;
    }

    // Se convierte el valor ingresado de String a double
    double monto = double.parse(entrada);

    // Se agrega el monto de la factura a la lista
    facturas.add(monto);
  }

  // Lista donde se almacenarán las facturas procesadas
  List<double> facturasProcesadas = [];

  // Se recorre la lista de facturas para calcular los impuestos
  for (var monto in facturas) {

    // Variable para almacenar el porcentaje de impuesto correspondiente
    double impuesto = 0;

    // Se aplica la condición de impuestos escalonados
    if (monto < 100) {

      // Facturas menores a $100 no tienen impuesto
      impuesto = 0;
    } 
    
    else if (monto >= 100 && monto <= 500) {

      // Facturas entre $100 y $500 tienen un impuesto del 10%
      impuesto = 0.10;
    } 
    
    else {

      // Facturas superiores a $500 tienen un impuesto del 15%
      impuesto = 0.15;
    }

    // Se calcula el valor final de la factura con impuesto incluido
    double totalFactura = monto + (monto * impuesto);

    // Se verifica si la factura supera los $1000 después del impuesto
    if (totalFactura > 1000) {

      // Se muestra una alerta indicando la factura que causó la interrupción
      print("Alerta: una factura supera los \$1000 con impuesto incluido.");
      print("Factura que generó la interrupción: ${totalFactura.toStringAsFixed(2)}");

      // Se detiene el procesamiento de las siguientes facturas
      break;
    }

    // Si no supera los $1000, se agrega a la lista de procesadas
    facturasProcesadas.add(totalFactura);
  }

  // Se muestran las facturas procesadas correctamente
  print("Facturas procesadas:");

  for (var factura in facturasProcesadas) {
    print(factura.toStringAsFixed(2));
  }
}

/*
9. BÚSQUEDA DE PICOS EN LECTURAS DE SENSORES
Pide al usuario por teclado que ingrese al menos 5 valores enteros que representen lecturas de voltaje
por minuto, separados por comas. Almacena los valores en una lista y recórrela desde el segundo
hasta el penúltimo elemento para detectar los "picos de voltaje", condicionados como aquellos
elementos que sean estrictamente mayores que su número inmediatamente anterior y su número
inmediatamente posterior. Guarda y muestra una nueva lista que contenga únicamente los valores de
los picos detectados.
*/

// Importamos la librería para poder leer datos desde el teclado
import 'dart:io';

void main() {
  // Se solicita al usuario ingresar las lecturas de voltaje separadas por comas
  print("Ingrese al menos 5 valores de voltaje separados por comas:");
  print("Ejemplo: 10, 15, 12, 20, 18");

  // Se lee la línea completa ingresada por el usuario
  String entrada = stdin.readLineSync()!;

  // Se convierte la entrada en una lista de enteros
  // separando cada valor mediante la coma
  List<int> voltajes = entrada
      .split(',')
      .map((e) => int.parse(e.trim()))
      .toList();

  // Se verifica que la lista tenga mínimo 5 valores
  if (voltajes.length < 5) {
    print("Error: debe ingresar al menos 5 valores.");
    return;
  }

  // Se crea una lista donde se almacenarán los valores
  // que sean considerados picos de voltaje
  List<int> picos = [];

  // Se recorre la lista desde el segundo elemento
  // hasta el penúltimo para poder comparar con sus vecinos
  for (int i = 1; i < voltajes.length - 1; i++) {

    // Se verifica si el valor actual es mayor que el anterior
    // y también mayor que el siguiente valor
    if (voltajes[i] > voltajes[i - 1] &&
        voltajes[i] > voltajes[i + 1]) {

      // Si cumple la condición, se agrega a la lista de picos
      picos.add(voltajes[i]);
    }
  }

  // Se muestran todas las lecturas ingresadas
  print("Lecturas de voltaje: $voltajes");

  // Se muestra la lista con los picos detectados
  print("Picos de voltaje detectados: $picos");
}

/*
10. DESCUENTOS POR ANTIGÜEDAD Y HORAS EXTRA EN NÓMINA
Pide al usuario por teclado cuántos trabajadores se procesarán. En un bucle, solicita para cada
trabajador una línea separada por comas con sus horas trabajadas en la semana y su antigüedad en
años (ejemplo: 45, 3). Guarda estos datos estructurados en una lista. Después, recorre esa lista para
calcular el pago en una nueva lista aplicando dos condiciones: si el empleado trabajó más de 40 horas,
las horas excedentes se pagan al doble; y si además tiene 5 años o más de antigüedad, se le suma
una bonificación fija del 10% sobre el total. Muestra la nómina final calculada.
*/

// Importamos la librería para poder leer datos desde el teclado
import 'dart:io';

void main() {
  // Se solicita al usuario la cantidad de trabajadores que serán procesados
  print("Ingrese la cantidad de trabajadores:");

  // Se lee el dato ingresado y se convierte de String a int
  int cantidadTrabajadores = int.parse(stdin.readLineSync()!);

  // Se crea una lista donde se almacenarán los datos de cada trabajador
  // Cada trabajador tendrá sus horas trabajadas y años de antigüedad
  List<List<int>> trabajadores = [];

  // Se solicita la información de cada trabajador mediante un ciclo
  for (int i = 0; i < cantidadTrabajadores; i++) {

    // Se solicita ingresar las horas y antigüedad separados por coma
    print("Ingrese las horas trabajadas y antigüedad del trabajador ${i + 1}:");
    print("Ejemplo: 45, 3");

    // Se lee la información ingresada por el usuario
    String entrada = stdin.readLineSync()!;

    // Se separan los valores por coma y se convierten a enteros
    List<int> datos = entrada
        .split(',')
        .map((e) => int.parse(e.trim()))
        .toList();

    // Se agregan los datos del trabajador a la lista principal
    trabajadores.add(datos);
  }

  // Se crea una lista para almacenar los pagos finales de cada trabajador
  List<double> nominaFinal = [];

  // Valor base utilizado para calcular el pago por hora
  double valorHora = 10000;

  // Se recorren los datos de cada trabajador para calcular su salario
  for (var trabajador in trabajadores) {

    // Se obtiene la cantidad de horas trabajadas
    int horas = trabajador[0];

    // Se obtiene la antigüedad del trabajador en años
    int antiguedad = trabajador[1];

    // Variable donde se almacenará el pago total
    double pago = 0;

    // Se verifica si el trabajador realizó horas extra
    if (horas > 40) {

      // Se calculan las primeras 40 horas con pago normal
      pago = 40 * valorHora;

      // Se calculan las horas adicionales con pago doble
      int horasExtra = horas - 40;
      pago += horasExtra * (valorHora * 2);

    } else {

      // Si no supera las 40 horas, todas se pagan normalmente
      pago = horas * valorHora;
    }

    // Se verifica si el trabajador tiene 5 años o más de antigüedad
    if (antiguedad >= 5) {

      // Se agrega una bonificación del 10% sobre el pago total
      pago += pago * 0.10;
    }

    // Se almacena el pago calculado en la nómina final
    nominaFinal.add(pago);
  }

  // Se muestra la nómina final calculada
  print("Nómina final:");

  for (int i = 0; i < nominaFinal.length; i++) {
    print(
        "Trabajador ${i + 1}: \$${nominaFinal[i].toStringAsFixed(2)}");
  }
}
