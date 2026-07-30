/*
1. GESTOR DE NOTAS CON VALIDACIÓN EN VIVO
Pide al usuario por teclado la cantidad de estudiantes que desea regist rar. Luego, mediante un bucle,
solicita una a una la nota decimal (double) de cada estudiante, rechazando inmediatamente y pidiendo
ingresar de nuevo cualquier valor que no esté entre 0.0 y 5.0. Almacena las notas válidas en una lista
y, con otro ciclo, calcula el promedio general y muestra cuántos estudiantes están en categoría
Aprobado (>= 3.0) y cuántos en Reprobado (< 3.0).
*/


/*
2. CAJERO AUTOMÁTICO DE RETIROS MÚLTIPLES
Solicita al usuario por teclado un saldo inicial de cuenta bancaria. Posteriormente, inicia un bucle que
le permita ingresar montos enteros para realizar retiros uno por uno, guardando cada monto en una
lista de transacciones. Si el usuario ingresa un valor negativo o 0, el programa debe ignorarlo con una
advertencia; si el retiro supera el saldo disponible en ese momento, debe denegar la transacción y
romper el ciclo. Al finalizar, muestra la lista de retiros procesados exitosamente y el saldo restante.
*/

/*
3. FILTRO INTERACTIVO DE INVENTARIO CRÍTICO
Solicita al usuario que ingrese por teclado una lista de existencias de productos separadas por comas
(por ejemplo: 12, 3, 0, 15, 4, 8). Recorre la lista convertida a enteros mediante un bucle y evalúa cada
elemento: si la cantidad es igual a 0, agrégala a una lista de Agotados; si es mayor a 0 pero menor a
5, agrégala a una lista de Reabastecimiento urgente; y si es 5 o más, ignórala. Finalmente, imprime
ambas listas de alerta.
*/

/*
4. CLASIFICADOR DE NOMBRES VÁLIDOS
Solicita al usuario por teclado cuántos nombres de empleados ingresará. En un bucle, pide cada
cadena de texto y guárdalas en una lista. Luego, recorre esa lista y genera una segunda lista con los
nombres considerados "válidos": aquellos que tengan al menos 4 caracteres, no empiecen con un
número y no contengan la palabra "test". Muestra la lista resultante en mayúsculas.
*/

/*
5. ALINEACIÓN DE COMPRAS SIN EXCEDER PRESUPUESTO
Pide por teclado un presupuesto máximo en pesos para compras de supermercado. Luego, solicita al
usuario que vaya ingresando los precios de productos uno tras otro hasta que escriba el número -1
para terminar. Almacena todos los precios en una lista y, recórrela en orden de ingreso para sumar
productos a un "carrito definitivo"; si al sumar un ítem se excede el presupuesto disponible, ese
producto debe omitirse usando una condición, pero el ciclo debe continuar evaluando si productos
posteriores más baratos aún pueden incluirse
*/

/*
6. DEPURACIÓN DE LISTA DE CORREOS ELECTRÓNICOS DESDE CONSOLA
Solicita al usuario que escriba por teclado varios correos electrónicos en una sola línea, separados
por espacios. Transforma la entrada en una lista y recórrela para construir una nueva lista limpia que
cumpla tres condiciones simultáneas: descartar los correos repetidos, descartar aquellos que no
contengan exactamente un símbolo "@", y omitir los que terminen en el dominio ".spam". Muestra en
pantalla cuántos correos fueron descartados en total y la lista limpia resultante.
*/

/*
7. REGISTRO DIARIO DE TEMPERATURAS CON RACHAS
Pide por teclado la cantidad de días (N) que se evaluarán. Con un bucle, solicita al usuario la
temperatura entera en grados Celsius para cada día y guárdalas en una lista. Al finalizar la captura,
recorre la lista para identificar y almacenar en otra lista los índices de los días donde ocurrió una "ola
de calor", definida como cualquier racha en la que la temperatura haya sido estrictamente mayor a
30°C durante al menos 3 días consecutivos.
*/

/*
8. FACTURACIÓN CON IMPUESTOS ESCALONADOS E INTERRUPCIÓN
Solicita al usuario que ingrese por teclado montos de facturas en pesos, deteniendo la captura cuando
escriba "fin" o "salir". Guarda los montos en una lista de tipo decimal (List<double>). Luego, recorre la
lista aplicando una condición de impuesto: 0% si el monto es menor a $100, 10% si está entre $100 y
$500, y 15% si supera los $500. Si alguna factura individual calculada con impuesto supera los $1,000,
interrumpe inmediatamente el procesamiento del resto de la lista con break y reporta la alerta junto
con las facturas procesadas hasta ese momento.
*/

/*
9. BÚSQUEDA DE PICOS EN LECTURAS DE SENSORES
Pide al usuario por teclado que ingrese al menos 5 valores enteros que representen lecturas de voltaje
por minuto, separados por comas. Almacena los valores en una lista y recórrela desde el segundo
hasta el penúltimo elemento para detectar los "picos de voltaje", condicionados como aquellos
elementos que sean estrictamente mayores que su número inmediatamente anterior y su número
inmediatamente posterior. Guarda y muestra una nueva lista que contenga únicamente los valores de
los picos detectados.
*/

/*
10. DESCUENTOS POR ANTIGÜEDAD Y HORAS EXTRA EN NÓMINA
Pide al usuario por teclado cuántos trabajadores se procesarán. En un bucle, solicita para cada
trabajador una línea separada por comas con sus horas trabajadas en la semana y su antigüedad en
años (ejemplo: 45, 3). Guarda estos datos estructurados en una lista. Después, recorre esa lista para
calcular el pago en una nueva lista aplicando dos condiciones: si el empleado trabajó más de 40 horas,
las horas excedentes se pagan al doble; y si además tiene 5 años o más de antigüedad, se le suma
una bonificación fija del 10% sobre el total. Muestra la nómina final calculada.
*/
