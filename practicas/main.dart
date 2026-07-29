// 1. app print
//void main() {
//  print("hola");
//}

// 2. app variables
//void main() {
//    var name = "Yeison Caraballo";
//    var age = 31;
//    var example = 41.3;
//  print(name);
//  print(age);
//  print(example);
//}

// 3. app variables numericas
//void main() {
//    int age = 31;
//    int test = -56;
//    int large = 01000000;
//  print(age);
//  print(test);
//  print(large);
//}

// 4. app variables double
//void main() {
//    double age2 = 31.1;
//    double age3 = 31;
//    age2 = 1;
//  print(age2);
//  print(age3);
//}

// 5. app variables num (para evitar error en casos variados.)
//void main() {
//    num age4 = 12;
//    num age5 = 12.1;
//num miValor = 10;
//miValor = 10.5;
//int soloEntero = 10;
//soloEntero = 5.5;

//  print(miValor);
//  print(soloEntero);
//}

// 6. app variables cadena de texto
//void main() {
 //   String name = "AristiDevs";
 //   name = "Yeison";
 //   String currentAge = "31 años";
 //   String fullText = "Soy $name y tengo $currentAge";
 //   print(fullText);
//}

// 7. app conversiones
//void main() {
//    //CONVERSIONES
//    String toNumber = "31";
//   int numbesOK = int.parse(toNumber);
//    print("El numero es $numbesOK");
//    print("----------------------");
//    int numberToString = 615;
//    String stringOK = numberToString.toString();
 //   print(stringOK);
//}

// 8. app operaciones
//void main() {
//String a = "2.3";
//String b = "4.5";
//double numA = double.parse(a);
//double numB = double.parse(b);

//double result = numA + numB;
//print ("Resultado es: $result");
//}

  /*
    📌 EJERCICIO 1: CALCULADORA DE EDAD

    ✅ Objetivo:
    Escribe un programa en Dart que pida al usuario su año de nacimiento
    y calcule su edad actual.

    🔹 Pasos a seguir:
    1️⃣ Pedir al usuario su año de nacimiento (leerlo como String).
    2️⃣ Convertir el año de nacimiento a un número entero.
    3️⃣ Calcular la edad restando el año de nacimiento al año actual (2025).
    4️⃣ Mostrar el resultado en un mensaje como: "Tienes X años."
  */


// 9. calculadora de edad
void main() {
    
  //  Pedir el año de nacimiento
  print("Ingresa tu año de nacimiento:");
  
  //ingreso la edad de 31
  String nacimiento = "1993";

  //  Convertir a entero
  int anioNacimiento = int.parse(nacimiento!);

  //  Calcular la edad
  int edad = 2026 - anioNacimiento ;
  //  Mostrar el resultado
  print("Tienes $edad años.");
}

