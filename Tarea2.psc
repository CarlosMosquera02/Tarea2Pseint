//1) Leer un carácter y deducir si está o no comprendido entre las letras 'a'... z' y 'A'...'Z' 
//ambas inclusive y sino verificar si es un signo de puntuacion ", . ; :" y si no presentar solo el carácter.
// Entrada: Definir la variable car=""?(leer)
// Proceso: Utilizaremos el comando si-entonces para evaluar el carácter ingresado por el usuario 
//según las condiciones dadas
// Salida: Presentar el mensaje correspondiente segun lo que ingresó el usuario
Funcion Ejercicio1
    Definir car Como Caracter
    Escribir "Ingrese un carácter a deducir:"
    Leer car
    Si (car >= 'a' Y car <= 'z') O (car >= 'A' Y car <= 'Z') Entonces
        Escribir "El cáracter ", car, " es una letra."
    SiNo
        Si car = ',' O car = '.' O car = ';' O car = ':' Entonces
            Escribir "El cáracter ", car, " es un signo de puntuación."
        SiNo
            Escribir "El cáracter ", car, " es otro tipo de caracter."
        Fin Si
    Fin Si
FinFuncion

//2) Leer un carácter y deducir si este es un número(0..9) o una vocal(a,e,i,o,u)
// Entrada: Definir la variable carac=""?(leer)
// Proceso: Utilizaremos el comando si-entonces para comparar el carácter ingresado por el usuario
//según las condiciones dadas
// Salida: Presentar el mensaje correspondiente segun lo que ingresó el usuario
Funcion Ejercicio2
	Definir carac Como Caracter
    Escribir "Escriba un carácter a evaluar:"
    Leer carac
    Si carac >= "0" Y carac <= "9" Entonces
        Escribir "El carácter ingresado es un número."
    SiNo
		carac=Minusculas(carac)
        Si carac = "a" O carac = "e" O carac = "i" O carac = "o" O carac = "u" Entonces
            Escribir "El carácter ingresado es una vocal."
        SiNo
            Escribir "El carácter ingresado NO es número ni vocal!"
        Fin Si
    Fin Si	
FinFuncion

//3) Dado un caracter vocal presentar su respectivo valor ASCII
// Entrada: Definir las variables vocales=0?(arreglo), vocal=""?(leer)
//asignar la dimension al arreglo: Dimension vocales[10]
//llenar el arreglo según los valores ASCII para vocales minusculas y mayusculas
// Proceso: Se solicita al usuario que ingrese una vocal
//se utiliza el comando según para identificar el valor ASCII correspondiente a la vocal ingresada por el usuario
// Salida: Presentar el valor ASCII, de otro modo presentar "No ha ingresado una vocal!"
Funcion Ejercicio3
	Definir vocales Como Entero
	Definir vocal Como Caracter
	Dimension vocales[10]
	vocales[0]=97  // 'a'
    vocales[1]=101 // 'e'
    vocales[2]=105 // 'i'
    vocales[3]=111 // 'o'
    vocales[4]=117 // 'u'
	vocales[5]=65  // 'A'
	vocales[6]=69  // 'E'
	vocales[7]=73  // 'I'
	vocales[8]=79  // 'O'
	vocales[9]=85  // 'U'
	Escribir "Anote la vocal para identificar su valor ASCII:"
    Leer vocal
	Segun vocal Hacer
		"a":
			Escribir "El valor ASCII de", " a " "es: ",vocales[0]
		"e":
			Escribir "El valor ASCII de", " e " "es: ",vocales[1]
		"i":
			Escribir "El valor ASCII de", " i " "es: ",vocales[2]
		"o":
			Escribir "El valor ASCII de", " o " "es: ",vocales[3]
		"u":
			Escribir "El valor ASCII de", " u " "es: ",vocales[4]
		"A":
			Escribir "El valor ASCII de", " A " "es: ",vocales[5]
		"E":
			Escribir "El valor ASCII de", " E " "es: ",vocales[6]
		"I":
			Escribir "El valor ASCII de", " I " "es: ",vocales[7]
		"O":
			Escribir "El valor ASCII de", " O " "es: ",vocales[8]
		"U":
			Escribir "El valor ASCII de", " U " "es: ",vocales[9]
		De Otro Modo:
			Escribir "No ha ingresado una vocal"
	Fin Segun
FinFuncion

//4) Leer dos nombres y verificar si estos son iguales, si el primer nombre es menor que el segundo dado su contenido.
// Entrada: Definir las variables name1=""?(leer), name2=""?(leer)
// Proceso: Utilizaremos el comando si-entonces para identificar si los nombres son iguales o si el primer nombre es menor
//que el segundo según su contenido 
// Salida: Presentar mensaje según la condición que se cumpla o en caso de que no se cumpla ninguna condición anterior
Funcion Ejercicio4
	Definir name1, name2 Como Caracter
	Escribir "Ingrese el primer nombre:"
	Leer name1
	Escribir "Ingrese el segundo nombre:"
	Leer name2
	Si name1=name2 Entonces
		Escribir "Los nombres ingresados son iguales."
	SiNo
		Escribir "Los nombres ingresados son diferentes."
		Si Longitud(name1) < Longitud(name2) Entonces
			Escribir "El contenido del primer nombre, es menor que el del segundo."
		SiNo
			Escribir "El contenido del primer nombre, NO es menor que el del segundo."
		Fin Si
	Fin Si
	
FinFuncion

//5) Ingresar dos numeros y determinar si son iguales o si el primer numero es menor que el segundo dado su valor.
// Entrada: Definir las variables num1=0?(leer), num2=0?(leer)
// Proceso: Utilizaremos el comando si-entonces para comparar si los dos numeros ingresados son iguales 
//o si el primer numero ingresado es menor que el segundo 
// Salida: Presentar mensaje según la condición que se cumpla o en caso de que no se cumpla ninguna condición anterior
Funcion Ejercicio5
	Definir num1, num2 Como Real
	Escribir "Escriba el primer número:"
	Leer num1
	Escribir "Escriba el seguno número:"
	Leer num2
	Si num1=num2 Entonces
		Escribir "Los números ingresados son iguales."
	SiNo
		Si num1<num2 Entonces
			Escribir "El primer número dado es menor que el segundo."
		SiNo
			Escribir "El primer número dado NO es igual, ni menor que el segundo."
		Fin Si
	Fin Si
FinFuncion

//6) Ingresar 3 números, determinar cuál es el mayor o si son iguales
Funcion Ejercicio6
	//Entrada
	Definir n1, n2, n3 Como Real //defino variables
	Escribir "Ingrese tres números a identificar:" //solicito los números
	Leer n1, n2, n3 //leo los números ingresados
	//Proceso
	Si n1>n2 y n1>n3 Entonces //condición si el primer número es mayor
		Escribir "El número mayor entre estos es: ",n1 //muestra mensaje para n1 (Salida)
	SiNo
		Si n2>n1 y n2>n3 Entonces //condición si el segundo número es mayor
			Escribir "El número mayor entre estos es: ",n2 //muestra mensaje para n2 (Salida)
		SiNo
			Si n3>n1 y n3>n2 Entonces //condición si el tercer número es mayor
				Escribir "El número mayor entre estos es: ",n3 //muestra mensaje para n3 (Salida)
			SiNo
				Si n1=n2 y n1=n3 Entonces //condición si los números son iguales
					Escribir "Estos números son iguales." //muestra mensaje para números iguales (Salida)
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinFuncion

//7) Ingresar un numero y determinar si es neutro, positivo o negativo
Funcion Ejercicio7
	//Entrada
	Definir nume Como Real //defino variable
	Escribir "Escriba el número a determinar:" //solicito número
	Leer nume //leo número escrito
	//Proceso 
	Si nume>0 Entonces //condición si el número es positivo, es decir, mayor a cero
		Escribir "El número dado es positivo." //muestra mensaje (Salida)
	SiNo
		Si nume<0 Entonces //condición si el número es negativo, es decir, menor a cero
			Escribir "El número dado es negativo." //muestra mensaje (Salida)
		SiNo
			Escribir "El número es neutro." //muestra mensaje si el número es cero, es decir, neutro (Salida)
		Fin Si
	Fin Si
FinFuncion

//8) Determinar cuánto se debe pagar por x cantidad de lápices, considerando que si son más de 1000, el costo 
//es de 1, caso contrario el precio será 1,50.
Funcion Ejercicio8
	//Entrada
	Definir cant Como Entero //defino variable
	Definir cost Como Real //defino variable
	Escribir "Anote la cantidad de lápices que va a comprar:" //solicito la cantidad de lápices a adquirir
	Leer cant //leo la cantidad
	//Proceso 
	Si cant>1000 Entonces //condición para calcular el pago según la cantidad de lápices
		cost=cant*1.00 //operación a realizar si son más de 1000 lápices
	SiNo
		cost=cant*1.50 //operación a realizar si no se cumple la condición
	Fin Si
	//Salida
	Escribir "El total a pagar por ",cant," lápices es: $",cost,"." //muestra cuánto se debe pagar
FinFuncion

//9) Almacén "Somos Mas" tiene una promoción: a todos los trajes que tienen un precio superior a 2500, se les aplicará 
//un descuento del 15%, a todo los demás se les aplicará sólo el 8%.
Funcion Ejercicio9
	//Entrada
	Definir prec, desc, tot Como Real //defino variables
	Escribir "Ingrese el precio del traje:" //solicito precio del traje
	Leer prec //leo precio
	//Proceso 
	Si prec>2500 Entonces //condición para realizar el descuento según el precio
		desc=prec*0.15 //calcula el 15% de descuento
	SiNo
		desc=prec*0.08 //calcula el 8% de descuento
	Fin Si
	tot=prec-desc //calcula el precio después del descuento
	//Salida
	Escribir "Precio del traje: $",prec //muestra el precio del traje
	Escribir "Descuento: $",desc //muestra el descuento realizado
	Escribir "Precio Final: $",tot //muestra el precio despues del descuento
FinFuncion

//10) "Somos Mas" es una empresa dedicada a ofrecer banquetes; sus tarifas son las siguientes:
//El costo de platillo por persona es de $95.00, pero si el número de personas es mayor a 200 pero menor o igual a 300, 
//el costo es de $85.00. Para más de 300 personas el costo por platillo es de $75.00. Se requiere un algoritmo que ayude 
//a determinar el presupuesto que se debe presentar a los clientes que deseen realizar un evento.
Funcion Ejercicio10
	//Entrada
	Definir nper Como Entero //defino variable
	Definir costop, presup Como Real //defino variables
	Escribir "Ingrese el número de personas invitadas al evento:" //solicito número de personas
	Leer nper //leo número de personas
	//Proceso 
	Si nper<=200 Entonces //condición si el número de pers. es menor o igual a 200
		costop=95.00 //valor del platillo por persona
	SiNo
		Si nper>200 y nper<=300 Entonces //condición si el número de pers. es mayor a 200 y menor o igual a 300
			costop=85.00 //valor del platillo por persona 
		SiNo
			Si nper>300 Entonces //condicion si el número de pers. es mayor a 300
				costop=75.00 //valor del platillo por persona
			Fin Si
		Fin Si
	Fin Si
	presup=nper*costop //operación a realizar para calcular el valor total que se presentará a los clientes
	Escribir "Costo del platillo por persona: $",costop //muestra el precio del platillo por persona
	Escribir "Presupuesto total: $",presup //muestra el valor total, es decir, el presupuesto a presentar al cliente
FinFuncion

Funcion Ejercicio11
	//La asociación de vinicultores tiene como política fijar un precio inicial al kilo
	//de uva, la cual se clasifica en tipos A y B, y además en tamaños 1 y 2.
	//Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se
	//requiere determinar cuánto recibirá un productor por la uva que entrega en un
	//embarque, considerando lo siguiente:Si es de tipo A, se le cargan 20¢ al precio
	//inicial cuando es de tamaño 1; y 30¢ si es de tamaño 2. Si es de tipo B, se rebajan
	//30¢ cuando es de tamaño 1, y 50¢ cuando es de tamaño 2.
	//Realice un algoritmo para determinar la ganancia obtenida
	//inicia solicitando al usuario el tipo y tamaño de la uva que entrega.
	//Luego, se determina el precio inicial de acuerdo al tipo de uva. Después, 
	//se calcula la ganancia que el productor obtendrá considerando el tamaño de la uva.
	//Finalmente, se presentan los resultados al usuario.
	Escribir "Ingrese el precio inicial de la uva ";
    leer precioInicial;
    Escribir "Ingrese el tipo de la uva (A/B) ";
    Leer tipo;
    Escribir "Ingrese el tamaño de la uva (1/2) ";
    Leer tamaño;
	
    Si tipo = "A" Entonces
		Si tamaño = 1 Entonces
			
		FinSi
		ganancia = precioInicial + 0.20;
    SiNo
		ganancia = precioInicial + 0.30;
	FinSi
	Si tipo = "B" Entonces;
		Si tamaño = 1 Entonces;
			ganancia = precioInicial - 0.30;
		SiNo
			ganancia = precioInicial - 0.50;
		FinSi
	FinSi
	
	Escribir "La ganancia obtenida por el productor es $" ganancia;
FinFuncion

Funcion Ejercicio12
	//El director de carrera de software está organizando un viaje de estudios,
	//y requiere determinar cuánto debe cobrar a cada alumno y cuánto debe pagar
	//a la compañía de viajes por el servicio. La forma de cobrar es la siguiente:
	//si son 100 alumnos o más, el costo por cada alumno es de $65.00;
	//de 50 a 99 alumnos, el costo es de $70.00, de 30 a 49, de $95.00, y si son menos
	//de 30, el costo de la renta del autobús es de $4000.00, sin importar el número
	//de alumnos.Realice un algoritmo que permita determinar el pago a la compañía
	//de autobuses y lo que debe pagar cada alumno por el viaje
	//inicia solicitando al usuario la cantidad de alumnos que participarán en el viaje de estudios. 
	//Luego, se determina el costo individual por alumno y el costo total de todos los alumnos 
	//en función de las condiciones establecidas
	//en el enunciado. Además, se calcula el pago necesario a la compañía de autobuses.
	//Finalmente, se presentan los resultados al usuario.
	Definir  cantidadAlumnos como entero;
	Definir costoPorAlumno , costoTotal , costoCompañia como real;
	
	Escribir "Escribir cuantos alumnos van a viajar ";
	Leer cantidadAlumnos;
	
	Si cantidadAlumnos >= 100 entonces
		costoPorAlumno = 65.00;
	Sino Si cantidadAlumnos >= 50 entonces
			costoPorAlumno = 70.00;
		Sino Si cantidadAlumnos >= 30 entonces
				costoPorAlumno = 95.00;
			Sino
				costoPorAlumno = 0.00; 
			Fin Si
        FinSi
    FinSi
	
    costoTotal = cantidadAlumnos * costoPorAlumno;
    Si cantidadAlumnos < 30 entonces
		costoCompañia = 4000.00;
	Sino
		costoCompañia = 0.00;
	Fin Si
	
	Escribir "El costo por alumno es de $"  costoPorAlumno;
    Escribir "El costo total del viaje para los alumnos es de $" costoTotal;
    Escribir "El Pago para la compañía de autobuses es de $" costoCompañia;	
FinFuncion

Funcion Ejercicio13
	//Una compañía de viajes cuenta con tres tipos de autobuses (A, B y C),
	//cada uno tiene un precio por kilómetro recorrido por persona, los costos respectivos son $2.0,
	//$2.5 y $3.0. Se requiere determinar el costo total y por persona del viaje considerando que
	//cuando éste se presupuesta debe haber un mínimo de 20 personas, de lo contrario el cobro se
	//realiza con base en este número límite.
	//permite que el usuario seleccione el tipo de autobús y proporcione el número de personas que participarán en el viaje. 
	//Luego, calcula el costo individual por persona y el costo total del viaje. 
	//Además, verifica si el número de personas es menor que 20 y, en ese caso, 
	//establece automáticamente el número de personas en el mínimo requerido, que es 20.
	Definir tipoA, tipoB, tipoC, costoTotal, costoPorPersona Como Real
    Definir cantidadPersonas Como Entero
	Definir tipoAutobus Como Caracter
    
    tipoA <- 2.0
    tipoB <- 2.5
    tipoC <- 3.0
    
    Escribir "Ingrese la cantidad de personas: "
    Leer cantidadPersonas
    
    Si cantidadPersonas >= 20 Entonces
        
        Escribir "Seleccione el tipo de autobús en Mayuscula (A, B o C): "
        Leer tipoAutobus
        
        Segun tipoAutobus
            Caso "A":
                costoTotal <- tipoA * cantidadPersonas
            Caso "B":
                costoTotal <- tipoB * cantidadPersonas
			Caso "C":
				costoTotal <- tipoC * cantidadPersonas
			De Otro Modo:
				Escribir "Tipo de autobús no válido."
                costoTotal <- 0.0
        FinSegun
        costoPorPersona <- costoTotal / cantidadPersonas
        
        Escribir "El costo total del viaje es: ", costoTotal
        Escribir "El costo por persona es: ", costoPorPersona
	Sino
        Escribir "El viaje debe tener un mínimo de 20 personas."
    FinSi
FinFuncion

Funcion Ejercicio14
	//Determinar cuanto se debe pagar por cierta cantidad de colas,
	//considerando que si son más de 23 colas, el costo por unidad
	//es de $0,50 caso contrario el precio será 20% mas.
	//Al costo resultante calcular el 12% del iva. Se pide presentar:
	//cantidad comprada, el costo ´por unidad, el total sin iva
	//el iva y el total a pagar
	//En primer lugar, se solicita la cantidad de colas que se desean comprar. 
	//Luego, el programa calcula el costo por unidad, el total sin incluir el IVA, el monto del IVA y,
	//finalmente, el costo total a pagar, todo de acuerdo a las condiciones establecidas en el problema. 
	//Finalmente, se presentan los resultados al usuario.
	Definir TotalVompra como entero;
	Definir CostoPorUnidad , TotalSinIva , Iva, TotalAPagar Como Real;
	
    escribir "Ingrese la cantidad de colas compradas ";
    Leer TotalCompra;
	
	si TotalCompra > 23 Entonces;
		CostoPorUnidad = 0.500;
	SiNo
		CostoPorUnidad = 0.50 * 1.20;
    FinSi
	
	TotalSinIva = totalcompra * CostoPorUnidad;
	Iva = 0.12 * TotalSinIva;
	TotalAPagar = TotalSinIva + Iva;
    escribir "Cantidad comprada: $", TotalCompra;
    escribir "Costo por unidad: $", costoporUnidad;
    ESCRIBIR "Total sin iva: $", totalSinIva;
    ESCRIBIR "Iva: $", Iva;
    ESCRIBIR "Total a pagar: $", TotalAPagar;
FinFuncion

Funcion Ejercicio15
//	En un Supermercado se tiene la siguiente promocion.
//	Si se compra mas de 19 productos a estos se le aplica
//	un descuento del 10 por ciento al precio del producto y si se compra
//	menos de 20 productos se le aplica un descuento del 20 por ciento
//	al precio del producto. Al costo obtenido se le aplica descuento
//	adicional del 5 por ciento. Se pide presentar :
//	antidad comprada, el precio orginal, el descuento inicial
//	el total, el descuento adicional y el valor a pagar.
//	se comienza solicitando la cantidad de productos adquiridos y el precio original por unidad.
//	A continuación, se realiza el cálculo del descuento inicial, el costo total de la compra, el descuento adicional y 
//	el monto total a pagar. Estos cálculos se basan en las condiciones específicas de la promoción del supermercado.
//	Por último, los resultados son presentados al usuario.
	Definir cantidadProductos como entero;
	Definir precioUnitario , precioOriginal ,descuentoInicial Como Real;
	Definir totalSinDescuento , descuentoAdicional , totalaPagar Como Real;
	
	Escribir "Por favor, ingrese la cantidad de productos adquiridos ";
	Leer cantidadProductos;
	Escribir "Ingrese el precio del articulo ";
	Leer precioArticulo;
	precioOriginal = cantidadProductos * precioArticulo;
	Si cantidadProductos > 19 entonces
		descuentoInicial = 0.10 * precioOriginal;
	Sino
		descuentoInicial = 0.20 * precioOriginal;
	Fin Si
	
	total = precioOriginal - descuentoInicial;
	descuentoAdicional = 0.05 * total;
	totalAPagar = total - descuentoAdicional;
	
	Escribir "Cantidad de productos comprados: " CantidadProductos ;
	Escribir "Precio original: $"  PrecioOriginal;
	Escribir "Descuento inicial: $"  descuentoInicial;
	Escribir "Total : $"  Total;
	Escribir "Descuento adicional: $"  DescuentoAdicional;
	Escribir "Monto a pagar: $"  TotalaPagar;
FinFuncion

Funcion Ejercicio16
	//16) El consultorio del Dr. Paez tiene como política cobrar la consulta  con base en el número de cita, de la siguiente forma: 
	//Las tres primeras citas a $200.00 c/u. 
	//Las siguientes dos citas a $150.00 c/u. 
	//Las tres siguientes citas a $100.00 c/u. 
	//Las restantes a $50.00 c/u, mientras dure el tratamiento. 
	//Se requiere un algoritmo para determinar: 
	//Cuánto pagará el paciente por la cita. 
	//El monto de lo que ha pagado el paciente por el tratamiento. 
	//Para la solución de este problema se requiere saber qué número de cita se  efectuará, 
	//con el cual se podrá determinar el costo que tendrá la consulta  y cuánto se ha gastado en el tratamiento. 
	//entrada definir num_cita(leida), pago=0, monto=0  como entero
	//Proceso usar condicion si para cada Caso 
	//salida mostrar monto que ha pagado, monto
	//mostrar valor a pagar por la cita, pago
	Definir num_cita Como Entero
	Escribir "Ingrese las citas que va a realizar"
	leer num_cita
	pago=0
	monto=0
	si num_cita >=1 y num_cita <=3 Entonces
		pago=200
		monto=num_cita*200
	FinSi
	si num_cita >=4 y num_cita <=5 Entonces
		pago=150
		monto=150*(num_cita-3)+3*200
	FinSi
	si num_cita >=6 y num_cita <=8 Entonces
		pago=100
		monto=100*(num_cita-5)+3*200+2*150
		
	FinSi
	si num_cita >=9 Entonces
		pago=50
		monto=50*(num_cita-8)+3*200+2*150+2*100
	FinSi
	Escribir "Monto total a pagar es: ", monto
	Escribir "Valor por la cita: ", pago
FinFuncion

Funcion Ejercicio17
	//17) Fábricas "El Baraton" produce articulos con claves (1, 2, 3, 4, 5 y 6). 
	//Se  requiere
	//un algoritmo para calcular los precios de venta, para esto hay  que considerar lo 
	//siguiente: 
	//Costo de producción = materia prima + mano de obra + gastos de  fabricación. 			
	//Precio de venta = costo de producción + 45 % de costo de producción. 
	//El costo de la mano de obra se obtiene de la siguiente forma: 
	//para los  productos con clave 3 o 4 se carga 75 % del costo de la materia prima;  
	//para los que tienen clave 1 y 5 se carga 80 %, y para los que tienen  clave 2 o 6, 85 %. 
	//Para calcular el gasto de fabricación se considera que si el articulo que se  va a 
	//producir tiene claves 2 o 5, 
	//este gasto representa 30 % sobre el costo  de la  
	//materia prima; 
	//si las claves son 3 o 6, representa 35 %; 
	//si las claves  son 1 o 4, 
	//representa 28 %. La materia prima tiene el mismo costo para  cualquier clave 	
	//entrada Definir clave=(Leida), mano_obra=0, gasto_fabricacion=0
	//costo_produccion=materia_prima+mano_obra+gasto_fabricacion  , precio_venta=costo_produccion+(costo_produccion*0.45)  
	//Proceso leer clave y con condicion si, 
	//segun la clave ingresada, mano_obra=materia_prima*(porcentaje)
	//segun la clave ingresada, gasto_fabricacion=materia_prima*(porcentaje)
	//salida Escribir costo de produccion y precio de venta
	definir costo_produccion, precio_venta, clave Como Real
	Escribir "Ingrese clave"
	Leer clave
	Escribir "Ingrese valor de materia prima"
	leer materia_prima
	mano_obra=0
	si clave=3 o clave=4 Entonces
		mano_obra=materia_prima*0.75
	FinSi
	si clave=1 y clave=5 Entonces
		mano_obra=materia_prima*0.80
	FinSi
	si clave=2 o clave=6 Entonces
		mano_obra=materia_prima*0.85
	FinSi
	gasto_fabricacion=0
	si clave=2 o clave=5 Entonces
		gasto_fabricacion=materia_prima*0.30
	FinSi
	si clave=3 o clave=6 Entonces
		gasto_fabricacion=materia_prima*0.35
	FinSi
	si clave=1 o clave=4 Entonces
		gasto_fabricacion=materia_prima*0.28
	FinSi
	costo_produccion=materia_prima+mano_obra+gasto_fabricacion
	precio_venta=costo_produccion+(costo_produccion*0.45)
	Escribir "Costo de produccion es: ", costo_produccion
	Escribir "Precio de venta es: ", precio_venta
FinFuncion

Funcion Ejercicio18
	//18) El banco XYZ ha decidido aumentar el límite de  crédito de las tarjetas de crédito de sus clientes,  para esto considera que: 
	//Si su cliente tiene tarjeta tipo 1, el aumento será del  25%. 
	//Si tiene tipo 2 el aumento será del 35% 
	//Si tiene tipo 3, el aumento será del 40% 
	//Para cualquier otro tipo será del 50% 
	//Realizar un diagrama de flujo que ayude al banco a determinar el nuevo límite 
	//de crédito que  tendrá una persona en su tarjeta 
	//entrada definir tipo(leida) como entero
	//Definir limite(leida), aumento como real
	//proceso usamos condicion si para cada tipo de tarjeta
	//si tipo=(leida)== aumento=(limite*(porcentaje))
	//salida escribir aumento y aumento+limite=="total aumentado"
	Definir tipo Como Entero
	definir limite, aumento Como Real
	Escribir "Ingrese su limite de credito"	
	leer limite
	Escribir "Ingrese el tipo de su tarjeta"
	leer tipo
	aumento=0
	si tipo=1 Entonces
		aumento=(limite*0.25)
	FinSi
	si tipo=2 Entonces
		aumento=(limite*0.35)
	FinSi
	si tipo=3 Entonces
		aumento=(limite*0.40)
	FinSi
	si tipo>3 Entonces
		aumento=(limite*0.50)
	FinSi
	
	Escribir "Su aumento será de $", aumento
	Escribir "Su limite ha aumentado: ", aumento+limite
FinFuncion

Funcion Ejercicio19
	//19) Una compañía de paquetería internacional tiene servicio en algunos países  de  América del Norte, América Central, América del Sur, Europa y Asia. 
	//El  costo por el servicio de paquetería se basa en el peso del paquete y la  zona a la que va  dirigido. Ver tabla 
	//Parte de sus políticas implica que los paquetes con un peso superior a 5kg 
	//no son transportados , esto es por cuestión de logística y de seguridad. 
	//entrada definimos peso(Leida), zona(leida) 
	//Proceso Usamos la funcion mientras para que seleccione el dato correcto en zona
	//usamos funcion mientras si ingresa valor mayor a 5 en peso para indicar que no se puede transportar
	//usamos las condiciones si para cada zona
	//si zona(leida) entonces costo_gramo=peso*(precio segun zona)
	//salida Escribir costo_gramo y precio
	Definir peso Como Real
	Definir zona Como Entero
	Escribir "Ingrese la zona"
	Escribir "Zona 1: America del norte"
	Escribir "Zona 2: America central"
	Escribir "Zona 3: America del sur"
	Escribir "Zona 4: Europa"
	Escribir "Zona 5: Asia"
	leer zona
	Mientras zona>5 Hacer
		Escribir "Dato incorrecto. Intente de nuevo"
		leer zona
	FinMientras
	Escribir "Ingrese el peso en Kilogramos"
	leer peso
	Mientras peso >5 Hacer
		Escribir "No se puede transportar paquetes de mas de 5 Kg"
		leer peso
	FinMientras
	
	si zona=1 Entonces
		costo_gramo=11
		precio=costo_gramo*peso
		Escribir "Costo por Kg es de: ", costo_gramo
		Escribir "Total de envio: ", precio
	FinSi
	si zona=2 Entonces
		costo_gramo=10
		precio=costo_gramo*peso
		Escribir "Costo por Kg es de: ", costo_gramo
		Escribir "Total de envio: ", precio
	FinSi
	si zona=3 Entonces
		costo_gramo=12
		precio=costo_gramo*peso
		Escribir "Costo por Kg es de: ", costo_gramo
		Escribir "Total de envio: ", precio
	FinSi
	si zona=4 Entonces
		costo_gramo=24
		precio=costo_gramo*peso
		Escribir "Costo por Kg es de: ", costo_gramo
		Escribir "Total de envio: ", precio
	FinSi
	si zona=5 Entonces
		costo_gramo=27
		precio=costo_gramo*peso
		Escribir "Costo por Kg es de: ", costo_gramo
		Escribir "Total de envio: ", precio
	FinSi
FinFuncion

Funcion Ejercicio20
	//20) Se desea realizar una estadistica de los pesos de los alumnos
	//de la UNEMI de acuerdo a la siguiente tabla 
	//alumnos de menos 40 kg  
	//alumnos entre 40 y 50 kg 
	//alumnos mas de 50 y menos de 60 kg 
	//alumnos mas de 60 kg. 
	//La entrada de los pesos se terminará cuando se ingrese el valor del arreglo
	//de peso cero. 
	//Al final deberá presentar cuantos alumnos hay por 
	//rango de pesos y el promedio de cada rango. 
	//entrada peso[100]
	//leer pos
	//Proceso
	//ciclo para leer los arreglos
	//ciclo para usar la condicion si segun el peso
    //Escribir promedios
    //pes=peso[x]
    //promedio=(pes+promedio)/rango2
	//promedio=suma / rango
	//salida Escribir promedio
	Escribir "Ingrese cantidad de personas"
	Dimension peso[100]
	Leer pos
	para x=1 hasta pos Con Paso 1 Hacer
		Escribir "Escriba el peso de la persona ",x
		leer peso[x]
	FinPara
	para x=1 hasta pos Con Paso 1 Hacer
		si peso[x]<40 Entonces
			rango1=rango1+1
		FinSi
		si peso[x]>=40 y peso[x]<=50 Entonces
			rango2=rango2+1
		FinSi
		si peso[x]>50 y peso[x]<60 Entonces
			rango3=rango3+1
		FinSi
		si peso[x]>=60 Entonces
			rango4=rango4+1
		FinSi
	FinPara
	Escribir "Rangos de pesos"
	Escribir "1) Personas menos de 40 kg: ", rango1
	Escribir "2) Personas entre 40 y 50 kg: ", rango2
	Escribir "3) Personas entre 50 y 60 kg: ", rango3
	Escribir "4) Personas mas de 60 kg: ", rango4
	
	Escribir "Promedio 1: "
	para x=1 hasta pos Con Paso 1 Hacer
		pes=peso[x]
		promedio=(pes+promedio)/rango1
	FinPara
	Escribir promedio
	Escribir "Promedio 2: "
	para x=1 hasta pos Con Paso 1 Hacer
		pes=peso[x]
		promedio=(pes+promedio)/rango2
	FinPara
	Escribir promedio
	Escribir "Promedio 3: "
	para x=1 hasta pos Con Paso 1 Hacer
		pes=peso[x]
		promedio=(pes+promedio)/rango3
	FinPara
	Escribir promedio
	Escribir "Promedio 4: "
	para x=1 hasta pos Con Paso 1 Hacer
		pes=peso[x]
		promedio=(pes+promedio)/rango4
	FinPara
	Escribir promedio
FinFuncion

//21) Escribir un algoritmo que lea cuatro números y determine si el numero 1 es la mitad del numero 2; Y si el numero 3 es divisor del 4.
//Entrada a(Leer),b(Leer),c(Leer),d(Leer)
//Proceso: 
//Si a * 2 = b Entonces Escribir "La mitad del número 1 es la mitad del número 2 : "
//Sino  Escribir "La mitad del número 1 no es la mitasd del número 2:"
//Si d % c = 0 Entonces Escribir "El número 3 es dividor del número 4"
//Sino Escribir "El número 3 no es el  dividor del número 4"
//Salida:el texto segun la condicion
Funcion Ejercicio21
	Definir a,b,c,d Como Entero 
	Escribir "Ingresar 4 números "
	leer a,b,c,d 
	
	Si a * 2 = b Entonces
		Escribir "La mitad del número 1 es la mitad del número 2 : "
	Sino 
		Escribir "La mitad del número 1 no es la mitasd del número 2:"
		
	Finsi 
	
	Si d % c = 0 Entonces
		Escribir "El número 3 es dividor del número 4"
	Sino 
		Escribir "El número 3 no es el  dividor del número 4"
		
	FinSi
FinFuncion

//22) Escribir un algoritmo que lea tres números y determine si el numero 1 es el doble del numero 2 y 20% menos que el numero 3.
//Entrada num1(Leer),num2(Leer),num3(Leer)
//Proceso 
//si num1 = num2*2 y num1 = num3 * 0.8 Entonces escribir "el numero 1 si es el doble del numero 2 y el 20% del numero 3"
//SiNo Escribir "el numero 1 no es el doble del numero 2 y no hay 20% del numero 3"
//Salida  el texto segun la condicion
Funcion Ejercicio22
	definir num1, num2, num3 Como Entero
	Escribir "digite numero 1"
	Leer num1
	escribir "digite numero 2"
	Leer num2
	Escribir "digite numero 3"
	Leer num3
	si num1 = num2*2 y num1 = num3 * 0.8 Entonces
		escribir "el numero 1 si es el doble del numero 2 y el 20% del numero 3"
		
	SiNo
		Escribir "el numero 1 no es el doble del numero 2 y no hay 20% del numero 3"
	FinSi
FinFuncion

//23) Realizar un programa que ingrese un número presentar un mensaje equivalente a los días de la semana.
//entrada: num (leer)
//Proceso segun num hacer 1: Escribir "el dia es lunes" si es dos el martes y asi sucesivamente hasta el 7 domingo 
//	De Otro Modo:
//		Escribir "error el numero no coincide con los dias de la semana "
//salida: presentar el dia que corresponde
Funcion  Ejercicio23
	definir num como entero
	
	escribir "dijite un numero del 1 al 7"
	leer num
	
	segun num hacer
		1: 
			Escribir "el dia es lunes"
		2: 
			Escribir "el dia es martes"
		3: 
			escribir "el dia es miercoles"
		4: 
			escribir "el dia es jueves"
		5: 
			Escribir "el dia es viernes"
		6: 
			Escribir "el dia es sabado"
		7: 
			Escribir "el dia es domingo"
		De Otro Modo:
			Escribir "error el numero no coincide con los dias de la semana "
	FinSegun
FinFuncion

//24) Realizar un programa que ingrese un número presentar un mensaje equivalente a los nombres de los meses del año
//Entrada num(Leer)
//Proceso 
//segun num hacer si es 1 Escribir "el mes es enero", 2 si es marzo asi sucesivamente hasta	12 diciembre
//		Escribir "el mes es diciembre"	
//	De Otro Modo:
//		Escribir "error el numero ingresdo no conicide con el numero de mes"
//FinSegun
//Salida  segun el numero presentar el mes
Funcion  Ejercicio24
	definir num como entero
	
	escribir "dijite un numero del 1 al 12"
	leer num
	
	segun num hacer
		1: 
			Escribir "el mes es enero"
		2: 
			Escribir "el mes es febrero"
		3: 
			escribir "el mes es marzo"
		4: 
			escribir "el mes es abril"
		5: 
			Escribir "el mes es mayo"
		6: 
			Escribir "el mes es junio"
		7: 
			Escribir "el mes es julio"
		8:
			escribir "el mes es agosto"
		9:
			Escribir "el mes es septiembre"
		10:
			Escribir "el mes es octubre"
		11:
			Escribir "el mes es noviembre"
		12:
			Escribir "el mes es diciembre"
			
		De Otro Modo:
			Escribir "error el numero ingresdo no conicide con el numero de mes"
	FinSegun
FinFuncion

//25) Se requiere un algoritmo para obtener la estatura promedio de un grupo de personas, cuyo número de personas se desconoce, el ciclo debe efectuarse siempre y cuando se tenga una
//estatura registrada.
//Entrada estatura(Leer),suma(Calcular),promedio(Calcular),x(cosntante),total(Calcular)
//Proceso
//mientras x<= total Hacer
//	Escribir "ingrese la estatura"
//	leer estatura
//	suma=suma+estatura
//	x=x+1
//FinMientras
//promedio = suma/total
//salida promedio
Funcion  Ejercicio25
	definir estatura, suma, promedio como real
	definir x, total Como Entero
	Escribir "ingrese el total de personas"
	leer total
	x=1
	suma=0
	mientras x<= total Hacer
		Escribir "ingrese la estatura"
		leer estatura
		suma=suma+estatura
		x=x+1
	FinMientras
	promedio = suma/total
	
	Escribir "la estatura de grupo es: ",promedio
FinFuncion

//26) Realizar un algoritmo para generar e imprimir los números pares comprendidos entre 0 y 100
//entrada num(Leer) 
//Proceso
//mientras num<=100 Hacer
//	si num mod 2==0
//		escribir num
//	FinSi
//	num=num+1
//FinMientras
//Salida num
Funcion  Ejercicio26
	Definir num como entero
	num=0
	mientras num<=100 Hacer
		si num mod 2==0
			escribir num
		FinSi
		num=num+1
	FinMientras
FinFuncion

//27) Realizar un programa que realice la suma sucesiva de 10 números que ingrese por teclado, presente el resultado de la suma acumulada.
//Entrada num(Leer), cantidad_de_veces(Leer), resultado(Calcular)
//Proceso 
//mientras cantidad_de_veces <= 10 Hacer
//	escribir "ingrese la cantidad de numeros a sumar"
//	leer num
//	resultado=resultado+num
//	cantidad_de_veces=cantidad_de_veces+1
//FinMientras
//Salida resulatado
Funcion  Ejercicio27
	definir num, cantidad_de_veces, resultado como entero
	cantidad_de_veces=1
	resultado=0
	mientras cantidad_de_veces <= 10 Hacer
		escribir "ingrese la cantidad de numeros a sumar"
		leer num
		resultado=resultado+num
		cantidad_de_veces=cantidad_de_veces+1
	FinMientras
	escribir "el resultado de la suma es: ",resultado
FinFuncion

//28) Se requiere un algoritmo para obtener la edad promedio de un grupo de N alumnos
//Entrada edad(Leer),suma(Calcular),edad_prom ,x(Constante) ,N_estuadiantes(Leer)
//Proceso 
//mientras x <= N_estudiantes Hacer
//	Escribir "ingrese la edad del estudiante"
//	leer edad
//	suma=suma+edad
//	x=x+1
//FinMientras
//edad_prom = suma/N_estudiantes
//Salida edad_prom
Funcion  Ejercicio28
	definir edad, suma, edad_prom como real
	definir x, N_estudiantes Como Entero
	Escribir "ingrese el numero de estudiantes"
	leer N_estudiantes
	x=1
	suma=0
	mientras x <= N_estudiantes Hacer
		Escribir "ingrese la edad del estudiante"
		leer edad
		suma=suma+edad
		x=x+1
	FinMientras
	edad_prom = suma/N_estudiantes
	
	Escribir "la edad promedio de los estudiantes es: ",edad_prom
FinFuncion

//29) Una empresa tiene el registro de las horas y el valor hora que trabaja diariamente un
//empleado durante los 20 días del mes. Requiere determinar el total de éstas, así como el sueldo
//que recibirá por las horas trabajadas. Realizar el algoritmo que resuelva este problema
//Entrada dias=20(constante),horas(leer),Total_Horas(calcular),sueldo_total(calcular),
//sueldo(leer)
//ProcesoEscribir "Ingrese el valor de pago x hora";
//Leer sueldo;
//
//Mientras dias>=1 Hacer
//	Escribir "Ingrese las horas trabajadas";
//	Leer horas
//	
//	Total_Horas=Total_Horas+horas
//	sueldo_total=Total_Horas*sueldo
//	dias=dias-1
//FinMientras
//Salida Total_Horas,sueldo_total
Funcion Ejercicio29
	Definir dias,horas,Total_Horas como enteros
	Definir sueldo , sueldo_total como reales 
	dias=20
	horas=0
	Total_Horas=0
	sueldo=0
	
	Escribir "Ingrese el valor de pago x hora";
	Leer sueldo;
	
	Mientras dias>=1 Hacer
		Escribir "Ingrese las horas trabajadas";
		Leer horas
		
		Total_Horas=Total_Horas+horas
		sueldo_total=Total_Horas*sueldo
		dias=dias-1
	FinMientras
	
	Escribir "Total de horas trabajadas es:",Total_Horas;
	Escribir "Sueldo por las horas trabajadas:",sueldo_total;
FinFuncion

//30) Un empleado de la tienda "Somos Más" realiza N ventas durante el día, se requiere saber
//cuántas de ellas fueron mayores a $1000, cuántas de ellas fueron mayores a $500 pero menores
//o iguales a $1000, y cuantas fueron menores o iguales a $500. Además, se requiere saber el
//monto de lo vendido en cada categoría y de forma global. Realizar un algoritmo
//Entrada ventas(leer),cantidad(leer),ventasmi500(calcular),ventasma1000(calcular),ventasmi1000(calcular) 
//valorventami500(calcular),valorventama1000(calcular),valorventami1000(calcular),Total_global(calcular)
//Proceso
//Escribir "Ingrese la cantidad de ventas";
//Leer ventas;
//
//Mientras ventas>=1 Hacer
//	Escribir "Ingrese el valor de la venta";
//	Leer cantidad;
//	si cantidad>1000 Entonces
//		ventasma1000=ventasma1000+1;
//		valorventama1000=valorventama1000+cantidad;
//	SiNo
//		si cantidad>500 o cantidad<=100 Entonces
//			ventasmi1000=ventasmi1000+1
//			valorventami1000=valorventami1000+cantidad;
//		SiNo
//			ventasmi500=ventasmi500+1;
//			valorventami500=valorventami500+cantidad;
//		FinSi
//	FinSi
//	ventas=ventas-1
//	Total_global=valorventama1000+valorventami1000+valorventami500
//FinMientras
//Salida Total_Horas,sueldo_total
Funcion Ejercicio30
	Definir ventas,cantidad,ventasmi500,ventasma1000,ventasmi1000 como enteros
	Definir valorventami500,valorventama1000,valorventami1000,Total_global como reales 
	ventas=0
	cantidad=0
	ventasmi500=0
	ventasma1000=0
	ventasni1000=0
	valorventama1000=0
	valorventami1000=0
	valorventami500=0
	Escribir "Ingrese la cantidad de ventas";
	Leer ventas;
	
	Mientras ventas>=1 Hacer
		Escribir "Ingrese el valor de la venta";
		Leer cantidad;
		si cantidad>1000 Entonces
			ventasma1000=ventasma1000+1;
			valorventama1000=valorventama1000+cantidad;
		SiNo
			si cantidad>500 o cantidad<=100 Entonces
				ventasmi1000=ventasmi1000+1
				valorventami1000=valorventami1000+cantidad;
			SiNo
				ventasmi500=ventasmi500+1;
				valorventami500=valorventami500+cantidad;
			FinSi
		FinSi
		ventas=ventas-1
		Total_global=valorventama1000+valorventami1000+valorventami500
	FinMientras
	
	Escribir "Cantidad de ventas mayor a 1000:",ventasma1000, " El monto de venta es de:",valorventama1000;
	Escribir "Cantidad de ventas mayor a 500 menor a 100:",ventasmi1000, " El monto de venta es de:",valorventami1000;
	Escribir "Cantidad de ventas menores a 500:",ventasmi500, " El monto de venta es de:",valorventami500;
	Escribir "Total global de las ganancias :",Total_global;
FinFuncion

//31) Se dispone de las calificaciones de n alumnos del primer semestre de la carrera de software de la unemi. Se tiene la nota final y 
//la asignatura ('logica','requerimientos','calculos'). Se pide el promedio de cada asignatura y el promedio general de todas las asignaturas 
//de los alumnos del primer semestre.
//Entrada asignatura(leer),cdlogica(calcular),cdcalculo(calcular), n_alumnos(leer),cdrequerimientos(calcular)
//aclogica(calcular),acrequerimientos(calcular),accalculo(calcular),nota(leer), prcalculo(calcular),prrequerimientos(calcular),prlogica(calcular), prglobal(calcular)
//Proceso 
//Mientras n_alumnos>=1 Hacer
//	Escribir "Ingrese  el nombre de la asignatura(calculo,requerimientos,logica)";
//	Leer asignatura;
//	Escribir "Ingrese la nota";
//	Leer nota;
//	si asignatura="calculo" Entonces
//		cdcalculo<-cdcalculo+1;
//		accalculo<-accalculo+nota;
//		prcalculo<-accalculo/cdcalculo
//	SiNo
//		si asignatura="logica" Entonces
//			cdlogica<-cdlogica+1;
//			aclogica<-aclogica+nota;
//			prlogica<-aclogica/cdlogica
//		SiNo
//			cdrequerimientos<-cdrequerimientos+1;
//			acrequerimientos<-acrequerimientos+nota;
//			prrequerimientos<-acrequerimientos/cdrequerimientos
//		FinSi
//	FinSi
//	n_alumnos<-n_alumnos-1
//FinMientras
//prglobal<-(prlogica+prcalculo+prlogica)/3
//Salida prglobal,prlogica,prrequerimientos,prcalculo
Funcion Ejercicio31
	Definir asignatura Como Caracter
	Definir n_alumnos ,cdlogica,cdrequerimientos,cdcalculo como reales 
	Definir aclogica,acrequerimientos,accalculo,nota, prcalculo,prrequerimientos,prlogica, prglobal como reales;
	n_alumnos=0
	cdlogica=0
	cdrequerimientos=0
	cdcalculo=0
	aclogica=0
	acrequerimientos=0
	accalculo=0
	nota=0
	Escribir "Ingrese la cantidad de alumnos";
	Leer n_alumnos;
	
	Mientras n_alumnos>=1 Hacer
		Escribir "Ingrese  el nombre de la asignatura(calculo,requerimientos,logica)";
		Leer asignatura;
		Escribir "Ingrese la nota";
		Leer nota;
		si asignatura="calculo" Entonces
			cdcalculo<-cdcalculo+1;
			accalculo<-accalculo+nota;
			prcalculo<-accalculo/cdcalculo
		SiNo
			si asignatura="logica" Entonces
				cdlogica<-cdlogica+1;
				aclogica<-aclogica+nota;
				prlogica<-aclogica/cdlogica
			SiNo
				cdrequerimientos<-cdrequerimientos+1;
				acrequerimientos<-acrequerimientos+nota;
				prrequerimientos<-acrequerimientos/cdrequerimientos
			FinSi
		FinSi
		n_alumnos<-n_alumnos-1
	FinMientras
	
	prglobal<-(prlogica+prcalculo+prlogica)/3
	
	Escribir "Promedio de calculo es:",prcalculo
	Escribir "Promedio de logica es:",prlogica
	Escribir"Promedio de requerimientos es:",prrequerimientos
	Escribir "Promedio general de las asignaturas es:",prglobal
FinFuncion

//32) Se dispone de los sueldos y categorias de los profesores de la unemi.
//segun la categoria estos reciben un bono adicional de porcentaje al sueldo:
//			categoria="Auxiliar" incremento del 10%
//			categoria="Agregado" incremento del 20%
//			categoria="principal" incremento del 50%
//			Se pide obtener el promedio de los sueldos y del bono de cada categoria
//			El programa termina cuando se ingresa una categoria inexistente
//Entrada categoria(leer),cdauxiliar(calcular),cdprincipal(calcular), sueldo(leer),cdagregado(calcular)
//acauxiliar(calcular),acagregado(calcular),acprincipal(calcular),pragregado(calcular),prprincipal(calcular),prauxiliar(calcular), prglobal(calcular)
//Proceso 
//Mientras categoria="Auxiliar" o categoria="Agregado" o categoria="Principal" Hacer
//	Escribir "Ingrese el sueldo";
//	Leer sueldo;
//	si categoria="Auxiliar" Entonces
//		cdauxiliar<-cdauxiliar+1;
//		acauxicial<-acauxicial+sueldo+0.10*sueldo;
//		prauxiliar<-acauxicial/cdauxiliar
//	SiNo
//		si categoria="Agregado" Entonces
//			cdagregado<-cdagregado+1;
//			acagregado<-acagregado+sueldo+0.20*sueldo;
//			pragregado<-acagregado/cdagregado
//		SiNo
//			cdprincipal<-cdprincipal+1;
//			acprincipal<-acprincipal+sueldo+0.50*sueldo;
//			prprincipal<-acprincipal/cdprincipal
//		FinSi
//	FinSi
//	Escribir "Ingrese la categoria del profesor";
//	Leer categoria;
//	
//FinMientras
//
//prglobal<-(prprincipal+prauxiliar+pragregado)/3
//Salida prglobal,prprincipal,pragregado,prauxiliar
Funcion Ejercicio32
	Definir categoria Como Caracter
	Definir cdauxiliar,cdprincipal,cdagregado como reales 
	Definir acauxicial,acprincipal,acagregado,sueldo, prauxiliar,prprincipal,pragregado, prglobal como reales;
	categoria=""
	
	Escribir "Ingrese la categoria del profesor segun sea Auxliar, Agregado o Principal";
	Leer categoria;
	
	Mientras categoria="Auxiliar" o categoria="Agregado" o categoria="Principal" Hacer
		Escribir "Ingrese el sueldo";
		Leer sueldo;
		si categoria="Auxiliar" Entonces
			cdauxiliar<-cdauxiliar+1;
			acauxicial<-acauxicial+sueldo+0.10*sueldo;
			prauxiliar<-acauxicial/cdauxiliar
		SiNo
			si categoria="Agregado" Entonces
				cdagregado<-cdagregado+1;
				acagregado<-acagregado+sueldo+0.20*sueldo;
				pragregado<-acagregado/cdagregado
			SiNo
				cdprincipal<-cdprincipal+1;
				acprincipal<-acprincipal+sueldo+0.50*sueldo;
				prprincipal<-acprincipal/cdprincipal
			FinSi
		FinSi
		Escribir "Ingrese la categoria del profesor";
		Leer categoria;
		
	FinMientras
	
	prglobal<-(prprincipal+prauxiliar+pragregado)/3
	
	Escribir "Promedio de sueldo de los profesores auxiliares es de:",prauxiliar
	Escribir "Promedio de sueldo de los profesores agregados es de:",pragregado
	Escribir"Promedio de sueldo de los profesores principal  es:",prprincipal
	Escribir "Promedio general  de sueldo de los profesores es de:",prglobal
FinFuncion

//33) Dado una serie de n cantidad de viajes dado cada pasaje y su recorrido determinar el precio de cada pasaje segun el recorrido en kilometros
//si el recorrido es hasta 100 km el pasaje no tiene incremento
//si el reccorido es mas de 100 km el pasaje tiene un incremento del 20%. 
//Presentar el promedio y la cantidad de pasajes con recorrido hasta 100km y mayor de 100 km.
//Entrada cv(Leer),pasaje(Leer),recorrido(Leer),cpmenor100(Calcular),acmenor100(Calcular),cpmayor100(Calcular),acmayor100(Calcular) , prm100(Calcular),pm100(Calcular)
//Proceso 
//Mientras cv>=1 Hacer
//	Escribir"Ingrese el valor del pasaje"
//	leer pasaje
//	escribir"Ingrese los kilometros recorridos"
//	leer recorrido
//	
//	si recorrido<=100 Entonces
//		cpmenor100=cpmenor100+1
//		acmenor100=acmenor100+pasaje
//		prm100=acmenor100/cpmenor100
//	SiNo
//		cpmayor100=cpmayor100+1
//		acmayor100=acmayor100+ pasaje +0.20*pasaje
//		pm100=acmayor100/cpmayor100
//	FinSi
//	cv=cv-1
//fin mientras
//Salida cpmenor100,cpmayor100, prm100,pm100
Funcion Ejercicio33
	definir cv como entero	
	definir pasaje,recorrido,cpmenor100,acmenor100,cpmayor100,acmayor100 , prm100,pm100 como real;
	cpmenor100=0
	cpmayor100=0
	acmenor100=0
	acmayor100=0
	Escribir "Ingrese la cantidad de viajes: "
	Leer  cv
	Mientras cv>=1 Hacer
		Escribir"Ingrese el valor del pasaje"
		leer pasaje
		escribir"Ingrese los kilometros recorridos"
		leer recorrido
		
		si recorrido<=100 Entonces
			cpmenor100=cpmenor100+1
			acmenor100=acmenor100+pasaje
			prm100=acmenor100/cpmenor100
		SiNo
			cpmayor100=cpmayor100+1
			acmayor100=acmayor100+ pasaje +0.20*pasaje
			pm100=acmayor100/cpmayor100
		FinSi
		cv=cv-1
	fin mientras
	
	Escribir "Promedio de pasajes hasta 100 es:",prm100
	Escribir "Cantidad de pasajes hasta 100 es:",cpmenor100
	escribir"	Promedio de pasajes mayor a 100 es:",pm100
	Escribir "Cantidad de pasajes mayor a 100 eas:",cpmayor100
FinFuncion

//34) Diseñar un algoritmo que lea y presente una serie de números distintos de cero. El algoritmo debe terminar con un valor cero que no se 
//debe presentar. Finalmente se desea obtener la cantidad y el promedio de los valores distintos de cero
//Entrada num(Leer),cdnum(calcular),pronum(calcular),acnum(calcular)
//Proceso
//Mientras num<>0 Hacer
//	cdnum=cdnum+1
//	acnum=acnum+num
//	pronum=acnum/cdnum
//	Escribir " Digite un numero";
//	Leer num
//FinMientras
//Salida cdnum,pronum
Funcion Ejercicio34
	Definir num como entero;
	Definir cdnum,pronum,acnum como reales;
	
	Escribir " Digite un numero";
	Leer num
	Mientras num<>0 Hacer
		cdnum=cdnum+1
		acnum=acnum+num
		pronum=acnum/cdnum
		Escribir " Digite un numero";
		Leer num
	FinMientras
	
	Escribir "Cantidad de numero ingresados es:",cdnum;
	Escribir "Promedio de numeros positivos es : ",pronum;
FinFuncion

//35) Dada una serie de números positivos lea y presente el numero. El algoritmo debe terminar con un valor negativo que no se debe presentar.
//Finalmente se desea obtener la cantidad y el total de los números positivos múltiplos de 3
//Entrada num(Leer),cdnum3(calcular),cdnum(calcular)
//Proceso
//Mientras num>=0 Hacer
//	cdnum=cdnum+1
//	si num mod 3=0 Entonces
//		cdnum3=cdnum3+1
//	FinSi
//	Escribir " Digite un numero";
//	Leer num
//FinMientras
//Salida cdnum,cdnum3
Funcion Ejercicio35
	Definir numer, cantidad, total Como Entero
    cantidad = 0
    total = 0
    
    Escribir "Ingrese un número positivo (ingrese un número negativo para terminar):"
    Leer numer
    
    Mientras numer >= 0 Hacer
        Si numer MOD 3 = 0 Entonces
            cantidad = cantidad + 1
            total = total + numer
        FinSi
        
        Escribir "Número ingresado:", numer
        Escribir "Ingrese otro número positivo (ingrese un número negativo para terminar):"
        Leer numer
    FinMientras
    
    Escribir "Cantidad de números múltiplos de 3:", cantidad
    Escribir "Total de números múltiplos de 3:", total
FinFuncion


Algoritmo Tarea2
	definir n_ejercicios Como Entero
	Repetir
		Escribir "Digite un numero para escoger el ejercicio (1 al 35) ingrese 0 para finalizar";
		Leer n_ejercicios;
		Segun n_ejercicios Hacer
			1:
				Ejercicio1
				
			2:
				Ejercicio2
			3:
				Ejercicio3
			4:
				Ejercicio4
			5:
				Ejercicio5
			6:
				Ejercicio6
			7:
				Ejercicio7
			8:
				Ejercicio8
			9:
				Ejercicio9
			10:
				Ejercicio10
			11:
				Ejercicio11
			12:
				Ejercicio12
			13:
				Ejercicio13
			14:
				Ejercicio14
			15:
				Ejercicio15
			16:
				Ejercicio16
			17:
				Ejercicio17
			18:
				Ejercicio18
			19:
				Ejercicio19
			20:
				Ejercicio20
			21:
				Ejercicio21
			22:
				Ejercicio22
			23:
				Ejercicio23
			24:
				Ejercicio24
			25:
				Ejercicio25
			26:
				Ejercicio26
			27:
				Ejercicio27
			28:
				Ejercicio28
			29:
				Ejercicio29
			30:
				Ejercicio30
			31:
				Ejercicio31
			32:
				Ejercicio32
			33:
				Ejercicio33
			34:
				Ejercicio34
			35:
				Ejercicio35
				
			De Otro Modo:
				Escribir "Ese ejercicio no existe";
		Fin Segun
	Hasta Que n_ejercicios = 0
	
	
FinAlgoritmo
