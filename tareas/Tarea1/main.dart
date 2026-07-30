/*-------------------------------------------------------------------
EJERCICIO 1: CALCULADORA DE PROPINA
Objetivo:
 Escribe un programa en Dart que calcule cuánto debe pagar cada persona
 después de dividir la cuenta y agregar una propina.

 • Pasos a seguir:
1.	Pedir al usuario el total de la cuenta.
2.	Pedir el porcentaje de propina a agregar.
3.	Calcular el total a pagar sumando la propina.
4.	Pedir el número de personas para dividir la cuenta.
5.	Calcular cuánto debe pagar cada persona.
6.	Mostrar el resultado en pantalla.
-------------------------------------------------------------------*/

//importamos libreria para poder tener entrada por teclado
import 'dart:io';
void main() {
//se pide el total de la cuenta
 print("Ingrese el total de la cuenta a pagar: ");  
//el total de la cuenta se convierte a double debido a que puede ser un valor decimal
 String cuenta = stdin.readLineSync()!;
 double cuentaIni = double.parse(cuenta);
//se pide el porcentaje a calcular
 print("Cuanto porcentaje desea agregar de propina: ");
//se convierte a double por el valor de la cuenta en decimal
 String porcentaje = stdin.readLineSync()!;
 double porcentajeIni = double.parse(porcentaje);
//Se realiza el calculo del porcentaje y total
 double totalPropina = cuentaIni * porcentajeIni / 100;
 double totalCuenta = cuentaIni + totalPropina;
//se muestra el total de propina y cuenta
 print("El valor de la propina es de: ${totalPropina.toStringAsFixed(3)} para un Total de cuenta: ${totalCuenta.toStringAsFixed(3)}");
//se pide el numero de las personas
 print("Entre cuantas personas desea dividir la cuenta ");
 String personas = stdin.readLineSync()!;
 int personasIni = int.parse(personas);
 //se calculo el valor por persona
 double totalPersonas = totalCuenta / personasIni;
 // se imprime el valor por persona
 print("El valor a pagar por persona es de: ${totalPersonas.toStringAsFixed(3)} Gracias por visitarnos");
}


/*-------------------------------------------------------------------
EJERCICIO 2: IDENTIFICAR NÚMEROS POSITIVOS Y NEGATIVOS
 Objetivo:
 Escribe un programa en Dart que determine si un número ingresado
 por el usuario es positivo, negativo o cero
 -------------------------------------------------------------------*/

// Importamos la librería para poder leer datos desde el teclado
import "dart:io";

void main() {
  // Se solicita al usuario que ingrese un número
  print("Ingrese un número:");

  // Se lee el dato ingresado y se almacena como String
  String dato = stdin.readLineSync()!;

  // Se convierte el dato de tipo String a tipo int
  int datoc = int.parse(dato);

  // Se verifica si el número es menor que cero
  // En ese caso se indica que es un número negativo
  if (datoc < 0) {
    print("El dato ingresado es negativo: $datoc");
  }

  // Se verifica si el número es mayor que cero
  // En ese caso se indica que es un número positivo
  else if (datoc > 0) {
    print("El número ingresado es positivo: $datoc");
  }

  // Si no es positivo ni negativo, el número es cero
  else {
    print("El dato ingresado es: $datoc");
  }
}

/*-------------------------------------------------------------------
EJERCIO 3: MESES DEL AÑO
 Objetivo:
 Escribe un programa en Dart que reciba un número entre 1 y 12
 e imprima el nombre del mes correspondiente del año.
 -------------------------------------------------------------------*/

//importamos libreria para poder tener entrada por teclado 

import 'dart:io';
void main() { print("digita un numero entre el 1 al 12");
 //ejercicio del docente quedo mal explicado falta importar la libreria
 String dato = stdin.readLineSync()!;
 //se convierte el dato de string a int "por alguna razon no dejo con el int" 
int datoInt = int.parse(dato);
//se crea una lista string con los meses teniendo en cuenta que el mes de enero equivale a 0
List<String> mes = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio","Agosto","Septiembre","Octubre", "Noviembre","Diciembre"];
//creamos una condicion donde si es menor a 1 o mayor a 12 no estaria dentro del rango de mes por lo tanto daria error, generando un bucle hasta que el usuario ingrese el dato correcto 
if (datoInt < 1 || datoInt > 12){ 
    print("Error dato incorrecto, lea bien"); 
}
// en caso de elegir la opcion correcta nos muesta el mes con la posicion de la lista restando el 1 para poder posicionar bien la lista 
else {
print("El mes correspondiente es: ${mes[datoInt - 1]}");
}
}

/*-------------------------------------------------------------------
EJERCICIO 4: SUMA DE NÚMEROS PARES EN UNA LISTA
 Objetivo:
 Escribe un programa en Dart que tome una lista de números enteros
 y calcule la suma de todos los números pares en la lista

 Ejemplo:
 Entrada: [1, 2, 3, 4, 5, 6]
 Salida: La suma de los números pares es: 12
 -------------------------------------------------------------------*/

void main() {
  // Se crea una lista de números enteros
  List<int> lista = [1, 2, 3, 4, 5, 6];

  // Se inicializan las variables para almacenar la suma
  // y el total de los números pares
  int p = 0;
  int total = 0;

  // Se recorre cada elemento de la lista
  for (var i in lista) {

    // Se verifica si el número es par
    // Un número es par cuando el residuo de dividirlo entre 2 es 0
    if (i % 2 == 0) {
      // Se acumula el valor del número par
      p += i;

      // Se muestra el número par encontrado
      print("Número par: $i\n");
    }
  }

  // Se guarda la suma total de los números pares
  total = p;

  // Se muestra el resultado final
  print("Para un total de: $total");
}

/*-------------------------------------------------------------------
EJERCICIO 5: FILTRAR PALABRAS ÚNICAS EN UN SET
 Objetivo:
 Escribe un programa en Dart que reciba una lista de palabras con
 algunas repetidas y almacene solo las palabras únicas en un Set.
 Luego, muestra el conjunto resultante.
 Ejemplo:
 Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil"]
 Salida: {dart, flutter, codigo, movil}
-------------------------------------------------------------------*/

void main() {
  // Se crea una lista de palabras que contiene algunos elementos repetidos
  List<String> entrada = ["dart","flutter","dart","codigo","flutter","movil"];

  // Se crea un Set vacío para almacenar únicamente
  // las palabras sin repetir
  Set<String> salida = {};

  // Se recorre cada palabra de la lista
  for (var palabra in entrada) {
    // Se agrega la palabra al Set.
    // Si la palabra ya existe, el Set no la vuelve a almacenar.
    salida.add(palabra);
  }

  // Se imprime el contenido del Set con las palabras únicas
  print(salida);
}


/*
EJERCICIO 6: CONTAR LA FRECUENCIA DE PALABRAS EN UN MAP
 Objetivo:
 Escribe un programa en Dart que reciba una lista de palabras y cuente cuántas
 veces aparece cada una, almacenando en un map.
 Ejemplo:
 Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil", "dart"]
 Salida:  {dart: 3, flutter: 2, codigo: 1, movil: 1}
*/

void main() {
  // Se crea una lista de palabras, algunas de ellas repetidas
  List<String> entrada = ["dart","flutter","dart","codigo","flutter","movil","dart"];

  // Se crea un Map para almacenar cada palabra
  // junto con la cantidad de veces que aparece
  Map<String, int> frecuencia = {};

  // Se recorre cada palabra de la lista
  for (var palabra in entrada) {

    // Se verifica si la palabra ya existe en el Map
    if (frecuencia.containsKey(palabra)) {

      // Si existe, se incrementa su contador en 1
      frecuencia[palabra] = frecuencia[palabra]! + 1;
    } else {

      // Si no existe, se agrega al Map con un valor inicial de 1
      frecuencia[palabra] = 1;
    }
  }

  // Se imprime el Map con la frecuencia de cada palabra
  print(frecuencia);
}
