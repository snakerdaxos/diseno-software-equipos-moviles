/*Objetivo:
 Escribe un programa en Dart que reciba un número entre 1 y 12
 e imprima el nombre del mes correspond
 */

//importamos libreria para poder tener entrada por teclado import 'dart:io';
void main() { print("digita un numero entre el 1 al
12");
 //ejercicio del docente quedo mal explicado falta importar la libreria
 String dato = stdin.readLineSync()!;
 //se convierte el dato de string a int "por alguna razon no dejo con el int" int datoInt =
int.parse(dato);
//se crea una lista string con los meses teniendo en cuenta que el mes de enero equivale a 0
List<String> mes = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio",
"Agosto","Septiembre","Octubre", "Noviembre","Diciembre"];
//creamos una condicion donde si es menor a 1 o mayor a 12 no estaria dentro del rango de mes por lo
tanto daria error, generando un bucle hasta que el usuario ingrese el dato correcto if (datoInt < 1 ||
datoInt > 12){ print("Error dato incorrecto, lea bien"); main();
}
// en caso de elegir la opcion correcta nos muesta el mes con la posicion de la lista restando el 1
para poder posicionar bien la lista else print("El mes correspondiente es: ${mes[datoInt - 1]}");
}

